<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Categoria_enlaces extends CI_Controller {
		
		function __construct() {
			parent::__construct();	
			$this->is_logueado();			
			$this->load->library('grocery_CRUD');
			
			 
		}
		function index(){
		
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
			$crud->set_table('categorias_enlaces');
			$crud->set_theme('datatables');
			$crud->set_subject('Categorias Enlaces');


			$crud->display_as('id_categoria',"ID");
			$crud->display_as('fec_registro',"Creado en");
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('ult_usuario',"Ultimo Usuario");

			$crud->add_fields('categoria_enlace','orden','ult_usuario');
			$crud->edit_fields('categoria_enlace','orden','ult_usuario','estado');
		
			$crud->change_field_type('ult_usuario', 'hidden', $this->session->userdata('id_usuario'));
			$crud->change_field_type('estado', 'true_false');			
			$crud->change_field_type('fec_modificacion', 'datetime');		
			$crud->change_field_type('orden', 'integer');
		
			$crud->callback_edit_field('estado',array($this,'editar_campo_estado'));
			$crud->callback_delete(array($this,'desactivar_noborrar'));
			$crud->callback_column('ult_usuario',array($this,'formatear_columna_usuario'));

		

		
			$output=$crud->render();
			
	      	$this->_example_output($output);        
	    }
	    
		function formatear_columna_usuario($valor,$row)
		{
			$query=$this->db->get('vusuario_persona');
			foreach ($query->result_array() as $userper) {
			 		if($valor==$userper['id_usuario'])
						return $userper['nombres']." ".$userper['paterno']." ".$userper['materno'];					
					}
		}
		
		function desactivar_noborrar($pk)
		{
			return $this->db->update('categorias_enlaces',array('estado'=>'X'),array('id_categoria'=>$pk));
		}
		
		function editar_campo_estado($valor,$primary_key){
			 
			 if($valor=='A'){
			 	return '<label><input id="estado_activo" type="radio" name="estado" checked value="A" />Activo</label>
					<label><input id="estado_inactivo" type="radio" name="estado" value="X"  />Inactivo</label>';				
			 }
			 
			return '<label><input id="estado_activo" type="radio" name="estado" value="A"  />Activo</label>
					<label><input id="estado_inactivo" type="radio" name="estado" checked value="X" />Inactivo</label>';		
		}
	
	    function _example_output($output = null){
	       // $this->load->view('template_crud',$output);    
	 	 	$this->template->set('titulo',"Gestionar Categorias Enlaces");
			$this->template->view('template_crud',$output);
	   	 }

	}