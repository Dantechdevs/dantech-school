<div class="untree_co-section">
    <div class="container">
      <div class="row justify-content-center mb-3">
        <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="0">
          <h2 class="line-bottom text-center mb-4">Browse Top Courses Category</h2>
        </div>
      </div>
      <div class="row align-items-stretch">

      
      	<?php foreach($categories as $category) : ?>
        <div class="col-sm-6 col-md-6 col-lg-3 mb-4" data-aos="fade-up" data-aos-delay="0">
          <a href="<?php echo site_url('/categories/posts/'.$category['id']); ?>" class="category d-flex align-items-start h-100">
            <div>
              <i class="uil uil-atom"></i>
            </div>
            <div>
              <h3><?php echo $category['name']; ?></h3>
              <span></span>
            </div>
          </a>
        </div>
      <?php endforeach; ?>


      </div>

      <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="400">
        <div class="col-lg-8 text-center">
          <p>We have more category here. <a href="#">Browse all</a></p>
        </div>
      </div>
    </div>
  </div>