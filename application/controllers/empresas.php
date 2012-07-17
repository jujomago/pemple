<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Empresas extends CI_Controller {
		
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
				'ult_usuario'=>1
			);

			$this->db->insert('emp_empresas',$data);
			$id_empresa=$this->db->insert_id();
			$post_array['id_empresa']=$id_empresa;
			$post_array['ult_usuario']=1;
			$post_array['sucursal']=$estab;
			$this->db->insert('emp_sucursales',$post_array);
			// echo $this->db->insert_id();
			echo $id_empresa;

		}

		function abm(){
			
			$crud=new grocery_CRUD();
			$crud->set_table('emp_sucursales');
			
			$crud->set_language('spanish');
			$crud->set_subject('empresas');
   $crud->set_theme('datatables');
		
			$campos_agregar=array('sucursal',
			'direccion',
			'nro_fundo_empresa',
			'nro_codeco','telefono',
			'celular',
			'fax',
			'email',
			'pagina_web',
			'nro_empleados',
			'fecha_inicio_empresa',
			'tipo_sucursal',
			'id_departamento',
			'id_provincia',
			'id_localidad',
			'id_municipio',
			'ult_usuario'
			);
			$campos_editar=array('sucursal',
			'direccion',
			'nro_fundo_empresa',
			'nro_codeco',
			'telefono',
			'celular',
			'fax',
			'email',
			'pagina_web',
			'nro_empleados',
			'fecha_inicio_empresa',
			'tipo_sucursal',
			'id_departamento',
			'id_provincia',
			'id_localidad',
			'id_municipio'
			);
			$crud->columns('id_sucursal','sucursal','direccion','celular','telefono','fax','email','tipo_sucursal','nro_empleados');
			$crud->display_as('id_sucursal',"ID");
			$crud->display_as('nro_empleados',"# Empleados");
			$crud->display_as('fec_registro',"Creado en");
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('ult_usuario',"Ultimo Usuario");
			$crud->display_as('id_departamento','Departamento');
			$crud->display_as('id_provincia','Provincia');
			$crud->display_as('id_localidad','Localidad');
			$crud->display_as('id_municipio','Municipio');
			$crud->display_as('sucursal','Nombre');
			$crud->display_as('tipo_sucursal','Tipo');
			
			
			$crud->add_fields($campos_agregar);
			$crud->edit_fields($campos_editar);
			$crud->required_fields('sucursal','direccion','telefono','nro_empleados','fecha_inicio_empresa','id_departamento');
			
	
			
			$crud->change_field_type('pagina_web', 'string');
			$crud->change_field_type('sucursal', 'string');
			$crud->change_field_type('direccion', 'string');
			$crud->change_field_type('nro_fundo_empresa', 'string');
			$crud->change_field_type('nro_codeco', 'string');
			$crud->change_field_type('telefono', 'string');
			$crud->change_field_type('celular', 'string');
			$crud->change_field_type('fax', 'string');
			$crud->change_field_type('email', 'string');
			$crud->change_field_type('tipo_sucursal','enum',array('Cental','Sucursal'));		
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('estado', 'true_false');			
			$crud->change_field_type('fec_modificacion', 'datetime');
			
/*
			
			$crud->change_field_type('id_sucursal','invisible');
			$crud->change_field_type('fec_registro','invisible');
			$crud->change_field_type('id_empresa','invisible');
			$crud->change_field_type('estado','invisible');
			$crud->change_field_type('fec_registro','invisible');
 			$crud->change_field_type('id_pais','hidden','1');
			$crud->change_field_type('fec_modificacion','invisible'); */
				

			$crud->set_relation('id_departamento','departamentos','departamento');
			$crud->set_relation('id_provincia','provincias','provincia');
			$crud->set_relation('id_localidad','localidades','localidad');
			$crud->set_relation('id_municipio','municipios','municipio');
			
			
			$crud->callback_edit_field('estado',array($this,'editar_campo_estado'));
			$crud->callback_field('tipo_sucursal' ,array($this,'editar_campo_tipo_sucursal'));
			
			$crud->callback_delete(array($this,'desactivar_noborrar'));
			$crud->callback_column('ult_usuario',array($this,'formatear_columna_usuario'));
			$crud->callback_insert(array($this,'my_insertar'));
				$crud->callback_column('tipo_sucursal',array($this,'formatear_columna_tipo_sucursal'));
			
			$output=$crud->render();
			
	      	$this->_example_output($output);        
	    }
		public function my_insertar($post_array)
		{
			$data=array(
				'ult_usuario'=>1
			);
			
			$this->db->insert('emp_empresas',$data);
			$id_empresa=$this->db->insert_id();
			$post_array['id_empresa']=$id_empresa;
			return $this->db->insert('emp_sucursales',$post_array);
		}
	    
		function formatear_columna_usuario($valor,$row)
		{
			$query=$this->db->get('vusuario_persona');
			foreach ($query->result_array() as $userper) {
			 		if($valor==$userper['id_usuario'])
						return $userper['nombres']." ".$userper['paterno']." ".$userper['materno'];					
					}
		}
		function formatear_columna_tipo_sucursal($valor,$row)
		{
			if($valor==1)
				return "Central";
			return "Sucursal";
		}
		
		function desactivar_noborrar($pk)
		{
			return $this->db->update('emp_niveles_formaciones',array('estado'=>'X'),array('id_nivel_formacion'=>$pk));
		}
		
		function editar_campo_estado($valor,$primary_key){
			 
			 if($valor=='A'){
			 	return '<label><input id="estado_activo" type="radio" name="estado" checked value="A" />Activo</label>
					<label><input id="estado_inactivo" type="radio" name="estado" value="X"  />Inactivo</label>';				
			 }
			 
			return '<label><input id="estado_activo" type="radio" name="estado" value="A"  />Activo</label>
					<label><input id="estado_inactivo" type="radio" name="estado" checked value="X" />Inactivo</label>';		
		}
		
		function editar_campo_tipo_sucursal($value,$primary_key){
			 
			  if ($value == 'Central' or $value == '')
				  {
				   return '<select name="tipo_sucursal">
				        <option value="1" selected="selected">Central</option>
				        <option value="2">Sucursal</option>
				   </select>';
				  }
				  elseif ($value == 'Sucursal')
				  {
				   return '<select name="tipo_sucursal">
				        <option value="2" selected="selected">Sucursal</option>
				        <option value="1">Central</option>
				   </select>';
				  }	
		}
	 
	 
	    function _example_output($output = null){
	       
	    	$this->template->set('titulo',"Gestionar Empresas");
			$this->template->view('template_crud',$output);
	    }
	}