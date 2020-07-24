<?php

namespace App\Controller;

use App\Entity\OrderDetails;
use App\Entity\Orders;
use App\Form\OrdersType;
use App\Repository\OrderDetailsRepository;
use App\Repository\OrdersRepository;
use App\Repository\ShopcartRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/orders")
 */
class OrdersController extends AbstractController
{
    /**
     * @Route("/", name="orders_index", methods={"GET"})
     */
    public function index(OrdersRepository $ordersRepository): Response
    {
        $user=$this->getUser();
        $userid=$user->getid();
        return $this->render('orders/index.html.twig', [
            'orders' => $ordersRepository->findBy(['userid'=>$userid]),
        ]);
    }

    /**
     * @Route("/new", name="orders_new", methods={"GET","POST"})
     */
    public function new(Request $request,ShopcartRepository $shopcartRepository): Response
    {
        $orders = new Orders();
        $form = $this->createForm(OrdersType::class, $orders);
        $form->handleRequest($request);

        $user=$this->getUser();
        $userid=$user->getid();
        $total=$shopcartRepository->getUserShopCartTotal($userid);
        //dump($total);
        //die();
        //$cart=$shopcartRepository->findBy(['userid'=>$userid]);
       // $cart=$shopcartRepository->getAllCommentsCartfororders($userid);

       // dump($cart);
       // die();
        //$this->isCsrfTokenValid('form-order',$submittedToken)




        //$submittedToken=$request->request->get('token');
        if ($this->isCsrfTokenValid('form-order', $request->request->get('token'))){
        if ($form->isSubmitted()) {
            $em = $this->getDoctrine()->getManager();


            $orders->setUserid($userid);
            $orders->setAmount($total);
            $orders->setStatus("NEW");

            $em->persist($orders);
            $em->flush();

            $orderid=$orders->getId();
            $shopcart=$shopcartRepository->getUserShopCart($userid);
            foreach ($shopcart as $item){

                $orderdetail=new OrderDetails();
                $orderdetail->setOrderid($orderid);
                $orderdetail->setUserid($user->getId());
                $orderdetail->setProductid($item["bookid"]);
                $orderdetail->setAmount($item["total"]);
                $orderdetail->setName($item["title"]);
                $orderdetail->setQuantity($item["quantity"]);
                $orderdetail->setStatus("ORDERED");
                $em->persist($orderdetail);
                $em->flush();


            }
            $em=$this->getDoctrine()->getManager();
            $shopcartRepository->deletecart($userid);
                $this->addFlash('success',"Siparişiniz Başarıyla gerçekleşmiştir");
                return $this->redirectToRoute('orders_index');

        }
        }

        return $this->render('orders/new.html.twig', [
            'orders' => $orders,
            'total'=>$total,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="orders_show", methods={"GET"})
     */
    public function show(Orders $order,OrdersRepository $ordersRepository,OrderDetailsRepository $orderDetailsRepository): Response
    {
        $user=$this->getUser();
        $userid=$user->getid();
        $orderid=$order->getId();

        $orderdetail=$orderDetailsRepository->findBy(
            ['orderid'=>$orderid]
        );

        return $this->render('orders/show.html.twig', [
            'order' => $order,
            'orderdetail'=>$orderdetail,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="orders_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Orders $order): Response
    {
        $form = $this->createForm(OrdersType::class, $order);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('orders_index');
        }

        return $this->render('orders/edit.html.twig', [
            'order' => $order,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="orders_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Orders $order): Response
    {
        if ($this->isCsrfTokenValid('delete'.$order->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($order);
            $entityManager->flush();
        }

        return $this->redirectToRoute('orders_index');
    }
}
