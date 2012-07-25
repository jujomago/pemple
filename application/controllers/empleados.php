<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Empleados extends CI_Controller {


		function __construct() {
			parent::__construct();
			$this->is_logueado();
		}


		public function is_logueado(){
			$is_logueado=$this->session->userdata('LOGUEADO');
			if( !isset($is_logueado) || $is_logueado!=true){
				echo "No tienes permiso para acceder a esta pagina. <a href='../acceso'>Acceso</a>";
				die();
			}	
		}

		function prueba_paises(){

			$this->db->trans_start();
				$data=array(
					'pais'=>'LOlito',
					'nacionalidad'=>'de losos',
					'ult_usuario'=>1
				);
				$this->db->insert('paises',$data);

			$this->db->trans_complete();

				if ($this->db->trans_status() === FALSE)
				{
				    // generate an error... or use the log_message() function to log your error
				    echo $this->db->trans_status();
				} 

		}

		function registro(){
			//$data['paises']=$this->db->get('paises')->re
			$this->load->model('Paises');
			
			$where['estado']='A';
			
			$data['paises']=$this->Paises->get();
			$data['dptos']=$this->db->get_where('departamentos',$where);
			$data['niveles']=$this->db->get_where('emp_niveles_formaciones',$where);
			$data['establecimientos']=$this->db->get_where('emp_establecimientos',$where);
			$data['cargos']=$this->db->get_where('emp_cargos',$where);
			$data['sucursales']=$this->db->get_where('emp_sucursales',$where);
			$data['compentencias']=$this->db->get_where('emp_competencias',$where);
			$data['instituciones']=$this->db->get_where('emp_instituciones',$where);
			$data['cursos_capacitacion']=$this->db->get_where('emp_cursos_capacitaciones',$where);
			
			
			//$this->load->view('fempleados',$data);
			$this->template->set('titulo',"Formulario Empleados");
			$this->template->view('fempleados',$data);
		}
		


		function guardar(){
		
		//	print_r($_POST);
		//	print_r($this->input->post('instituciones',true));

			//INICIAMOS LA TRANSACCION
			$this->db->trans_start();

			//1 insertar en prs_identificaciones
				$data1=array(
					'id_departamento'=>$this->input->post('extension'),
					'ult_usuario'=>$this->session->userdata('id_usuario'),
					'ci'=>$this->input->post('ci')
				);
				$this->db->insert('prs_identificaciones',$data1);

				$id_prs_identificaciones=$this->db->insert_id();

			//2 insertar en personas
				$data2=array(
					'id_identificacion'=>$id_prs_identificaciones,
					'ult_usuario'=>1,
					'nombres'=>$this->input->post('nombres'),
					'paterno'=>$this->input->post('apaterno'),
					'materno'=>$this->input->post('amaterno'),
					'fec_nacimiento'=>$this->input->post('fnac'),
					'id_departamento'=>$this->input->post('lugarnac'),
					'telefono'=>$this->input->post('telefono'),
					'celular'=>$this->input->post('celular'),
					'correo'=>$this->input->post('email'),
					'fax'=>$this->input->post('fax'),
					'direccion'=>$this->input->post('domicilio'),
					'id_sexo'=>$this->input->post('sexo')
				);
				$this->db->insert('personas',$data2);

				$id_persona=$this->db->insert_id();

			//3 insertar en empleado
				$data3=array(
					'id_persona'=>$id_persona,
					'nit'=>$this->input->post('nit'),
					'pagina_web'=>$this->input->post('web'),
					'ult_usuario'=>$this->session->userdata('id_usuario')

				);
				$this->db->insert('emp_empleados',$data3);

				$id_empleado=$this->db->insert_id();

			//4 insertar en usuarios (generar link, usuario y clave), asignar rol de empleados
				$this->load->helper('string');
				$this->load->library('email');


				$rusuario=random_string('alnum', 5);
				$rpassword=random_string('alnum', 8);
				$datau=array(
					'id_persona'=>$id_persona,
					'usuario'=>$rusuario,
					'password'=>$rpassword
				);

				$this->db->insert('usuarios',$datau);

				$id_usuario=$this->db->insert_id();



				$this->email->from('jujomago@gmail.com', 'Jujomago');
				$this->email->to($this->input->post('email'));
				$this->email->subject('Suscripción al Sistema de Empleabilidad de la Fautapo');
				$this->email->message('Estimado:'.$this->input->post('nombres')."\r\n"." Le escribimos para comunicarle que acaba ser inscribir su nombre al Sistema de empleabilidade la la Fundación Fautapo. \r\n Sus credenciales para acceder al sistema son las siguientes:\r\n Usuario: ".$rusuario."\r\nPassword: ".$rpassword."\r\n Por ningun motivo muestre su clave a cualquier persona, estas credenciasles pueden ser cambiadas una vez que ingrese al sistema. \r\n http://emple.local");

				$this->email->send();

			//4.1 asignar el rol de empleados
				$datar=array(
					'id_usuario'=>$id_usuario,
					'id_rol'=>3, //EL ROL 3 ES DEL EMPLEADO ASI QUE ESTE NUNCA CAMBIA
					'ult_usuario'=>$this->session->userdata('id_usuario')
				);
				$this->db->insert('usr_roles',$datar);

			//5 insertar en emp_estudios_empleados
				
				$niveles=$this->input->post('niveles');
				$establecimientos=$this->input->post('establecimientos');
				$titulos_obtenidos=$this->input->post('titulos_obtenidos');
				$tiempos_estudio=$this->input->post('tiempos_estudio');

				for ($i=0; $i < count($niveles); $i++) { 
					$data4=array(
					'id_empleado'=>$id_empleado,
					'id_nivel_frm'=>$niveles[$i],
					'id_establecimiento'=>$establecimientos[$i],
					'titulo_obtenido'=>$titulos_obtenidos[$i],
					'tiempo_estudio'=>$tiempos_estudio[$i],
					'ult_usuario'=>$this->session->userdata('id_usuario')
					);
					$this->db->insert('emp_estudios_empleados',$data4);
				}

			//6  insertar en emp_experiencias_laborales

				$cargos=$this->input->post('cargos');
				$sucursales=$this->input->post('sucurales');
				$tiempos_trabajo=$this->input->post('tiempos_trabajo');
				for ($i=0; $i < count($cargos); $i++) { 
					$data5=array(
					'id_empleado'=>$id_empleado,
					'id_empresa'=>$sucursales[$i],
					'id_cargo'=>$cargos[$i],
					'tiempo_trabajo'=>$tiempos_trabajo[$i],
					'ult_usuario'=>$this->session->userdata('id_usuario')
					);
					$this->db->insert('emp_experiencias_laborales',$data5);
				}

			//7 insertar en emp_detalles_competencias
			
				$competencias=$this->input->post('competencias');
				$instituciones=$this->input->post('instituciones');
				$fechas_competencias=$this->input->post('fechas_competencias');

		//		echo var_dump($instituciones);
				if(count($competencias)>0){
					for ($i=0; $i < count($competencias); $i++) { 
						$data6=array(
						'id_empleado'=>$id_empleado,
						'id_competencia'=>$competencias[$i],
						'id_institucion'=>$instituciones[$i],
						'fecha'=>$fechas_competencias[$i],
						'ult_usuario'=>$this->session->userdata('id_usuario')
						);
						$this->db->insert('emp_detalles_competencias',$data6);
					}
				}

			//8 insertar en emp_formularios

					$data7=array(
					'id_tipo'=>1, //1 igual a empleado, 2 empleador
					'id_persona'=>$id_persona,
					//'id_empadronador'=>1, // yo me asigne como empradonador
					'gestion'=>date('Y'),
					'observacion'=>$this->input->post('observacion'),
					'serie'=>'FF-PE-02/'.date('Y'),
					'ult_usuario'=>$this->session->userdata('id_usuario')
					);
					$this->db->insert('emp_formularios',$data7);

					$id_formulario=$this->db->insert_id();

			//9 insertar en emp_frm_cargos

					$interes_cargos=$this->input->post('interes_cargos');
					for ($i=0; $i < count($interes_cargos); $i++) { 
						$data8=array(
						'id_formulario'=>$id_formulario,
						'id_cargo'=>$interes_cargos[$i],
						'ult_usuario'=>$this->session->userdata('id_usuario')
						);
						$this->db->insert('emp_frm_cargos',$data8);
					}				

			//10 insertar en emp_frm_cursos_capacitaciones
					$interes_cursos=$this->input->post('interes_cursos');
					for ($i=0; $i < count($interes_cursos); $i++) { 
						$data9=array(
						'id_formulario'=>$id_formulario,
						'id_curso_capacitacion'=>$interes_cursos[$i],
						'ult_usuario'=>$this->session->userdata('id_usuario')
						);
						$this->db->insert('emp_frm_cursos_capacitaciones',$data9);
					}

			//FINALIZAMOS LA TRANSACCION
			$this->db->trans_complete();

			if ($this->db->trans_status() === TRUE)
			{	
				 $data['titulo']='Se registro correctamente el formulario';
				 $this->template->view('fempleado_exito',$data);
			}else{
				echo "Ocurrio un error al guardar los datos";
				die();
			}

		}
	}