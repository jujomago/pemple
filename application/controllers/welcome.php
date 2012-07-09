<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 
	function Welcome(){
		parent::__construct();
	
		
	} 
	function prueba(){
	/*	$data['titulo']="esto es una pruba";
		$this->load->view('header',$data);		
		*/	
	//	$this->load->view('template');

		//$this->load->view('template',$data);*/
	//	$this->template->set('titulo','Este es el titulo');
	//	$this->template->load('template','header',);
	
	 	$this->template->set('titulo',"BLA BLA");
		$this->template->set('libjs',"http://google.com/pruebita.js");
		$reqjs=array('libreria1.js','libreria2.js','libreria3.js');
		$this->template->set('reqjs',$reqjs);
		$this->template->view('about',array('info_alert'=>'	Welcome to the free MediaLoot admin panel template, this could be an informative message.'));
		
	}
	public function index()
	{
		echo "esta es una preuba";
		$q=$this->db->get('personas');
		print_r($q->result());
		$this->load->view('welcome_message');
		
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */