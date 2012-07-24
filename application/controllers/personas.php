<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Personas extends CI_Controller {
		
		function __construct() {
			parent::__construct();
			$this->is_logueado();			
			$this->load->library('grocery_CRUD');			
			 
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
			$crud->set_table('personas');
			$crud->set_theme('datatables');
			$crud->set_subject('Personas');
			
			$crud->columns("id_persona","U","nombres","paterno","materno","telefono","celular","direccion");
			

			$crud->display_as('id_persona',"ID");			
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('paterno',"Ap. Paterno");
			$crud->display_as('materno',"Ap. Materno");

			$crud->display_as('id_departamento','Departamento');
			$crud->display_as('id_provincia','Provincia');
			$crud->display_as('id_localidad','Localidad');
			$crud->display_as('id_pais','Pais');
			$crud->display_as('id_sexo','Genero');
			$crud->display_as('fec_nacimiento','Fecha de nacimiento');

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
			'id_pais',
			'id_departamento',
			'id_provincia',
			'id_localidad',
			'ult_usuario',
			'id_sexo',
			'id_identificacion'		
			);
			$campos_modificar=array('nombres',
			'paterno',
			'materno',			
			'fec_nacimiento',
			'telefono',
			'celular',
			'correo',
			'fax',
			'direccion',
			'id_pais',
			'id_departamento',
			'id_provincia',
			'id_localidad',
			'ult_usuario',
			'id_sexo'		
			);

			$crud->add_fields($campos_agregar);
			$crud->edit_fields($campos_modificar);

			$crud->change_field_type('ult_usuario', 'hidden', $this->session->userdata('id_usuario'));
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
			$crud->change_field_type('clave', 'password');


			$crud->change_field_type('id_identificacion', 'hidden', 0);
			$crud->set_relation('id_pais','paises','pais');
			$crud->set_relation('id_departamento','departamentos','departamento');
			$crud->set_relation('id_provincia','provincias','provincia');
			$crud->set_relation('id_localidad','localidades','localidad');

			
			
			$crud->callback_edit_field('estado',array($this,'editar_campo_estado'));
			$crud->callback_field('id_sexo',array($this,'editar_campo_sexo'));
			$crud->callback_field('ci',array($this,'editar_campo_ci'));
			$crud->callback_insert(array($this,'guardar_personas'));
			$crud->callback_delete(array($this,'desactivar_noborrar'));
			// $crud->callback_column('ult_usuario',array($this,'formatear_columna_usuario'));
			$crud->callback_column('U',array($this,'_callback_webpage_url'));

		
			$crud->add_action('Crear Usuario', '', 'usuarios/crear_usuario');
		
			$output=$crud->render();
			
	      	$this->_example_output($output);        
	    }


	    	/*Funcion que se llama a traves de ajax y retorna el nuevo ide del establecimiento*/
		function agregar(){
			$estab=$this->input->post('campo');
			$data=array(
					"cargo"=>$estab,
					"ult_usuario"=>$this->session->userdata('id_usuario')
			);
			$this->db->insert('emp_cargos',$data);
			echo $this->db->insert_id();
		}

		public function _callback_webpage_url($value, $row)
		{
		 
		  $where['id_estado']='A';
		  $where['id_persona']=$row->id_persona;
		  $query=$this->db->get_where('usuarios',$where);
		  if($query->num_rows()==1){
		  	return "<img src='/images/icn_security.png' /> ";
		  }else{
		  	return "X";
		  }
		}

		function guardar_personas($post_array) {
		
			$data=array(
				'id_departamento'=>$this->input->post('extension'),
				'ult_usuario'=>$this->input->post('ult_usuario'),
				'ci'=>$this->input->post('ci')
			);
			$this->db->insert('prs_identificaciones',$data);

			if($this->db->affected_rows()==1){  //si se inserto en prs_identificaciones
				$id_identificacion=$this->db->insert_id();
				unset($post_array['ci']);
				unset($post_array['extension']);
				$post_array['id_identificacion']=$id_identificacion;			
			//	print_r($post_array);
				return $this->db->insert('personas',$post_array);


			}else{
				echo "ocurrio un error al isnert en prs_identificaciones";
				die();
			}
		}

		function crear_usuario($id_persona){
			

	   	 	// $data['enlaces']=$this->db->get_where('enlaces',array('estado'=>'A'));
	   	 	// $data['id_rol']=$idrol;
	   	 	// $where=array(
	   	 	// 	'id_rol'=>$idrol,
	   	 	// 	'estado'=>'A'
	   	 	// );
	   	 	// $data['enlaces_marcados']=$this->db->get_where('menus',$where);

	   	 	$data['persona']=$this->db->get_where('personas',array('id_persona'=>$id_persona))->row();
	   	 	
	   	 	$this->template->set('titulo',"Crear un Usuario para ".$data['persona']->nombres." ".$data['persona']->paterno);
			$this->template->view('form_usuario',$data);	
		}
		function guardar_usuario(){
			$data['usuario']=$this->input->post('usuario');
			$data['password']=$this->input->post('password');
			$data['recordatorio']=$this->input->post('recordatorio');
			$data['id_persona']=$this->input->post('id_persona');
			$this->db->insert('usuarios',$data);
		//	$id_usuario=$this->db->insert_id();
		//	echo $id_usuario;
		//	die();
		//	if($this->db->affected_rows()==1){
			
				// $data['roles']=$this->db->get_where('roles',array('estado'=>'A'));
				// $data['id_usuario']=$id_usuario;
				// $data['css_extras']=array('chosen/chosen.css');
	   // 	 		$data['js_extras']=array('chosen/chosen.jquery.js');

				// $this->template->view('asignar_roles',$data);
		//	}
			$this->abm();
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
			 	return '<label><input id="estado_activo" type="radio" name="id_sexo" checked value="M" />Masculino</label>
					<label><input id="estado_inactivo" type="radio" name="id_sexo" value="F" />Femenino</label>';				
			 }
			 
			return '<label><input id="estado_activo" type="radio" name="id_sexo" value="M"  />Masculino</label>
					<label><input id="estado_inactivo" type="radio" name="id_sexo" checked value="F" />Femenino</label>';		
		}
		function editar_campo_ci($valor,$primary_key){
			  
			$where['estado']='A';
			$dptos=$this->db->get_where('departamentos',$where); 
			 $extension="<select name='extension' style='width:100px;margin-left:5px'>";
				foreach ($dptos->result() as $dpto){
				  		$extension.="<option value='".$dpto->id_departamento."'>".$dpto->sigla."</option>";
				}
 			$extension.="</select>";

			return '<input type="text" maxlength="7" value="'.$valor.'" name="ci" style="width:200px">'.$extension;	
		}
	
	    function _example_output($output = null){
	      //  $this->load->view('cargos',$output);    
	    	$this->template->set('titulo',"Gestionar Personas");
			$this->template->view('template_crud',$output);
	    }
	}