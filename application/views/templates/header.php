<?php 
require_once(APPPATH.'views/inc/settings.php');


?>



<!-- /*
* Template Name: Learner
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link href="https://fonts.googleapis.com/css2?family=Display+Playfair:wght@400;700&family=Inter:wght@400;700&display=swap" rel="stylesheet">


  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/animate.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/owl.carousel.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/fonts/icomoon/style.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/aos.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/frontend/css/style.css">

  <title>Learner Free Bootstrap Template by Untree.co</title>
</head>

<body>

  <div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>


  
  <nav class="site-nav mb-5">
    <div class="pb-2 top-bar mb-3">
      <div class="container">
        <div class="row align-items-center">

          <div class="col-6 col-lg-9">
            <a href="<?php echo base_url(); ?>contact us" class="small mr-3"><span class="icon-question-circle-o mr-2"></span> <span class="d-none d-lg-inline-block">Have a questions?</span></a> 
            <a href="#" class="small mr-3"><span class="icon-phone mr-2"></span> <span class="d-none d-lg-inline-block"><?php echo $config['phone'];?></span></a> 
            <a href="#" class="small mr-3"><span class="icon-envelope mr-2"></span> <span class="d-none d-lg-inline-block"><?php echo $config['email'];?></span></a> 
          </div>
      <?php if($this->session->userdata('logged_in')) : ?>
          <div class="col-6 col-lg-3 text-right">
            <a href="<?php echo base_url(); ?>account/dashboard  " class="small mr-3">
              <span class="icon-lock"></span>
             Dashboard
            </a>
            <a href="<?php echo base_url(); ?>users/logout" class="small">
              <span class="icon-person"></span>
              Logout
            </a>
          </div>
     <?php endif;?>
     <?php if(!$this->session->userdata('logged_in')) : ?>
    <div class="col-6 col-lg-3 text-right">
            <a href="<?php echo base_url(); ?>users/login" class="small mr-3">
              <span class="icon-lock"></span>
             Login
            </a>
            <a href="<?php echo base_url(); ?>users/register" class="small">
              <span class="icon-person"></span>
             Register
            </a>
          </div>
     <?php endif;?>
     <?php require_once(APPPATH.'views/inc/flashmessages.php');?>
        </div>
      </div>
    </div>
    <div class="sticky-nav js-sticky-header">
      <div class="container position-relative">
        <div class="site-navigation text-center">
          <a href="<?php echo base_url(); ?>" class="logo menu-absolute m-0"><?php echo $config['sitename'];?><span class="text-primary">.</span></a>

             <ul class="js-clone-nav d-none d-lg-inline-block site-menu">
            <li class="active"><a href="<?php echo base_url(); ?>">Home</a></li>
            <?php $headcategories= $this->category_model->get_headcategories();?>

          <li class="has-children">
              <a href="#">Courses</a>
              <ul class="dropdown">
              <?php foreach($headcategories as $category) : ?>
                <li><a href="<?php echo site_url('/categories/posts/'.$category['id']); ?>"><?php echo $category['name']; ?></a></li>
                 <?php endforeach; ?>
              </ul>  
            </li>
              
            <li><a href="<?php echo base_url(); ?>">About</a></li>
            <li><a href="<?php echo base_url(); ?>">Services</a></li>
            <li><a href="<?php echo base_url(); ?>">Careers</a></li>
            
            <li><a href="<?php echo base_url(); ?>contact">Contact</a></li>
          </ul>

          <a href="<?php echo base_url(); ?>" class="btn-book btn btn-secondary btn-sm menu-absolute">Enroll Now</a>

          <a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
          </a>

        </div>
      </div>
    </div>
  </nav>
  
