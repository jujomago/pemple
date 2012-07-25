<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Cursos_capacitaciones extends CI_Controller {
		
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


	    	/*Funcion que se llama a traves de ajax y retorna el nuevo ide del establecimiento*/
		function agregar(){
			$estab=$this->input->post('campo');
			$data=array(
					"curso_capacitacion"=>$estab,
					"ult_usuario"=>1
			);
			$this->db->insert('emp_cursos_capacitaciones',$data);
			echo $this->db->insert_id();
		}


		function abm(){
			
			$crud=new grocery_CRUD();
			$crud->set_table('emp_cursos_capacitaciones');
			
			$crud->set_language('spanish');
			$crud->set_subject('curso capacitación');
   			$crud->set_theme('datatables');
		
		
			$crud->add_fields('curso_capacitacion','ult_usuario');
			$crud->edit_fields('curso_capacitacion','estado','ult_usuario','fec_modificacion');
			$crud->display_as('id_curso_capacitacion',"ID");

			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('fec_modificacion', 'datetime');
			$crud->change_field_type('curso_capacitacion', 'string');
			
			$crud->callback_edit_field('estado',array($this,'editar_campo_estado'));
			$crud->callback_delete(array($this,'desactivar_noborrar'));
			$crud->callback_column('ult_usuario',array($this,'formatear_columna_usuario'));
					
			$crud->set_rules('curso_capacitacion','Curso de capacitación','required');

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
			return $this->db->update('emp_instituciones',array('estado'=>'X'),array('id_institucion'=>$pk));
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
	        $this->template->set('titulo',"Gestionar Cursos de capacitación");
			$this->template->view('template_crud',$output);
	  }
	}