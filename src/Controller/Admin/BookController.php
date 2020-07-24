<?php

namespace App\Controller\Admin;

use App\Entity\Book;
use App\Form\BookType;
use App\Repository\BookRepository;
use PhpParser\Node\Scalar\MagicConst\File;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/book")
 */
class BookController extends AbstractController
{
    /**
     * @Route("/", name="admin_book_index", methods={"GET"})
     */
    public function index(BookRepository $bookRepository): Response
    {
        //$books=$bookRepository->findAll();
        $books=$bookRepository->getAllBooks();
        return $this->render('admin/book/index.html.twig', [
            'books' => $books,
        ]);
    }

    /**
     * @Route("/new", name="admin_book_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $book = new Book();
        $form = $this->createForm(BookType::class, $book);
        $form->handleRequest($request);
        $user=$this->getUser();


        //die();

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();


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

            return $this->redirectToRoute('admin_book_index');
        }

        return $this->render('admin/book/new.html.twig', [
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
     * @Route("/{id}", name="admin_book_show", methods={"GET"})
     */
    public function show(Book $book): Response
    {
        return $this->render('admin/book/show.html.twig', [
            'book' => $book,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="admin_book_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Book $book): Response
    {
        $form = $this->createForm(BookType::class, $book);
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

            return $this->redirectToRoute('admin_book_index');
        }

        return $this->render('admin/book/edit.html.twig', [
            'book' => $book,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_book_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Book $book): Response
    {
        if ($this->isCsrfTokenValid('delete'.$book->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($book);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_book_index');
    }
}
