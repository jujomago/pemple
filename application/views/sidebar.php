<aside id="sidebar" class="column">
		<!-- <form class="quick_search">
			<input type="text" value="Busqueda Rapida" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
		</form>
		<hr/> -->
		<?php


			$id_usuario_log=$this->session->userdata('id_usuario');
			$whereu['estado']="A";
			$whereu['id_usuario']=$id_usuario_log;
			$roles_usuario=$this->db->get_where('usr_roles',$whereu); //supondre que el usuario solo puede tener un rol
			// print_r($roles_usuario->result());

			$rol_unico=$roles_usuario->row();
			$wherem['estado']='A';
			$wherem['id_rol']=$rol_unico->id_rol;

			$enlaces_rol=$this->db->get_where('menus',$wherem);



			$where['estado']='A';
			$this->db->from('categorias_enlaces');
			$this->db->where($where);
			$this->db->order_by("orden", "asc");
			$categorias=$this->db->get();

		 ?>
 		<?php foreach ($categorias->result() as $cat) : ?>				
			<h3><?=$cat->categoria_enlace?></h3>
			<ul class="toggle">
				<?php
				$where['estado']='A';
				$where['id_categoria']=$cat->id_categoria;
				$enlaces=$this->db->get_where('enlaces',$where);
				?>
				<?php foreach ($enlaces->result() as $e) : ?>
					
					<?php foreach ($enlaces_rol->result() as $er) : ?>
						<?php if($e->id_enlace==$er->id_enlace) :?>
							<li class="icn_edit_article">
								<a href="<?=$e->ruta_enlace?>"><?=$e->enlace?></a>
							</li>
							<?php break;?>
						<?php endif ?>
					<?php endforeach;?>
					
				<?php endforeach;?>
			</ul>
		<?php endforeach;?>

		<h3>Usuarios</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">Agregar nuevo usuario</a></li>
			<li class="icn_view_users"><a href="#">Ver usuarios</a></li>
			<li class="icn_profile"><a href="#">Tu perfil</a></li>
		</ul>
		<h3>Administracion</h3>
		<ul class="toggle">
			<li class="icn_settings"><a href="#">Opciones</a></li>
			<li class="icn_security"><a href="#">Seguridad</a></li>
			<li class="icn_jump_back"><a href="acceso/logout">Salir</a></li>
		</ul>
		
		<footer>
			<hr />
			<p><strong>Backend Proyecto Empleabilidad</strong></p>
<!-- 			<p>Theme by <a href="http://www.medialoot.com">MediaLoot</a></p> -->
		</footer>
	</aside><!-- end of sidebar -->
	