<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Cargos extends CI_Controller {
		
		function __construct() {
			parent::__construct();			
			$this->load->library('grocery_CRUD');			
			 
		}
		function index(){
			echo "this is just a test";
			$query=$this->db->get('vusuario_persona');
			foreach ($query->result() as $userper) {
				print_r($userper);
			}
		}
		function abm(){
			$crud=new grocery_CRUD();
			$crud->set_language('spanish');
			$crud->set_table('emp_cargos');
			$crud->set_theme('datatables');
			$crud->set_subject('cargo');
			
			$crud->display_as('id_cargo',"ID");
			
			$crud->display_as('fec_registro',"Creado en");
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('ult_usuario',"Ultimo Usuario");
			
			
			$crud->add_fields('cargo','ult_usuario');
			$crud->edit_fields('cargo','fec_modificacion','ult_usuario');
		
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('estado', 'true_false');			
			$crud->change_field_type('fec_modificacion', 'datetime');
	
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
			return $this->db->update('emp_cargos',array('estado'=>'X'),array('id_cargo'=>$pk));
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
	      //  $this->load->view('cargos',$output);    
	    	$this->template->set('titulo',"Gestionar Cargos");
			$this->template->view('template_crud',$output);
	    }
	}