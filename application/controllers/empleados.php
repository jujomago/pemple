<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Empleados extends CI_Controller {

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
	}