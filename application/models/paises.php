<?php
/**
 * 
 */
class Paises extends CI_Model {
	
	function __construct() {
		parent::__construct();
	}
	public function get($estado='A')
	{
		return $this->db->get_where('paises',array('estado'=>$estado));
	
	}
	
}
