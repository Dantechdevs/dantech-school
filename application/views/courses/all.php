  <div class="untree_co-section bg-light">
    <div class="container"> 
      <div class="row justify-content-center mb-5">
        <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="0">
          <h2 class="line-bottom text-center mb-4">The Right Course For You</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        </div>
      </div>
      <div class="row">
      	<?php foreach($posts as $post) : ?>
        <div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="custom-media">
            <a href="#"><img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" alt="Image" class="img-fluid"></a>
            <div class="custom-media-body">
              <div class="d-flex justify-content-between pb-3">
                <div class="text-primary"><span class="uil uil-book-open"></span> <span>43 lesson</span></div>
                <div class="review"><span class="icon-star"></span> <span>4.8</span></div>
              </div>
              <h3><?php echo $post['title']; ?></h3>
              <p class="mb-4"><?php echo word_limiter($post['body'], 60); ?></p>
              <div class="border-top d-flex justify-content-between pt-3 mt-3 align-items-center">
                <div><span class="price">$87.00</span></div>
                <div><a href="<?php echo site_url('/posts/'.$post['slug']); ?>">Learn More</a></div>
              </div>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
      </div>
    </div>
  </div>