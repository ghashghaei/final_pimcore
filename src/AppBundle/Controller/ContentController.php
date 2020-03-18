<?php

namespace AppBundle\Controller;

//here , we call every thing which we need ...
use Pimcore\Controller\FrontendController;
use Symfony\Component\HttpFoundation\Request;
//call the Object Which we Made It Before
use Pimcore\Model\DataObject\Content;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;




class ContentController extends FrontendController
{
    public function defaultAction(Request $request)
    {

    }

    //Listing the news in News-Page-List
    public function contentAction(Request $request)
    {
        //call a class which we made it in admin panel
        $contentList = new Content\Listing();
        //sort news DESC Bt title
        $contentList->setOrderKey('title');
        $contentList->setOrder('DESC');

        //we defined an array to keep newses
        $AllNews = array();

        //Move information to array using foreach function
        foreach ($contentList as $entry) {
            $AllNews[] = array(
                'id' => $entry->getId() ,
                'title' => $entry->getTitle() ,
                'teaser' => $entry->getTeaser() ,
                'text' => $entry->getText() ,
                'image' => $entry->getImage()
            );
            //echo $entry->getTitle();
        }
        return [ 'content' => $AllNews ];
    }


    public function detailAction(Request $request)
    {
        //convert string to integer , this is object id
        $id = intVal($request->get('id'));

        //get content data by id
        $entries = Content::getById($id);

        //here , we got object fields
        $News['title'] = $entries->getTitle();
        $News['teaser'] = $entries->getTeaser();
        $News['text'] = $entries->getText();
        $News['image'] = $entries->getImage();
        $Gallery = array();
        $myImageGallery = $entries->getGallery();
        foreach ($myImageGallery as $galleryItem) {
            $image = $galleryItem->getImage();
            $Gallery[] = $image;
        }
        $News['gallery'] = $Gallery;

        // return infomation
        return [ 'content' => $News ];
    }

}
