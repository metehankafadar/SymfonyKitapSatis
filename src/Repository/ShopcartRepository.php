<?php

namespace App\Repository;

use App\Entity\Shopcart;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\ORM\Query\Expr\From;
use phpDocumentor\Reflection\Types\Integer;

/**
 * @method Shopcart|null find($id, $lockMode = null, $lockVersion = null)
 * @method Shopcart|null findOneBy(array $criteria, array $orderBy = null)
 * @method Shopcart[]    findAll()
 * @method Shopcart[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ShopcartRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Shopcart::class);
    }

    // /**
    //  * @return Shopcart[] Returns an array of Shopcart objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }

    public function getAllCommentsCart($userid):array {
        $conn=$this->getEntityManager()->getConnection();
        $sql='SELECT b.title,b.s_fiyat,s.*
        FROM shopcart s,book b
        WHERE s.bookid=b.id and userid=:userid';
        $stmt=$conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function getUserShopCartTotal($userid):float {
        $qb=$this->createQueryBuilder('c')
            ->select('c.id,c.bookid,c.userid,c.quantity,b.title,b.s_fiyat')
            -from('shopcart s,book b')
            ->where('s.bookid=b.id and c.userid = :userid')
            ->setParameter('userid',$userid);
        $query=$qb->getQuery();
        return $query->execute();
        /*$conn=$this->getEntityManager()->getConnection();
        $sql='SELECT sum(b.s_fiyat * s.quantity ) as total
        FROM shopcart s,book b
        WHERE  s.bookid=b.id and s.userid=:userid';
        $stmt=$conn->prepare($sql);
        $stmt->execute();
        return $stmt;*/
        /*

        $em=$this->getEntityManager();
        $query=$em->createQuery('
        SELECT sum(b.s_fiyat * s.quantity ) as total
        FROM App\Entity\Shopcart s,FROM App\Entity\Admin\Book b
        WHERE s.bookid=b.id and s.userid=:userid ')
            ->setParameter('userid',$userid);
        $result=$query->getResult();
        if($result[0]['total']!=null){
            return $result[0]['total'];
        }else{
            return 0;
        }*/
        /*
    }
    public function getUserShopCartCount($userid):Integer
    {
        $em=$this->getEntityManager();
        $query=$em->createQuery('
        SELECT count(s.id) as shopcount
        FROM App\Entity\Shopcart s
        Where s.userid=:userid')
            ->setParameter('userid',$userid);
        $result=$query->getResult();
        if ($result[0]["shopcount"]!=null){
            return $result[0]["shopcount"];

        }else{
            return 0;
        }
    }
*/

    /*
    public function getUserShopCartTotal($userid): float
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            'SELECT sum(b.s_ * s.quantity ) as total
            FROM App\Entity\Book b,App\Entity\Shopcart s
            WHERE s.userid = :userid'
        )->setParameter('userid', $userid);

        // returns an array of Product objects
        $result=$query->getResult();
        if ($result[0]["shopcount"]){
        return $result[0]["shopcount"];
    }
    else{
        return 0;
    }
}

*/
    public  function deletecart($userid) {
        $em=$this->getEntityManager();
        $query=$em->createQuery('
        DELETE
        FROM App\Entity\Shopcart s
        WHERE s.userid=:userid
        ')
            ->setParameter('userid',$userid);
         $query->execute();

    }
    public function getUserShopCart($userid):array {
        $em=$this->getEntityManager();
        $query=$em->createQuery('
        SELECT b.title,b.sFiyat,s.quantity,s.bookid,s.userid,(b.sFiyat*s.quantity) as total
        FROM App\Entity\Shopcart s, App\Entity\Book b
        WHERE s.bookid =b.id and s.userid=:userid
        ')
            ->setParameter('userid',$userid);
        return $query->getResult();
    }
    public function getUserShopCartTotal($userid):float {
        $em=$this->getEntityManager();
        $query=$em->createQuery('
        SELECT sum(b.sFiyat * s.quantity) as total
        FROM App\Entity\Shopcart s, App\Entity\Book b
        WHERE s.bookid =b.id and s.userid=:userid
        ')
            ->setParameter('userid',$userid);
        $result=$query->getResult();
        if ($result[0]["total"]!=null){
            return $result[0]["total"] ;
        }else{
            return 0;
        }

    }
    public function getUserShopCartCount($userid):Integer {
        $em=$this->getEntityManager();
        $query=$em->createQuery('
        SELECT count(s.id) as shopcount
        FROM App\Entity\Shopcart s
        WHERE s.userid=:userid
        ')
            ->setParameter('userid',$userid);
        $result=$query->getResult();
        if ($result[0]["shopcount"]!=null){
            return $result[0]["shopcount"] ;
        }else{
            return 0;
        }

    }
/*
    public function getAllCommentsCartfororders($userid):array {
        $conn=$this->getEntityManager()->getConnection();
        $sql='SELECT b.title,b.s_fiyat,s.*,u.name,b.image,u.address,u.phone,u.city
        FROM shopcart s
        JOIN book b ON b.id=s.bookid
        JOIN user u ON u.id=s.userid
        ORDER BY s.id DESC ';
        $stmt=$conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
*/

    public function getAllCommentsCart($userid):array {
        $conn=$this->getEntityManager()->getConnection();
        $sql='SELECT b.title,b.s_fiyat,s.*,u.name,b.image
        FROM shopcart s
        JOIN book b ON b.id=s.bookid
        JOIN user u ON u.id=s.userid
        ORDER BY s.id DESC ';
        $stmt=$conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

/*
    public function getAllCommentsUser($userid):array {

        $qb=$this->createQueryBuilder('c')
            ->select('c.id,c.bookid,c.userid,c.quantity,b.title,b.s_fiyat')
            ->leftJoin('App\Entity\Book','b','WITH','b.id=c.bookid')
            ->where('c.userid = :userid')
            ->setParameter('userid',$userid)
            ->orderBy('c.id','DESC');
        $query=$qb->getQuery();
        return $query->execute();

    }
*/

    /*
    public function findOneBySomeField($value): ?Shopcart
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
