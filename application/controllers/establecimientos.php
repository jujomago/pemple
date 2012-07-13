<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Establecimientos extends CI_Controller {
		
		function __construct() {
			parent::__construct();			
			$this->load->library('grocery_CRUD');
			
			 
		}
		function index(){
		
		}

		/*Funcion que se llama a traves de ajax y retorna el nuevo ide del establecimiento*/
		function agregar(){
			$estab=$this->input->post('campo');
			$data=array(
					"establecimiento"=>$estab,
					"ult_usuario"=>1
			);
			$this->db->insert('emp_establecimientos',$data);
			echo $this->db->insert_id();
		}


		function abm(){
			$crud=new grocery_CRUD();
			$crud->set_language('spanish');
			$crud->set_table('emp_establecimientos');
			$crud->set_theme('datatables');
			$crud->set_subject('establecimiento');


			$crud->columns("id_establecimiento","id_tipo_est","establecimiento","sigla","fec_registro","fec_modificacion","estado","ult_usuario");
			$crud->display_as('id_establecimiento',"ID");
			$crud->display_as('id_tipo_establecimiento',"ID ESTABLECIMIENTO");
			$crud->display_as('id_tipo_est',"Tipo");
			$crud->display_as('fec_registro',"Creado en");
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('ult_usuario',"Ultimo Usuario");
			
			
			$crud->add_fields('establecimiento','sigla',"id_tipo_est",'ult_usuario');
			$crud->edit_fields('establecimiento','sigla',"id_tipo_est",'estado','ult_usuario','fec_modificacion');
		
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('estado', 'true_false');			
			$crud->change_field_type('fec_modificacion', 'datetime');
			
			$crud->set_relation('id_tipo_est','emp_tipo_establecimientos','tipo_establecimiento');
			
		
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
			return $this->db->update('emp_establecimientos',array('estado'=>'X'),array('id_establecimiento'=>$pk));
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
	 	 	$this->template->set('titulo',"Gestionar Establecimientos");
			$this->template->view('template_crud',$output);
	   	 }
	}