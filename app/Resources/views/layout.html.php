<?php
/**
 * @var \Pimcore\Templating\PhpEngine $this
 * @var \Pimcore\Templating\PhpEngine $view
 * @var \Pimcore\Templating\GlobalVariables $app
 */
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta charset="UTF-8">
    <title>News List Page</title>
    <link rel="stylesheet" type="text/css" href="_default_upload_bucket/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="_default_upload_bucket/css/my_style.css" />
</head>
<body>

<ul class="mnu">
    <li><a href="News-List-Page">News List Page</a></li>
    <li><a href="/admin">Management</a></li>
</ul>

<div class="container mcenter row w_100">
    <div class="header col-6 mcenter mt-0"></div>
    <?php $this->slots()->output('_content') ?>
</div>

</body>
</html>
