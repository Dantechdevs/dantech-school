<?php require_once(APPPATH.'views/pages/inc/banner.php');?>
<hr>
 <div class="container">
      <div class="row">
        <div class="col-lg-5 mr-auto mb-5 mb-lg-0"  data-aos="fade-up" data-aos-delay="0">
          <img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" alt="image" class="img-fluid">
        </div>
        <div class="col-lg-7 ml-auto" data-aos="fade-up" data-aos-delay="100">
          <h3 class="line-bottom mb-4">Course Details</h3>
          <p><?php echo $post['title']; ?> </p>

          <div class="custom-accordion" id="accordion_1">
            <div class="accordion-item">
              <h2 class="mb-0">
                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"></button>
              </h2>

              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion_1">
                <div class="accordion-body">
                  <div class="d-flex">
                    <div class="accordion-img mr-4">
                      <img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" alt="Image" class="img-fluid">
                    </div>
                    <div>
                      <p><?php echo $post['body']; ?></p>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- .accordion-item -->

            <div class="accordion-item">
              <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Lesson</button>
              </h2>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion_1">
                <div class="accordion-body">
                  <div class="d-flex">
                    <div class="accordion-img mr-4">
                      <img src="images/img-school-2-min.jpg" alt="Image" class="img-fluid">
                    </div>
                    <div>
                      <p>.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- .accordion-item -->
            <div class="accordion-item">
              <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">lesson one</button>
              </h2>

              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion_1">
                <div class="accordion-body">
                  <div class="d-flex">
                    <div class="accordion-img mr-4">
                      <img src="images/img-school-3-min.jpg" alt="Image" class="img-fluid">
                    </div>
                    <div>
                      <p>
                      .</p>
                    </div>
                  </div>

                </div>
              </div>

            </div> <!-- .accordion-item -->

          </div>

        </div>
      </div>
    </div>
  </div> <!-- /.untree_co-section -->