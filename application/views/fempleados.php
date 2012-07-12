<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">



		
		<link type="text/css" rel="stylesheet" href="<?=base_url('css/smoothness/jquery-ui-1.8.21.custom.css')?>"/> 
		
		<!-- <link type="text/css" rel="stylesheet" href="<?=base_url('css/style.css')?>"/>  -->
		<script type="text/javascript" src="<?=base_url('js/jquery.validate.min.js')?>"></script>
		<link type="text/css" rel="stylesheet" href="<?=base_url('css/jquery.stepy.css')?>"/>
		<script type="text/javascript" src="<?=base_url('js/jquery.stepy.min.js')?>"></script>

		 <link type="text/css" rel="stylesheet" href="<?=base_url('css/wizard.css')?>"/> 
		 <link rel="stylesheet" href="<?=base_url('chosen/chosen.css')?>" />
	       <script src="<?=base_url('chosen/chosen.jquery.js')?>" type="text/javascript"></script>
	       
		<script>
			$(function(){
				$('#formemple').stepy({
					 backLabel:      'Anterior',
					 nextLabel:      'Siguiente'
				});
			//	$( ".fecha" ).datepicker();
				 
				$(".combo_dinamico a.nuevo").live("click",function() {
					$(this).next().show().focus();
					$(this).hide();
					return false;
				});
				
				$(document).on("keyup",".combo_dinamico input.nuevo", function(event){

					var code = (event.keyCode ?event.keyCode : event.which);

			
					var refinput=$(this);

					if ( code == 13 ) {

							console.log("entro aqui");
								
							$.post('<?=base_url("establecimientos/agregar")?>', 
								   {"establecimiento": this.value} ,
								   function(data) {
						
								   	newitem="<option value="+data+" selected>"+refinput.val();
						
  									refinput.parent().children("select").append(newitem);
  									
									refinput.parent().children("select").trigger("liszt:updated");
  								
  									refinput.val('').hide();
  									$(".combo_dinamico a").show();
								});				
						event.preventDefault();
     						
   					}else if(code == 27){
   						$(this).hide();
						$(this).prev().show();					 			
   					}
				}); 


				$(".combo_dinamico  select,.chzn-select").chosen({no_results_text: "No hay resultados"});
				$("#agregar,#borrar").click(function(){



						    step2="<div><select name=niveles data-placeholder='Nivel de Educación..'>";
							step2+="<?php foreach ($niveles->result() as $nivel): ?>";
							step2+="<option/>";
							step2+="<option value=<?=$nivel->id_nivel_formacion?>><?=$nivel->nivel_formacion?></option>";
							step2+="<?php endforeach ?>";
						    step2+="</select>";
							step2+="<div class=combo_dinamico>";
							step2+="<select name=establecimiento data-placeholder=Establecimiento>";
							step2+="<option/>";
							step2+="<?php foreach ($establecimientos->result() as $e): ?>";
							step2+="<option value=<?=$e->id_establecimiento?>><?=$e->establecimiento?></option>";
							step2+="<?php endforeach ?>";
							step2+="</select>";
							step2+="<a href=# class=nuevo>nuevo</a>";
							step2+="<input type=text  class=nuevo style=display:none focus/>";
							step2+="</div>";
							step2+="<input type=text placeholder=Titulo obtenido />";
							step2+="<input type=text placeholder=Tiempo de estudio />";
							step2+="</div>";

 			 // step2+="<div>";
			 	// 	step2+=<div class=combo_dinamico>";					
					// 	step2+=<select name=cargos id=>";
					// 		step2+=<?php foreach ($cargos->result() as $cargo): ?>";
					// 			step2+=<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>";
					// 		step2+=<?php endforeach ?>";
					// 	step2+=</select>";
					// 	step2+=step2+=<a href=# class=nuevo>nuevo</a>";
					// 	<input type=text  class=nuevo style=display:none focus/>";";
					// step2+=</div>";
					// step2+=<div class=combo_dinamico>	";
					// 	step2+=<select name=sucursales id=>";
					// 		step2+=<?php foreach ($sucursales->result() as $suc): ?>";
					// 			step2+=step2+=<option value=<?=$suc->id_sucursal?>><?=$suc->sucursal?></option>";
					// 		step2+=<?php endforeach ?>";
					// 	step2+=</select>";
					// 	step2+=<a href=# class=nuevo>nuevo</a>";
					// 	step2+=<input type=text  class=nuevo style=display:none focus/>";
					// step2+=</div>";
					// step2+=<input type=number placeholder=Tiempo de Trabajo />";
			  //  step2+=</div>";




					if(this.value=="Agregar"){
						    if($(this).parent().children("div").length<=6){





							$(this).parent().append(step2);
							$(this).parent().children("div:last").find("select").chosen({no_results_text: "No hay resultados"});
						}
					}else{
						if($(this).parent().children("div").length>1){

							$(this).parent().children("div:last").remove();
						}
					}

				});

				/*####inicio de los componentes##########*/
				$(".filtrable").chosen({no_results_text: "No hay resultados"});

				$(".fecha").datepicker({
					changeMonth: true,
					changeYear: true,
				 	minDate: "-40Y",
				 	defaultDate:"08/02/1985"
				 //	maxDate: "+20Y" 
				});
				$.datepicker.setDefaults($.datepicker.regional['es']);
			})
				
		</script>	
	</head>
	<body>
		<?=base_url();?>
		<form id="formemple" action="#" class="wizard">
			<fieldset title="Paso 1" id="step1">
				<legend>Inicio</legend>
				<div class="grupo">
				  <h3>Datos Personales</h3>
				  <input type="text" name="nombres" placeholder="Nombres"  />
				  <input type="text" name="apterno" placeholder="Ap. Paterno" />
				  <input type="text" name="amaterno"  placeholder="Ap. Materno" />
				  <br />
				  <input type="text" name="ci"  placeholder="Cedula de Identidad" />	
				  <select name="extension" style="width:100px" class="filtrable">
				  	<?php foreach ($dptos->result() as $dpto):?>
				  		<option value=<?=$dpto->id_departamento?>><?=$dpto->sigla?></option>
				  	<?php endforeach; ?>
				  </select>			
 				  <input type="text" name="nit" placeholder="NIT" />	
				 
				   <br />
				   <input type="text" name="fnac"  placeholder="Fecha de Nacimiento" class="fecha"/>			
				   <select name="sexo" style="width:50px" class="filtrable">
				  	<option value="TJA">M</option>
				  	<option value="TJA">F</option>
				  </select>	
				</div>		
				<div class="grupo">
				  <h3>Direccion</h3>
				 	  <input type="text"  placeholder="Domicilio" name="domicilio" />
				 	  <input type="tel"  placeholder="Telefono" name="telefono" />
					  <input type="text"  placeholder="Fax" name="fax" />
				  	  <input type="tel"  placeholder="Celular" name="celular" />
				 	  <input type="email"  placeholder="Email" name="email" />	
				 	  <input type="text" placeholder="Pagina Web" name="web" />				 
				</div>		 
			</fieldset>
			<fieldset title="Paso 2" id="step2">
				<legend>Estudio Realizados</legend>
				<input type="button" value="Agregar" id="agregar" />
				<input type="button" value="Borrar" id="borrar" />
				<div>					
					<select name="niveles" class="chzn-select" data-placeholder="Nivel de Educación..">
						<option></option>
						<?php foreach ($niveles->result() as $nivel): ?>
							<option value=<?=$nivel->id_nivel_formacion?>><?=$nivel->nivel_formacion?></option>
						<?php endforeach ?>
					</select>
					<div class="combo_dinamico">
						<select name="establecimiento" data-placeholder="Establecimiento..">
							<option></option>
							<?php foreach ($establecimientos->result() as $e): ?>
								<option value=<?=$e->id_establecimiento?>><?=$e->establecimiento?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" style="display:none" focus/>
					</div>

					<input type="text" placeholder="Titulo obtenido" />
					<input type="text" placeholder="Tiempo de estudio" />
				</div>			 
			</fieldset>
			<fieldset title="Paso 3" id="step3">
			  <legend>Experiencia de Trabajo</legend>
			  <input type="button" value="Agregar" id="agregar" />
			  <input type="button" value="Borrar" id="borrar" />
			  <div>
			 		<div class="combo_dinamico">					
						<select name="cargos" id="">
							<?php foreach ($cargos->result() as $cargo): ?>
								<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text"  class="nuevo" style="display:none" focus/>
					</div>
					<div class="combo_dinamico">	
						<select name="sucursales" id="">
							<?php foreach ($sucursales->result() as $suc): ?>
								<option value=<?=$suc->id_sucursal?>><?=$suc->sucursal?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text"  class="nuevo" style="display:none" focus/>
					</div>
					<input type="number" placeholder="Tiempo de Trabajo" />
			   </div>
			</fieldset>
			<fieldset id="step4" title="Paso 4">
			  <legend>Compentencias</legend>
			 	<div>
					<span>+</span><span>-</span>
					<select name="" id="">
						<?php foreach ($compentencias->result() as $compet): ?>
							<option value=<?=$compet->id_competencia?>><?=$compet->competencia?></option>
						<?php endforeach ?>
					</select>
					<select name="" id="">
						<?php foreach ($instituciones->result() as $insti): ?>
							<option value=<?=$insti->id_institucion?>><?=$insti->institucion?></option>
						<?php endforeach ?>
					</select>
					<input type="number" placeholder="Tiempo de Trabajo" />
				</div>
			</fieldset>
		    <fieldset id="step5" title="Paso 5">
			  <legend>Intereses Generales</legend>
			  <label for="">prueba 1</label><input type="text" name="" value="" id=""/>			  		 
			</fieldset>
			<input type="submit" class="finish" value="Finish!" />
		</form>
	</body>
</html>


