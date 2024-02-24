<?php require_once(APPPATH.'views/pages/inc/banner.php');?>


<?php echo form_open('users/login'); ?>
	<div class="row p-12">
		<div class="col-md-3"><p  style="color:red !important;"><?php echo validation_errors(); ?></p></div>
		<div class="col-md-3 col-md-offset-3 m-15">
			<h1 class="text-center"><?php echo $pagetitle; ?></h1>
			<div class="form-group">
				<input type="text" name="username" class="form-control" placeholder="Enter Username" autofocus>
			</div>
			<div class="form-group">
				<input type="password" name="password" class="form-control" placeholder="Enter Password" autofocus>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Login</button>
		</div>
	</div>
<?php echo form_close(); ?><hr>