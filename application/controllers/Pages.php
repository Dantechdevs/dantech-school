<?php
	class Pages extends CI_Controller{
		public function view($page = 'home'){
			if(!file_exists(APPPATH.'views/pages/'.$page.'.php')){
				show_404();
			}

			$data['pagetitle'] = ucfirst($page);
             $data['posts'] = $this->post_model->getSliderPosts();
             $data['categories'] = $this->category_model->get_categories();
			$this->load->view('templates/header',$data);
			$this->load->view('pages/'.$page, $data);
			$this->load->view('templates/footer',$data);
		}
	}