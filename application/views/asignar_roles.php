
<article class="module width_full">
<form action="usuarios/guardar_roles_usuario" method="post">
			<header><h3>Asignar roles</h3></header>
				<div class="module_content">
						<fieldset>
							<label>Seleccione los roles</label>
							<select name="roles[]" id="roles" class="filtrable" multiple style="width:74%;height:auto;" >
							<?php foreach ($roles->result() as $r):?>
									<option value="<?=$r->id_rol?>"><?=$r->rol?></option>
							<?php endforeach;?>
							</select>						
						</fieldset>						
				</div>
			<footer>
				<div class="submit_link">
					<input type="submit" value="Guadar" class="alt_btn">
					<input type="submit" value="Cancelar" />
				</div>
			</footer>
		<input type="hidden" name="id_usuario" value="<?=$id_usuario?>" />
</form>
</article><!-- end of post new article -->
 <script type="text/javascript">
	$(".filtrable").chosen({no_results_text: "No hay resultados"});
 </script>