<article class="module width_full">
		<form action="usuarios/guardar_usuario" method="post">
			<header><h3>Crear Usuario para <?=$persona->nombres." ".$persona->paterno?></h3></header>
				<div class="module_content">
						<fieldset>
							<label>Usuario</label>
							<input type="text" name="usuario">
							</fieldset><fieldset>
							<label>Clave</label>
							<input type="password" name="password">
							</fieldset>
							<fieldset>
							<label>Recordatorio</label>
							<input type="text" name="recordatorio">
							</fieldset>
							<div class="clear"></div>
							<input type="hidden" name="id_persona" value="<?=$persona->id_persona?>">
				</div>
			<footer>
				<div class="submit_link">
					<input type="submit" value="Guardar" class="alt_btn">
					<input type="reset" value="Cancelar">
				</div>
			</footer>
		</form>
		</article><!-- end of post new article -->
 <script type="text/javascript">
	$(".filtrable").chosen({no_results_text: "No hay resultados"});
 </script>