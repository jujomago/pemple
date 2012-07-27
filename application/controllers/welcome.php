<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Welcome extends CI_Controller {

	var $loguin=FALSE;

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
	public function index($msg="ok")
	{
		if($msg=='error')
			$data["mensaje"]="El usuario no existe";
		else
			$data=array();
		$this->load->view('login',$data);		
	}
	public function is_loquegado(){
		$this->loguin=$this->session->userdata('LOGUEADO');
	}
	public function login(){
	 	$usuario=$this->input->post('usuario',true);
	 	$clave=$this->input->post('clave',true);
	 	$where=array(
	 		'usuario'=>$usuario,
	 		'password'=>$clave
	 	);
	 	$query=$this->db->get_where('usuarios',$where);
	 	if($query->num_rows()==1){
	 		$query2=$this->db->get_where('vusuario_persona',$where);
	 		$datos_persona=$query2->row();
	 		$this->session->set_userdata($datos_persona);
	 		// print_r($this->session->all_userdata());s
	 		$this->session->set_userdata('LOGUEADO', TRUE);
	 		redirect('/empresas/abm');
	 	}else{
	 		redirect('welcome/index/error');
	 	}
	}
	public function logout(){
		$this->session->sess_destroy();
		$this->loguin=FALSE;
		redirect('/welcome/index/ok');
	}
	function prueba_error(){
		/*$datos=array(
			'pais'=>'Holanda',
			'nacionalidad'=>'Holandes',
			'ult_usuario'=>1
		);
		$this->db->insert('paises',$datos);
		echo $this->db->insert_id();*/
		echo "probando";
		die();
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/wselcome.php */