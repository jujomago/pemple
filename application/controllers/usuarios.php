<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Usuarios extends CI_Controller {
		
		function __construct() {
			parent::__construct();			
			$this->is_logueado();		
			$this->load->library('grocery_CRUD');			
			 
		}
		function index(){
			// echo "this is just a test";
			// $query=$this->db->get('vusuario_persona');
			// foreach ($query->result() as $userper) {
			// 	print_r($userper);
			// }
			$this->abm();
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
			$crud->set_table('usuarios');
			$crud->set_theme('datatables');
			$crud->set_subject('Usuarios');
			
			 $crud->columns("id_usuario","roles","id_persona","usuario","password","id_estado");
			$crud->callback_column('roles',array($this,'_formatear_columna_rol'));

			$crud->display_as('id_persona',"Persona");	
			$crud->unset_operations();

			$crud->callback_column('id_persona',array($this,'formatear_columna_usuario'));
			
			$crud->add_action('Asignar roles', '', 'usuarios/asignar_roles');

			$output=$crud->render();
			
	      	$this->_example_output($output);        
	    }

	    function _formatear_columna_rol($value, $row){
	      $where['estado']='A';
		  $where['id_usuario']=$row->id_usuario;
		  $query=$this->db->get_where('usr_roles',$where);
		  if($query->num_rows()>0)
			  return $query->num_rows()." rol(es)";
	      return "X";
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
		function asignar_roles($id_usuario){

				$data['roles']=$this->db->get_where('roles',array('estado'=>'A'));
				$data['id_usuario']=$id_usuario;
				$data['css_extras']=array('chosen/chosen.css');
	   	 		$data['js_extras']=array('chosen/chosen.jquery.js');
	   	 	
	   	 		$where=array(
		   	 		'id_usuario'=>$id_usuario,
		   	 		'estado'=>'A'
	   	 		);
	   	 		$data['roles_marcados']=$this->db->get_where('usr_roles',$where);

	   	 		$data['titulo']="Asignar roles";
				$this->template->view('asignar_roles',$data);
		}

		function guardar_roles_usuario(){
				$id_usuario=$this->input->post('id_usuario');
				$roles=$this->input->post('roles');

				$this->db->delete('usr_roles',array('id_usuario'=>$id_usuario));

				foreach ($roles as $rol) {
					$data=array(
						'id_rol'=>$rol,
						'id_usuario'=>$id_usuario,
						'ult_usuario'=>$this->session->userdata('id_usuario')
					);
					$this->db->insert('usr_roles',$data);
				}
				redirect('/usuarios');
		}



		function crear_usuario($id_persona){
			

	   	 	// $data['enlaces']=$this->db->get_where('enlaces',array('estado'=>'A'));
	   	 	// $data['id_rol']=$idrol;
	   	 	// $where=array(
	   	 	// 	'id_rol'=>$idrol,
	   	 	// 	'estado'=>'A'
	   	 	// );
	   	 	// $data['enlaces_marcados']=$this->db->get_where('menus',$where);


  		  $where['id_estado']='A';
		  $where['id_persona']=$id_persona;
		  $query=$this->db->get_where('usuarios',$where);
		  if($query->num_rows()==0){
		  		$data['persona']=$this->db->get_where('personas',array('id_persona'=>$id_persona))->row();
	   	 	 	$this->template->set('titulo',"Crear un Usuario para ".$data['persona']->nombres." ".$data['persona']->paterno);
				$this->template->view('form_usuario',$data);	
		  }else{
		  		redirect('personas/abm');
		  }


	   	 
			


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
			
		//	}
			$this->abm();
		}
	    
		function formatear_columna_usuario($valor,$row)
		{
			$query=$this->db->get('personas');
			foreach ($query->result_array() as $userper) {
			 		if($valor==$userper['id_persona'])
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
	    	$this->template->set('titulo',"Gestionar Usuarios");
			$this->template->view('template_crud',$output);
	    }
	}