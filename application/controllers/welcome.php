<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Welcome extends CI_Controller {


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
	 	$this->template->set('otro','este es el valor de otro');
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