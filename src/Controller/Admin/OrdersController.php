<?php

namespace App\Controller\Admin;

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
 * @Route("admin/orders")
 */
class OrdersController extends AbstractController
{
    /**
     * @Route("/", name="admin_orders_index", methods={"GET"})
     */
    public function index(OrdersRepository $ordersRepository): Response
    {

        return $this->render('admin/orders/index.html.twig', [
            'orders' => $ordersRepository->findAll(),
        ]);
    }


    /**
     * @Route("/{id}", name="admin_orders_show", methods={"GET"})
     */
    public function show($id,Orders $order,OrdersRepository $ordersRepository,OrderDetailsRepository $orderDetailsRepository): Response
    {
        $user=$this->getUser();
        $userid=$user->getid();
        $orderid=$order->getId();

        $orderdetail=$orderDetailsRepository->findBy(
            ['orderid'=>$id]
        );

        return $this->render('admin/orders/show.html.twig', [
            'order' => $order,
            'orderdetail'=>$orderdetail,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="admin_orders_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Orders $order): Response
    {
        $form = $this->createForm(OrdersType::class, $order);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('orders_index');
        }

        return $this->render('admin/orders/edit.html.twig', [
            'order' => $order,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_orders_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Orders $order): Response
    {
        if ($this->isCsrfTokenValid('delete'.$order->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($order);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_orders_index');
    }
    /**
     * @Route("/{id}", name="admin_orders_update", methods={"POST"})
     */
    public function update($id,Request $request, Orders $order,OrdersRepository $ordersRepository):Response
    {
        $shipinfo=$request->get("shipinfo");
        $status=$request->get("status");
        echo $shipinfo,$status,$id;
        $hihihi=$ordersRepository->updater($id,$shipinfo,$status,$request);
        if ($hihihi=!0){
            return $this->redirectToRoute('admin_orders_show',array('id'=>$id));
        }
        else{
            return $this->redirectToRoute('admin_orders_show',array('id'=>$id));
        }


    }

}
