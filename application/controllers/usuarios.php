<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Usuarios extends CI_Controller {
		
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
			$crud->set_table('personas');
			$crud->set_theme('datatables');
			$crud->set_subject('usuario');
			
			$crud->columns("id_persona","nombres","paterno","materno","telefono","celular","direccion","fec_modificacion");
			

			$crud->display_as('id_persona',"ID");			
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('paterno',"Ap. Paterno");
			$crud->display_as('materno',"Ap. Materno");

			$crud->display_as('id_departamento','Departamento');
			$crud->display_as('id_provincia','Provincia');
			$crud->display_as('id_localidad','Localidad');
			$crud->display_as('id_sexo','Genero');
			
			$campos_agregar=array('nombres',
			'paterno',
			'materno',
			'ci',
			'fec_nacimiento',
			'telefono',
			'celular',
			'correo',
			'fax',
			'direccion',
			'id_departamento',
			'id_provincia',
			'id_localidad',
			'ult_usuario',
			'id_sexo',
			'id_pais'
			
			);

			$crud->add_fields($campos_agregar);
		
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('estado', 'true_false');			
			$crud->change_field_type('fec_modificacion', 'datetime');
			$crud->change_field_type('nombres', 'string');
			$crud->change_field_type('paterno', 'string');
			$crud->change_field_type('materno', 'string');
			$crud->change_field_type('telefono', 'string');
			$crud->change_field_type('celular', 'string');
			$crud->change_field_type('correo', 'string');
			$crud->change_field_type('direccion', 'string');
			$crud->change_field_type('fax', 'string');

			$crud->change_field_type('id_pais', 'hidden', 1);
			$crud->set_relation('id_departamento','departamentos','departamento');
			$crud->set_relation('id_provincia','provincias','provincia');
			$crud->set_relation('id_localidad','localidades','localidad');
			//$crud->set_relation('id_departamento', 'departamentos','departamento');
			
	
			$crud->callback_edit_field('estado',array($this,'editar_campo_estado'));
			$crud->callback_field('id_sexo',array($this,'editar_campo_sexo'));
			$crud->callback_delete(array($this,'desactivar_noborrar'));
			$crud->callback_column('ult_usuario',array($this,'formatear_columna_usuario'));
			
			
			$output=$crud->render();
			
	      	$this->_example_output($output);        
	    }


	    	/*Funcion que se llama a traves de ajax y retorna el nuevo ide del establecimiento*/
		function agregar(){
			$estab=$this->input->post('campo');
			$data=array(
					"cargo"=>$estab,
					"ult_usuario"=>1
			);
			$this->db->insert('emp_cargos',$data);
			echo $this->db->insert_id();
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
		function editar_campo_sexo($valor,$primary_key){
			 
			 if($valor=='M'){
			 	return '<label><input id="estado_activo" type="radio" name="sexo" checked value="M" />Masculino</label>
					<label><input id="estado_inactivo" type="radio" name="sexo" value="F" />Femenino</label>';				
			 }
			 
			return '<label><input id="estado_activo" type="radio" name="sexo" value="M"  />Masculino</label>
					<label><input id="estado_inactivo" type="radio" name="sexo" checked value="F" />Femenino</label>';		
		}
	
	    function _example_output($output = null){
	      //  $this->load->view('cargos',$output);    
	    	$this->template->set('titulo',"Gestionar Usuarios");
			$this->template->view('template_crud',$output);
	    }
	}