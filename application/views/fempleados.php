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
					 nextLabel:      'Siguiente',
					  titleClick:     true,
					  description:   true,
					  block:  		true, 
					  validate: 	true
				});


				$("#formemple").validate({
					errorLabelContainer: $("#erroresval"),
					rules:{
						nombres:"required",
						apaterno:"required",
						ci: {
							required: true,
							number: true
						},
						lugarnac:"required",
						fnac:"required",
						sexo:"required",
						domicilio:"required",
						email: {
							email:true
						}

					},
					messages:{
						nombres:"Por favor escriba su nombre",
						apaterno:"Por favor escriba su Apellido Paterno ",
						ci: {
							required: "Por favor escriba su Cedula de Identidad",
							number: "Escriba una celula valida"
						},
						lugarnac:"Seleccione un lugar de nacimiento",
						fnac:"Por favor introduzca su fecha de nacimiento",
						sexo:"Por favor seleccione su sexo",
						domicilio:"Por favor escriba su domicilio",
						email: {
							email:"Instroduzca un correo valido"
						}
					}

				});
				$("#nv1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione un nivel de Educación"
  						}
					}					
				);
				$("#estab1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione un Establecimiento"
  						}
					}					
				);
				$("#cg1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione un Cargo"
  						}
					}					
				);
				$("#emp1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione una Empresa"
  						}
					}					
				);
				$("#tt1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Introduzca un valor para tiempo de trabajo"
  						}
					}					
				);
				$("#comp1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Selecciona una Competencia"
  						}
					}					
				);
				$("#inst1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione una Institutcion"
  						}
					}					
				);
				$("#fec1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Introduzca un valor para Fecha"
  						}
					}					
				);
				$("#intcurs1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione por lo menos un curso"
  						}
					}					
				);
				$("#intcarg1").rules("add", 
					{
 						required: true,
 						messages: {
  						 required: "Seleccione por lo menos un cargo"
  						}
					}					
				);



			//	$( ".fecha" ).datepicker();
				 
				$(".combo_dinamico a.nuevo").live("click",function() {
					$(this).next().show().focus();
					$(this).hide();
					return false;
				});
				
				$(document).on("keyup",".combo_dinamico input.nuevo", function(event){

					var code = (event.keyCode ?event.keyCode : event.which);

			
					var refinput=$(this);

					laurl=refinput.attr("data-href");
					valor=this.value;


					if ( code == 13 ) {

							console.log("entro aqui");

							datos={campo: valor}; 
							
							$.post(laurl, 
								    datos,
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


			
				$("#agregar,#borrar").click(function(){



						    step2="<div><select name=niveles[] data-placeholder='Nivel de Educación..'>";
						    step2+="<option/>";
							step2+="<?php foreach ($niveles->result() as $nivel): ?>";
							step2+="<option value=<?=$nivel->id_nivel_formacion?>><?=$nivel->nivel_formacion?></option>";
							step2+="<?php endforeach ?>";
						    step2+="</select>";
							step2+="<div class=combo_dinamico>";
							step2+="<select name=establecimientos[] data-placeholder=Establecimiento>";
							step2+="<option/>";
							step2+="<?php foreach ($establecimientos->result() as $e): ?>";
							step2+="<option value=<?=$e->id_establecimiento?>><?=$e->establecimiento?></option>";
							step2+="<?php endforeach ?>";
							step2+="</select>";
							step2+="<a href=# class=nuevo>nuevo</a>";
							step2+="<input type=text  class=nuevo style=display:none  placeholder='Escriba y Presione Enter' data-href='establecimientos/agregar' focus/>";
							step2+="</div>";
							step2+="<input type=text placeholder='Titulo obtenido' name=titulos_obtenidos[] />";
							step2+="<input type=text placeholder='Tiempo de estudio' name=tiempos_estudio[] />";
							step2+="</div>";

							  step3="<div>";
							 		 step3+="<div class=combo_dinamico>";					
										 step3+="<select name=cargos[]  data-placeholder='Cargos..'>";
											 step3+="<option/>";
											 step3+="<?php foreach ($cargos->result() as $cargo): ?>";
												 step3+="<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>";
											 step3+="<?php endforeach ?>";
										 step3+="</select>";
										 step3+="<a href=# class=nuevo>nuevo</a>";
										 step3+="<input type=text  class=nuevo style=display:none  placeholder='Escriba y Presione Enter' data-href='cargos/agregar' focus/>";
									 step3+="</div>";
									 step3+="<div class=combo_dinamico>";	
										 step3+="<select name=sucursales[] data-placeholder='Empresas..'>";
											 step3+="<option />";
											 step3+="<?php foreach ($sucursales->result() as $suc): ?>";
												 step3+="<option value=<?=$suc->id_sucursal?>><?=$suc->sucursal?></option>";
											 step3+="<?php endforeach ?>";
										 step3+="</select>";
										 step3+="<a href=# class=nuevo>nuevo</a>";
										 step3+="<input type=text  class=nuevo style=display:none placeholder='Escriba y Presione Enter' data-href='empresas/agregar' focus/>";
									 step3+="</div>";
									 step3+="<input type=number placeholder='Tiempo de Trabajo' name=tiempos_trabajo[] /> en años";
							    step3+="</div>";



				step4="<div>";
					step4+="<div class=combo_dinamico>";
						step4+="<select name=competencias[] data-placeholder=Competencias..>";
						step4+="<option></option>";
							step4+="<?php foreach ($compentencias->result() as $compet): ?>";
								step4+="<option value=<?=$compet->id_competencia?>><?=$compet->competencia?></option>";
							step4+="<?php endforeach ?>";
						step4+="</select>";
						step4+="<a href=# class=nuevo>nuevo</a>";
						step4+="<input type=text  class=nuevo style=display:none placeholder='Escriba y Presione Enter' data-href='competencias/agregar' focus/>";
					step4+="</div>";
					step4+="<div class=combo_dinamico>";
						step4+="<select name=instituciones[] data-placeholder=Instituciones..>";
						step4+="<option></option>";
							step4+="<?php foreach ($instituciones->result() as $insti): ?>";
								step4+="<option value=<?=$insti->id_institucion?>><?=$insti->institucion?></option>";
							step4+="<?php endforeach ?>";
						step4+="</select>";
						step4+="<a href=# class=nuevo>nuevo</a>";
						step4+="<input type=text  class=nuevo style=display:none placeholder='Escriba y Presione Enter' data-href='instituciones/agregar' focus/>";
					step4+="</div>";
					step4+="<input type=text class=fecha placeholder=Fecha  name=fechas_competencias[] />";
				step4+="</div>";



					if(this.value=="Agregar"){
						padre=$(this).parent();
						console.log(padre.attr("id"));

						   if(padre.children("div").length<=6){
						    	if(padre.attr("id")=="formemple-step-1"){
									padre.append(step2);
								}else if(padre.attr("id")=="formemple-step-2"){
									padre.append(step3);
								}else if(padre.attr("id")=="formemple-step-3"){
									padre.append(step4);
								}
							padre.children("div:last").find("select").chosen({no_results_text: "No hay resultados"});
							padre.children("div:last").find(".fecha").datepicker({
																		changeMonth: true,
																		changeYear: true,
																	 	minDate: "-40Y",
																	 	defaultDate:"08/02/1985"
																	 //	maxDate: "+20Y" 
																	});
						}
					}else{
						if(padre.children("div").length>1){

							padre.children("div:last").remove();
						}
					}

				});

				/*####inicio de los componentes##########*/
				$(".filtrable").chosen({no_results_text: "No hay resultados"});
				$(".combo_dinamico  select,.chzn-select").chosen({no_results_text: "No hay resultados"});
		
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
	
		<form id="formemple" action="empleados/guardar" method="post" class="wizard">
			<div id="erroresval" style="padding:5px; overflow:hidden;display:none"></div>
			<fieldset title="Paso 1">
				<legend>Inicio</legend>
				<div class="grupo">
				  <h3>Datos Personales</h3>
				  <input type="text" name="nombres" placeholder="Nombres" />
				  <input type="text" name="apaterno" placeholder="Ap. Paterno" />
				  <input type="text" name="amaterno"  placeholder="Ap. Materno" />
				  <br />
				  <input type="text" name="ci"  placeholder="Cedula de Identidad"/>	
				  <select name="extension" style="width:100px" class="filtrable">
				  	<?php foreach ($dptos->result() as $dpto):?>
				  		<option value=<?=$dpto->id_departamento?>><?=$dpto->sigla?></option>
				  	<?php endforeach; ?>
				  </select>			
 				  <input type="text" name="nit" placeholder="NIT" />	
				 
				   <br />
				   
				   <input type="text" name="fnac"  placeholder="Fecha de Nacimiento" class="fecha"/>	
				    <select name="lugarnac" style="width:200px" class="filtrable"  data-placeholder="Lugar de Nacimiento..">
				    <option></option>
				  	<?php foreach ($dptos->result() as $dpto):?>
				  		<option value=<?=$dpto->id_departamento?>><?=$dpto->departamento?></option>
				  	<?php endforeach; ?>
				  </select>			
				   <select name="sexo" style="width:80px" class="filtrable" data-placeholder="Sexo..">
				   	 <option></option>
				  	<option value="M">M</option>
				  	<option value="F">F</option>
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
			<fieldset title="Paso 2">
				<legend>Estudio Realizados</legend>
				<input type="button" value="Agregar" id="agregar" />
				<input type="button" value="Borrar" id="borrar" />
				<div>					
					<select name="niveles[]" id="nv1" class="chzn-select" data-placeholder="Nivel de Educación..">
						<option></option>
						<?php foreach ($niveles->result() as $nivel): ?>
							<option value=<?=$nivel->id_nivel_formacion?>><?=$nivel->nivel_formacion?></option>
						<?php endforeach ?>
					</select>
					<div class="combo_dinamico">
						<select name="establecimientos[]" id="estab1" data-placeholder="Establecimiento..">
							<option></option>
							<?php foreach ($establecimientos->result() as $e): ?>
								<option value=<?=$e->id_establecimiento?>><?=$e->establecimiento?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
						style="display:none" data-href="<?=base_url('establecimientos/agregar')?>" focus/>
					</div>

					<input type="text" placeholder="Titulo obtenido" name="titulos_obtenidos[]" />
					<input type="text" placeholder="Tiempo de estudio" name="tiempos_estudio[]" />
				</div>			 
			</fieldset>
			<fieldset title="Paso 3">
			  <legend>Experiencia de Trabajo</legend>
			  <input type="button" value="Agregar" id="agregar" />
			  <input type="button" value="Borrar" id="borrar" />
			  <div>
			 		<div class="combo_dinamico">					
						<select name="cargos[]" id="cg1" data-placeholder="Cargos..">
							<option></option>
							<?php foreach ($cargos->result() as $cargo): ?>
								<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
						style="display:none" data-href="<?=base_url('cargos/agregar')?>" focus/>
					</div>
					<div class="combo_dinamico">	
						<select name="sucursales[]" id="emp1"  data-placeholder="Empresas..">
							<option></option>
							<?php foreach ($sucursales->result() as $suc): ?>
								<option value=<?=$suc->id_empresa?>><?=$suc->sucursal?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
						style="display:none" data-href="<?=base_url('empresas/agregar')?>" focus/>
					</div>
					<input type="number" placeholder="Tiempo de Trabajo" name="tiempos_trabajo[]" id="tt1" /> en años
			   </div>
			</fieldset>
			<fieldset id="step4" title="Paso 4">
			  <legend>Compentencias certificadas</legend>
			   <input type="button" value="Agregar" id="agregar" />
			   <input type="button" value="Borrar" id="borrar" />
			 	<div>
					<div class="combo_dinamico">
						<select name="competencias[]" id="comp1" data-placeholder="Competencias..">
						<option></option>
							<?php foreach ($compentencias->result() as $compet): ?>
								<option value=<?=$compet->id_competencia?>><?=$compet->competencia?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
						style="display:none" data-href="<?=base_url('competencias/agregar')?>" focus/>
					</div>
					<div class="combo_dinamico">
						<select name="instituciones[]" id="inst1" data-placeholder="Instituciones..">
						<option></option>
							<?php foreach ($instituciones->result() as $insti): ?>
								<option value=<?=$insti->id_institucion?>><?=$insti->institucion?></option>
							<?php endforeach ?>
						</select>
						<a href="#" class="nuevo">nuevo</a>
						<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
						style="display:none" data-href="<?=base_url('instituciones/agregar')?>" focus/>
					</div>
					<input type="text" class="fecha" placeholder="Fecha" name="fechas_competencias[]" id="fec1" />
				</div>
			</fieldset>
		    <fieldset id="step5" title="Paso 5">
			  <legend>Intereses Generales</legend>
			   <div style="float:right;width:440px">
              		<textarea placeholder="Observaciones.." name="observacion"></textarea>
              </div>
				<div class="combo_dinamico">
					<h3>Desea Trabajar Como :</h3>
					<select data-placeholder="Escoge los cargos" name="interes_cargos[]" id="intcarg1" class="filtrable" style="width:500px;height:auto;" multiple>
		             		<?php foreach ($cargos->result() as $cargo): ?>
								<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>
							<?php endforeach ?>
		            </select>
		            <a href="#" class="nuevo">nuevo</a>
					<input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
					style="display:none" data-href="<?=base_url('cargos/agregar')?>" focus/>
              </div>
              <div class="combo_dinamico">
					<h3>Desea Participar en Cursos de :</h3>
					 <select data-placeholder="Escoge los cursos" name="interes_cursos[]" id="intcurs1" class="filtrable" style="width:500px;height:auto;" multiple>
		            	<?php foreach ($cursos_capacitacion->result() as $cc): ?>
								<option value=<?=$cc->id_curso_capacitacion?>><?=$cc->curso_capacitacion?></option>
						<?php endforeach ?>
     	             </select>

		              <a href="#" class="nuevo">nuevo</a>
					 <input type="text" placeholder="Escriba y Presione Enter"  class="nuevo" 
						style="display:none" data-href="<?=base_url('cursos/agregar')?>" focus/>
              </div>
             
			</fieldset>
			<input type="submit" class="finish" value="Finalizar registro!" />
		</form>
	</body>
</html>


