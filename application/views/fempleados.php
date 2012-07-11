<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Esta es uan</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width">

		<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
		<!--script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>

	
		<link type="text/css" rel="stylesheet" href="<?=base_url('css/niebla/niebla.css')?>"/> 
		-->
		<link type="text/css" rel="stylesheet" href="<?=base_url('css/style.css')?>"/> 
		<script type="text/javascript" src="<?=base_url('js/jquery.validate.min.js')?>"></script>
		<link type="text/css" rel="stylesheet" href="<?=base_url('css/jquery.stepy.css')?>"/>
		<script type="text/javascript" src="<?=base_url('js/jquery.stepy.min.js')?>"></script>
	
		<style type="text/css">

	/*		a#coffee {
				background: url('img/coffee.png') 6px 2px no-repeat #DC5; border: 1px solid #D9C640; color: #FFF; display: block; float: right; font-size: 10px; font-weight: bold; letter-spacing: .9px; margin-right: 9px; padding: 4px 5px 4px 26px; text-decoration: none;
				-khtml-border-radius: 4px; -moz-border-radius: 4px; -opera-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px;
			}

			a#coffee:hover { text-decoration: underline; }
			
			span.comment { color: #999; font: 12px monospace; letter-spacing: .1px; margin-bottom: 7px; margin-top: 5px; }
			
			div#content { background-color: #FFF; border: 1px solid #DEDEDE; box-shadow: 0 1px 3px rgba(100, 100, 100, 0.4); margin: 0 auto; padding: 15px; width: 1100px; min-height: 510px; }
			
			div.description { color: #555; letter-spacing: .1px; margin-bottom: 15px; margin-top: 10px; text-align: left; }
			
			div.description-code { color: #555; letter-spacing: .1px; margin-bottom: 10px; text-indent: 7px; }

			div#menu-feature { color: #AAA; float: left; margin-bottom: 20px; }
			div#menu-feature a { float: left; width: 120px }
			div#menu-feature a.disabled { color: #999; cursor: default; }
			div#menu-feature a.selected { color: #2C8CBD; cursor: default; font-weight: bold; }

			div#footer { clear: both; height: 25px; margin-top: 5px; width: 100%; }
			div#footer div#copy { margin: 0 auto; text-align: center; width: 1100px; }
			
			div#header { margin: 0 auto; padding-left: 20px; width: 1130px; }
			
			div#menu { color: #AB9927; font: bold 14px 'Lucida Grande', 'Helvetica', 'Times New Roman', serif; text-shadow: 1px 1px 1px #FFF; text-transform: uppercase; }
			
			div#menu a { color: #EA9C00; font: bold 10px verdana; letter-spacing: .9px; text-decoration: none; }
			div#menu a:hover { color: #DC5; font-weight: bold; letter-spacing: .9px; text-decoration: underline; }
			
			div.session { clear: both;  font: bold 13px verdana; border-bottom: 1px solid #EFEFEF; color: #444; letter-spacing: .7px; margin-bottom: 18px; margin-top: 24px; text-align: left; }
			div.session-first { clear: both; font: bold 13px verdana; border-bottom: 1px solid #EFEFEF; color: #444; letter-spacing: .7px; margin-bottom: 18px; text-align: left; }
			div.session-mini { font: bold 10px verdana; color: #444; letter-spacing: .7px; margin-top: 17px; }
			
			div.source { background: #F8F8FF; border: 1px solid #EFEFEF; border-left: 3px solid #CCC; clear: both; color: #444; font: 12px monospace; border-radius: 2px; letter-spacing: .1px; margin-bottom: 7px; margin-top: 15px; padding: 7px; width: 1081px; -khtml-border-radius: 2px; -moz-border-radius: 2px; -opera-border-radius: 2px; -webkit-border-radius: 2px; }
			div.source div.comment { color: #777; font: 9px verdana; letter-spacing: 0.4px; margin-bottom: 9px; text-align: left; }
			
			div#title { font: bold 17px verdana; color: #269; letter-spacing: .7px; margin-bottom: 10px; text-align: left; }
			div#title span { color: #777; font: 10px verdana; }
			
			span#version { color: #777; font: 10px verdana; }*/

			/* Custom */
			form#target fieldset img { margin-top: 10px; }

			div#title-target { height: 25px;  margin-left: 215px; margin-top: 2px; }
			div#title-target ul.stepy-titles li { font-size: 12px; padding: 4px; }
			div#title-target ul.stepy-titles li:hover { color: #BBB; }
			div#title-target ul.stepy-titles li.current-step { color: #369; }

			/* Example of dynamic class name */
			p.default-buttons { margin-top: 30px; }

			fieldset > div{
			/*	height:50px;*/
				background:#eee;
				margin:5px 0;
				padding:4px;
			}
				fieldset > div *{
					vertical-align: top;
				}
			fieldset .combo_dinamico{
				display:inline-block;
			}
			fieldset .combo_dinamico .nuevo{
				display: block;
				margin-top: 5px;
			}
		</style>
		 
		   <link rel="stylesheet" href="<?=base_url('chosen/chosen.css')?>" />
	       <script src="<?=base_url('chosen/chosen.jquery.js')?>" type="text/javascript"></script>
	       
		<script>
			$(function(){
				$('#formemple').stepy({
					 backLabel:      'Anterior',
					 nextLabel:      'Siguiente'
				});
				//$( ".fecha" ).datepicker();
				 
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

 			 step2+="<div>";
			 		step2+=<div class=combo_dinamico>";					
						step2+=<select name=cargos id=>";
							step2+=<?php foreach ($cargos->result() as $cargo): ?>";
								step2+=<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>";
							step2+=<?php endforeach ?>";
						step2+=</select>";
						step2+=step2+=<a href=# class=nuevo>nuevo</a>";
						<input type=text  class=nuevo style=display:none focus/>";";
					step2+=</div>";
					step2+=<div class=combo_dinamico>	";
						step2+=<select name=sucursales id=>";
							step2+=<?php foreach ($sucursales->result() as $suc): ?>";
								step2+=step2+=<option value=<?=$suc->id_sucursal?>><?=$suc->sucursal?></option>";
							step2+=<?php endforeach ?>";
						step2+=</select>";
						step2+=<a href=# class=nuevo>nuevo</a>";
						step2+=<input type=text  class=nuevo style=display:none focus/>";
					step2+=</div>";
					step2+=<input type=number placeholder=Tiempo de Trabajo />";
			   step2+=</div>";




					if(this.value=="Agregar"){
						    if($(this).parent().children("div").length<=6){





							$(this).parent().append(newrow);
							$(this).parent().children("div:last").find("select").chosen({no_results_text: "No hay resultados"});
						}
					}else{
						if($(this).parent().children("div").length>1){

							$(this).parent().children("div:last").remove();
						}
					}

				});
			})
				
		</script>	
	</head>
	<body>
		<?=base_url();?>
		<form id="formemple" action="#">
			<fieldset title="Paso 1" id="step1">
				<legend>Inicio</legend>
				<div class="grupo">
				  <h3>Datos Personales</h3>
				  <input type="text" name="nombres" placeholder="Nombres"  />
				  <input type="text" name="apterno" placeholder="Ap. Paterno" />
				  <input type="text" name="amaterno"  placeholder="Ap. Materno" />
				   <input type="text" name="ci"  placeholder="Cedula de Identidad" />	
				  <input type="date" name="fnac"  placeholder="Fecha de Nacimiento" class="fecha"/>	
				  <select name="extension">
				  	<?php foreach ($dptos->result() as $dpto):?>
				  		<option value=<?=$dpto->id_departamento?>><?=$dpto->sigla?></option>
				  	<?php endforeach; ?>
				  </select>				 
				  <input type="text" name="nit" placeholder="NIT" />				
				   <select name="sexo">
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
						<input type="text"  class="nuevo" style="display:none" focus/>
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


