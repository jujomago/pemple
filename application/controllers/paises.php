<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Paises extends CI_Controller {
		
		function __construct() {
			parent::__construct();
			$this->is_logueado();
			$this->load->library('grocery_CRUD');
			
			 
		}
		function pruebita(){
			echo "lalala";
			die();
		}
		function index(){
			echo "this is just a test";
			$query=$this->db->get('vusuario_persona');
			foreach ($query->result() as $userper) {
				print_r($userper);
			}
		}

		public function is_logueado(){
			$is_logueado=$this->session->userdata('LOGUEADO');
			if( !isset($is_logueado) || $is_logueado!=true){
				echo "No tienes permiso para acceder a esta pagina. <a href='../acceso'>Acceso</a>";
				die();
			}	
		}

		function abm(){
			$crud=new grocery_CRUD();

			$crud->set_language('spanish');
			$crud->set_table('paises');
			$crud->set_subject('pais');
   			$crud->set_theme('datatables');
			
			$crud->columns("id_pais","pais","nacionalidad","fec_registro","fec_modificacion","estado","ult_usuario");
			$crud->display_as('id_pais',"ID PAIS");
			$crud->display_as('fec_registro',"Creado en");
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('id_pais',"ID PAIS");
			$crud->display_as('ult_usuario',"Ultimo Usuario");
			
			
			//$crud->where('estado','A');
			$crud->add_fields('pais','nacionalidad','ult_usuario');
			$crud->edit_fields('pais','nacionalidad','estado','ult_usuario','fec_modificacion');
		
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('estado', 'true_false');
			$crud->change_field_type('nacionalidad', 'string');
			$crud->change_field_type('fec_modificacion', 'datetime');
			
			
		 	//$crud->callback_update(array($this,'luegomodificar'));
			$crud->callback_edit_field('estado',array($this,'editar_campo_estado'));
			$crud->callback_delete(array($this,'desactivar_noborrar'));
			$crud->callback_column('ult_usuario',array($this,'formatear_columna_usuario'));
			
			
			$output=$crud->render();
			
	      	$this->_example_output($output);        
	    }
	    
		public function formatear_columna_usuario($valor,$row)
		{
			$query=$this->db->get('vusuario_persona');
			foreach ($query->result_array() as $userper) {
			 		if($valor==$userper['id_usuario'])
						return $userper['nombres']." ".$userper['paterno']." ".$userper['materno'];
						//return "asdf";
					}
		}
		
		public function desactivar_noborrar($pk)
		{
			return $this->db->update('paises',array('estado'=>'X'),array('id_pais'=>$pk));
		}
		
		function editar_campo_estado($valor,$primary_key){
			 
			 if($valor=='A'){
			 	return '<label><input id="estado_activo" type="radio" name="estado" checked value="A" />Activo</label>
					<label><input id="estado_inactivo" type="radio" name="estado" value="X"  />Inactivo</label>';				
			 }
			 
			return '<label><input id="estado_activo" type="radio" name="estado" value="A"  />Activo</label>
					<label><input id="estado_inactivo" type="radio" name="estado" checked value="X" />Inactivo</label>';		
		}
		
		public function luegomodificar($post_array, $primary_key){
			$post_array['estado']=($post_array['estado']==1)?'A':'X';
			
			return $this->db->update('paises',$post_array,array('id_pais' => $primary_key));
		}
	 
	    function _example_output($output = null){
	    //    $this->load->view('paises.php',$output);    
	    	$this->template->set('titulo',"Gestionar Paises");
			$this->template->view('template_crud',$output);
	    }
	}