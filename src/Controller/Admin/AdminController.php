<?php

namespace App\Controller\Admin;

use App\Entity\Orders;
use App\Repository\OrderDetailsRepository;
use App\Repository\OrdersRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Flex\Response;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index()
    {
        return $this->render('admin/admin/index.html.twig', [
            'controller_name' => 'AdminController',
        ]);
    }

}
