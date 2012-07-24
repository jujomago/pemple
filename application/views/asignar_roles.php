<article class="module width_full">
<form action="usuarios/guardar_roles_usuario" method="post">
			<header><h3>Asignar roles</h3></header>
				<div class="module_content">
						<fieldset>
							<label>Seleccione los roles</label>
							<select name="roles[]" id="roles" class="filtrable" multiple style="width:74%;height:auto;" >
							<?php foreach ($roles->result() as $r):?>
									
									<?php $sw=0;?>
								<?php foreach ($roles_marcados->result() as $rm): ?>
									<?php if($r->id_rol==$rm->id_rol) :?>
										<option value="<?=$r->id_rol?>" selected><?=$r->rol?></option>
										<?php 
										$sw=1;
										break;?>
									<?php endif;?>									
								<?php endforeach;?>
								<?php if($sw==0):?>
									<option value="<?=$r->id_rol?>"><?=$r->rol?></option>
								<?php endif;?>	



							<?php endforeach;?>
							</select>						
						</fieldset>						
				</div>
			<footer>
				<div class="submit_link">
					<input type="submit" value="Guadar" class="alt_btn">
					<input type="reset" value="Cancelar" />
				</div>
			</footer>
		<input type="hidden" name="id_usuario" value="<?=$id_usuario?>" />
</form>
</article><!-- end of post new article -->
 <script type="text/javascript">
	$(".filtrable").chosen({no_results_text: "No hay resultados"});
	$("input[type=reset]").click(function(event){
		history.back();
		return null;

	});
 </script>