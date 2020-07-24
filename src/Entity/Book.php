<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\BookRepository")
 */
class Book
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     */
    private $title;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $keywords;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    private $image;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $type;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $Yazar;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $Yayinci;

    /**
     * @ORM\Column(type="date", nullable=true)
     */
    private $Year;

    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $fiyat;

    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $sFiyat;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Category", inversedBy="book")
     */
    private $category;

    /**
     * @ORM\Column(type="string", length=10, nullable=true)
     */
    private $status;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $created_at;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $updated_at;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $detail;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Image", mappedBy="book")
     */
    private $images;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $userid;

    public function __construct()
    {
        $this->images = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(?string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getKeywords(): ?string
    {
        return $this->keywords;
    }

    public function setKeywords(?string $keywords): self
    {
        $this->keywords = $keywords;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(?string $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getYazar(): ?string
    {
        return $this->Yazar;
    }

    public function setYazar(?string $Yazar): self
    {
        $this->Yazar = $Yazar;

        return $this;
    }

    public function getYayinci(): ?string
    {
        return $this->Yayinci;
    }

    public function setYayinci(?string $Yayinci): self
    {
        $this->Yayinci = $Yayinci;

        return $this;
    }

    public function getYear(): ?\DateTimeInterface
    {
        return $this->Year;
    }

    public function setYear(?\DateTimeInterface $Year): self
    {
        $this->Year = $Year;

        return $this;
    }

    public function getFiyat(): ?float
    {
        return $this->fiyat;
    }

    public function setFiyat(?float $fiyat): self
    {
        $this->fiyat = $fiyat;

        return $this;
    }

    public function getSFiyat(): ?float
    {
        return $this->sFiyat;
    }

    public function setSFiyat(?float $sFiyat): self
    {
        $this->sFiyat = $sFiyat;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(?string $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->created_at;
    }

    public function setCreatedAt(?\DateTimeInterface $created_at): self
    {
        $this->created_at = $created_at;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updated_at;
    }

    public function setUpdatedAt(?\DateTimeInterface $updated_at): self
    {
        $this->updated_at = $updated_at;

        return $this;
    }

    public function getDetail(): ?string
    {
        return $this->detail;
    }

    public function setDetail(?string $detail): self
    {
        $this->detail = $detail;

        return $this;
    }

    /**
     * @return Collection|Image[]
     */
    public function getImages(): Collection
    {
        return $this->images;
    }

    public function addImage(Image $image): self
    {
        if (!$this->images->contains($image)) {
            $this->images[] = $image;
            $image->setBook($this);
        }

        return $this;
    }

    public function removeImage(Image $image): self
    {
        if ($this->images->contains($image)) {
            $this->images->removeElement($image);
            // set the owning side to null (unless already changed)
            if ($image->getBook() === $this) {
                $image->setBook(null);
            }
        }

        return $this;
    }

    public function getUserid(): ?int
    {
        return $this->userid;
    }

    public function setUserid(?int $userid): self
    {
        $this->userid = $userid;

        return $this;
    }
}
