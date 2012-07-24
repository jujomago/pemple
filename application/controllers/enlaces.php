<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	 * 
	 */
	class Enlaces extends CI_Controller {
		
		function __construct() {
			parent::__construct();			
			$this->load->library('grocery_CRUD');
			
			 
		}
		function index(){
		
		}

		/*Funcion que se llama a traves de ajax y retorna el nuevo ide del establecimiento*/
		// function agregar(){
		// 	$estab=$this->input->post('campo');
		// 	$data=array(s
		// 			"establecimiento"=>$estab,
		// 			"ult_usuario"=>1
		// 	);
		// 	$this->db->insert('emp_establecimientos',$data);
		// 	echo $this->db->insert_id();
		// }


		function abm(){
			$crud=new grocery_CRUD();
			$crud->set_language('spanish');
			$crud->set_table('enlaces');
			$crud->set_theme('datatables');
			$crud->set_subject('Enlace');


			$crud->display_as('id_enlace',"ID");
			$crud->display_as('fec_registro',"Creado en");
			$crud->display_as('fec_modificacion',"Modificado en");
			$crud->display_as('ult_usuario',"Ultimo Usuario");
			$crud->display_as('id_categoria',"Categoria");
			$crud->display_as('ruta_enlace',"Ruta del enlace");
			$crud->display_as('id_padre_enlace',"Padre");

			$crud->columns('id_enlace','enlace','ruta_enlace','estado','ult_usuario','orden','id_categoria','id_padre_enlace');


			$crud->add_fields('enlace','id_categoria','ult_usuario','orden','ruta_enlace','id_padre_enlace');
			$crud->edit_fields('enlace','id_categoria','orden','ruta_enlace','id_padre_enlace','estado','ult_usuario','fec_modificacion');
		
			$crud->change_field_type('ult_usuario', 'hidden', 1);
			$crud->change_field_type('estado', 'true_false');			
			$crud->change_field_type('fec_modificacion', 'datetime');		
			$crud->change_field_type('ruta_enlace', 'string');
			$crud->change_field_type('id_padre_enlace', 'integer');
			$crud->change_field_type('orden', 'integer');
			$crud->set_relation('id_categoria','categorias_enlaces','categoria_enlace');
			
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
			return $this->db->update('enlaces',array('estado'=>'X'),array('id_enlace'=>$pk));
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
	 	 	$this->template->set('titulo',"Gestionar Enlaces");
			$this->template->view('template_crud',$output);
	   	 }

	   	 function asignar_enlaces($idrol){
			$data['css_extras']=array('chosen/chosen.css');
	   	 	$data['js_extras']=array('chosen/chosen.jquery.js');

	   	 	$data['enlaces']=$this->db->get_where('enlaces',array('estado'=>'A'));
	   	 	$data['id_rol']=$idrol;
	   	 	$where=array(
	   	 		'id_rol'=>$idrol,
	   	 		'estado'=>'A'
	   	 	);
	   	 	$data['enlaces_marcados']=$this->db->get_where('menus',$where);


	   	 	
	   	 	$this->template->set('titulo',"Asignar Enlaces Rol (".$idrol.")");
			$this->template->view('asignar_enlaces',$data);	
	   	 }
	   	 function guardar_enlaces_rol(){
	   	 	$enlaces=$this->input->post('enlaces');
	   	 	$id_rol=$this->input->post('id_rol');

	   	 	foreach ($enlaces as $e) {
	   	 		$data=array(
	   	 			'id_rol'=>$id_rol,
	   	 			'id_enlace'=>$e,
	   	 			'ult_usuario'=>1
	   	 		);
	   	 		$this->db->insert('menus',$data);
	   	 	}
	   	 	redirect('/roles/abm');
	   	 }
	}