<?php

namespace App\Controller;

use App\Entity\Book;
use App\Form\Book1Type;
use App\Repository\BookRepository;
use PhpParser\Node\Scalar\MagicConst\File;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/user/book")
 */
class BookController extends AbstractController
{
    /**
     * @Route("/", name="user_book_index", methods={"GET"})
     */
    public function index(BookRepository $bookRepository): Response
    {
        $user=$this->getUser();
        return $this->render('book/index.html.twig', [
            'books' => $bookRepository->findBy(['userid'=>$user->getId()]),
        ]);
    }

    /**
     * @Route("/new", name="user_book_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $book = new Book();
        $form = $this->createForm(Book1Type::class, $book);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {



            $entityManager = $this->getDoctrine()->getManager();
            $user=$this->getUser();
            $book->setUserid($user->getId());
            $book->setStatus("NEW");

            /** @var File $file */
            $file=$form['image']->getData();
            if($file){
                $fileName=$this->generateUniqueFileName(). '.'.$file->guessExtension();
                try{
                    $file->move(
                        $this->getParameter('images_directory'),
                        $fileName
                    );
                } catch (FileException $e){
                    //
                }
                $book->setImage($fileName);
            }
            $entityManager->persist($book);
            $entityManager->flush();

            return $this->redirectToRoute('user_book_index');
        }

        return $this->render('book/new.html.twig', [
            'book' => $book,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="user_book_show", methods={"GET"})
     */
    public function show(Book $book): Response
    {
        return $this->render('book/show.html.twig', [
            'book' => $book,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="user_book_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Book $book): Response
    {
        $form = $this->createForm(Book1Type::class, $book);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            /** @var File $file */
            $file=$form['image']->getData();
            if($file){
                $fileName=$this->generateUniqueFileName(). '.'.$file->guessExtension();
                try{
                    $file->move(
                        $this->getParameter('images_directory'),
                        $fileName
                    );
                } catch (FileException $e){
                    //
                }
                $book->setImage($fileName);
            }
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('user_book_index');
        }

        return $this->render('book/edit.html.twig', [
            'book' => $book,
            'form' => $form->createView(),
        ]);
    }
    /**
     * @return string
     */
    private function generateUniqueFileName(){
        return md5(uniqid());
    }

    /**
     * @Route("/{id}", name="user_book_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Book $book,$id): Response
    {


        if ($this->isCsrfTokenValid('delete'.$book->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($book);
            $entityManager->flush();
        }

        return $this->redirectToRoute('user_book_index');
    }
}
