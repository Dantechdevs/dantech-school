
    <!-- Main News Slider Start -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7 px-0">
                <div class="owl-carousel main-carousel position-relative">
                	<?php foreach($sliderposts as $post) : ?>
                    <div class="position-relative overflow-hidden" style="height: 500px;">
                        <img class="img-fluid h-100" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-2">
                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                    href=""><?php echo $post['name']; ?></a>
                                <a class="text-white" href="<?php echo site_url('/posts/'.$post['slug']); ?>"> <?php echo $post['created_at']; ?></a>
                            </div>
                            <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="<?php echo site_url('/posts/'.$post['slug']); ?>"><?php echo $post['title']; ?></a>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-lg-5 px-0">
                <div class="row mx-0">
                	<?php foreach($sliderposts as $post) : ?>
                    <div class="col-md-6 px-0">
                        <div class="position-relative overflow-hidden" style="height: 250px;">
                            <img class="img-fluid w-100 h-100" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" style="object-fit: cover;">
                            <div class="overlay">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                        href=""><?php echo $post['name']; ?></a>
                                    <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                                </div>
                                <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Main News Slider End -->