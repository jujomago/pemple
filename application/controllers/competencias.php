<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Competencias extends CI_Controller {
		
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
			$crud->set_table('emp_competencias');
			
			$crud->set_language('spanish');
			$crud->set_subject('competencias');
//   			$crud->set_theme('datatables');

			$crud->add_fields('competencia','id_tipo_competencia','ult_usuario');
			$crud->edit_fields('competencia','id_tipo_competencia','estado','ult_usuario','fec_modificacion');
			
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('fec_modificacion', 'datetime');
			$crud->set_relation('id_tipo_competencia','emp_tipo_competencias','tipo_competencia');
			
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
			return $this->db->update('emp_competencias',array('estado'=>'X'),array('id_competencia'=>$pk));
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
	        $this->load->view('niveles',$output);    
	 /*   	$this->template->set('titulo',"Agregar Paises");
			$this->template->view('paises',$output);
	   */ }
	}