<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Entity\Book;
use App\Entity\Setting;
use App\Form\Admin\MessagesType;
use App\Repository\Admin\CommentRepository;
use App\Repository\BookRepository;
use App\Repository\CategoryRepository;
use App\Repository\ImageRepository;
use App\Repository\SettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\Bridge\Google\Smtp\GmailTransport;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(SettingRepository $settingRepository,BookRepository $bookRepository,CategoryRepository $categoryRepository)
    {
        $setting=$settingRepository->findAll();
        $slider=$bookRepository->findBy(['status'=>'True'],['id'=>'DESC'],3);
        $books=$bookRepository->findBy(['status'=>'True'],['id'=>'ASC'],12);
        $newbooks=$bookRepository->findBy(['status'=>'True'],['id'=>'DESC'],3);
        $result=$categoryRepository->fetchCategoryTreeList();

        if(count($result)>0){
            $user_tree_array[]="<ul>";

            foreach ($result as $row){

                $user_tree_array[]="<li> <a href='category/'".$row['id']."'>".$row['title']."</a>";

                //$user_tree_array=$categoryRepository->fetchCategoryTreeList($row['id'], $user_tree_array);

            }
            $user_tree_array[]="</li></ul>";
        }


            $cats[0]='<ul id="menu-v">';
            $cats=$user_tree_array;

          //  dump($cats);
            //die();


        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'setting'=>$setting,
            'slider'=>$slider,
            'books'=>$books,
            'newbooks'=>$newbooks,
            'cats'=>$cats,
        ]);
    }

    /**
 * @Route("/book/{id}", name="book_show_a", methods={"GET"})
 */
    public function show(Book $book,$id,imageRepository $imageRepository,CommentRepository $commentRepository): Response
    {
        $images=$imageRepository->findBy(['book'=>$id]);
        $comments=$commentRepository->findBy(['bookid'=>$id,'status'=>'True']);
        return $this->render('home/bookshow.html.twig', [
            'book' => $book,
            'images' => $images,
            'comments' => $comments,
        ]);
    }
    /**
 * @Route("/about", name="home_about")
 */
    public function about(SettingRepository $settingRepository): Response
    {
        $setting=$settingRepository->findAll();
        return $this->render('home/aboutus.html.twig', [
            'setting'=>$setting,
        ]);
    }
    /**
     * @Route("/contact", name="home_contact",methods={"GET","POST"})
     */
    public function contact(SettingRepository $settingRepository,Request $request): Response
    {
        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $setting=$settingRepository->findAll();
        $form->handleRequest($request);
       // dump($form);
      //  die();
       // echo $setting[0]->getSmtpemail();
       // dump($setting);
       // die();
        $submittedToken=$request->request->get('token');
        if ($form->isSubmitted()) {
            if ($this->isCsrfTokenValid('form-message',$submittedToken)){
                $entityManager = $this->getDoctrine()->getManager();
                $message->setStatus('new');
                $message->setIp($_SERVER['REMOTE_ADDR']);
                $entityManager->persist($message);
                $entityManager->flush();
                $this->addFlash('success','Mesajınız başarıyla gönderilmiştir');
                //**********mail *//////////////
                $email = (new Email())
                    ->from($setting[0]->getSmtpemail())
                    ->to($form['email']->getdata())
                    //->cc('cc@example.com')
                    //->bcc('bcc@example.com')
                    //->replyTo('fabien@example.com')
                    //->priority(Email::PRIORITY_HIGH)
                    ->subject('Cevap var :)')
                  //  ->text('Sending emails is fun again!')
                    ->html('<p>Mesaj gönderdiğiniz için teşekkürler :)</p>');

                $transport=new GmailTransport($setting[0]->getSmtpemail(),$setting[0]->getSmtppassword());
                $mailer=new Mailer($transport);
                $mailer->send($email);

                  //  $sentEmail = $mailer->send($email);
                // $messageId = $sentEmail->getMessageId();

                // ...



                return $this->redirectToRoute('home_contact');
            }
        }



        $setting=$settingRepository->findAll();
        return $this->render('home/contact.html.twig', [
            'setting'=>$setting,
            'form' => $form->createView(),
        ]);
    }

}
