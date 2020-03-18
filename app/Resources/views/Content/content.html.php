<?php
/**
 * @var \Pimcore\Templating\PhpEngine $this
 * @var \Pimcore\Templating\PhpEngine $view
 * @var \Pimcore\Templating\GlobalVariables $app
 */

$this->extend('layout.html.php');
?>

<div class="container row">
<?php
foreach ($content as $item) {
    $id = $item['id'];
    $title = $item['title'];
    $teaser = $item['teaser'];
    $image = $item['image'];

    $news_url = 'News-Detail-Page/?id='.$id;

    echo "
    <div class='NewsDiv row mt-2 col-xl-12 col-lg-12 col-md-12'>
        <img src='$image' class='NewsImg col-xl-3 col-lg-3 col-md-5 col-sm-12 col-12'>
        <div class='col-xl-9 col-lg-9 col-md-7 col-sm-12 col-12'>
            <div class='col-12'>
                <a href='$news_url' class='news_link'>$title</a>
            </div>
            <div class='col-12 Teaser'>$teaser</div>
        </div>
    </div>
    ";
}
?>
</div>




