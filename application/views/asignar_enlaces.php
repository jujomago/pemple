

<article class="module width_full">
<form action="enlaces/guardar_enlaces_rol" method="post">
			<header><h3>Asignar modulos</h3></header>
				<div class="module_content">
						<fieldset>
							<label>Seleccione los modulos</label>
							<select name="enlaces[]" id="enlaces" class="filtrable" multiple style="width:74%;height:auto;" >
							<?php foreach ($enlaces->result() as $e): ?>
								

								<?php $sw=0;?>
								<?php foreach ($enlaces_marcados->result() as $em): ?>
									<?php if($e->id_enlace==$em->id_enlace) :?>
										<option value="<?=$e->id_enlace?>" selected><?=$e->enlace?></option>
										<?php 
										$sw=1;
										break;?>
									<?php endif;?>									
								<?php endforeach;?>
								<?php if($sw==0):?>
									<option value="<?=$e->id_enlace?>"><?=$e->enlace?></option>
								<?php endif;?>	
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
		<input type="hidden" name="id_rol" value="<?=$id_rol?>" />
</form>
</article><!-- end of post new article -->
 <script type="text/javascript">
	$(".filtrable").chosen({no_results_text: "No hay resultados"});
 </script>