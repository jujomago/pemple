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
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>

		<link type="text/css" rel="stylesheet" href="<?=base_url('css/jquery.stepy.css')?>"/>
		<link type="text/css" rel="stylesheet" href="<?=base_url('css/ui-lightness/uilight.css')?>"/>

		<script type="text/javascript" src="<?=base_url('js/jquery.validate.min.js')?>"></script>

		<script type="text/javascript" src="<?=base_url('js/jquery.stepy.min.js')?>"></script>
		<!--script type="text/javascript" src="<?=base_url('js/script.js')?>"></script-->
		
		<style type="text/css">
			/* This CSS does not belong to the plugin. */
			body { background: url('http://localhost/ci/img/background.gif'); font: normal 11px verdana; }
			
			a { color: #2C8CBD; text-decoration: none; }
			a:hover { color: #48A5D4; }
			
			a#coffee {
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
			
			span#version { color: #777; font: 10px verdana; }

			/* Custom */
			form#target fieldset img { margin-top: 10px; }

			div#title-target { height: 25px;  margin-left: 215px; margin-top: 2px; }
			div#title-target ul.stepy-titles li { font-size: 12px; padding: 4px; }
			div#title-target ul.stepy-titles li:hover { color: #BBB; }
			div#title-target ul.stepy-titles li.current-step { color: #369; }

			/* Example of dynamic class name */
			p.default-buttons { margin-top: 30px; }
			fieldset > div{
				height:50px;
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
				$('#SignupForm').stepy({
					 backLabel:      'Anterior',
					 nextLabel:      'Siguiente'
				});
				$( ".fecha" ).datepicker();
				 
				$(".combo_dinamico a.nuevo").click(function() {
					$(this).next().show().focus();
					$(this).hide();
					return false;
				});
				$(".combo_dinamico input.nuevo").keypress(function(event) {
					if ( event.which == 13 ) {

							$.post('<?=base_url("establecimientos/agregar")?>', 
								   {"establecimiento": this.value} ,
								   function(data) {
						
								   	newitem="<option value="+data+">"+$("input.nuevo").val();
  									$(".combo_dinamico select").append(newitem);
  									$(".combo_dinamico select option:last").attr("selected", "selected");
  									
  									$(".combo_dinamico  select").trigger("liszt:updated");
  								
  									$("input.nuevo").val('').hide();
  									$(".combo_dinamico a").show();
								});				
						
     						event.preventDefault();
   					}
				});


				//$(".chzn-select").chosen(); 
				agregar_combos($(".chzn-select"));

				agregar_combos($(".combo_dinamico  select"));
				$("#agregar,#borrar").click(function(){
					if(this.value=="Agregar"){
						elclon=$(this).nextAll("div").clone();

						elclon.find("div.chzn-container-single").remove();
						elclon.find("select").show().css("border","1px solid red");
				
						$(elclon).children("select").each(function(index) {
							console.log($(this));
 						 	agregar_combos($(this));
						});
									console.log(elclon);
					    elclon.appendTo($(this).parent());
					}

				});
			})
			function agregar_combos(elcombo){
				//alert("dad");
				elcombo.chosen();


			}
				
		</script>	
	
  			<script type="text/javascript">$(".chzn-select-deselect").chosen({allow_single_deselect:true}); </script>
			
	</head>
	<body>
		<?=base_url();?>
		<form id="SignupForm" action="#">
			<fieldset title="Paso 1">
				<legend>Inicio</legend>
				<div class="grupo">
				  <h3>Datos Personales</h3>
				  <input type="text" name="nombres" placeholder="Nombres"  />
				  <input type="text" name="apterno" placeholder="Ap. Paterno" />
				  <input type="text" name="amaterno"  placeholder="Ap. Materno" />
				   <input type="number" name="ci"  placeholder="Cedula de Identidad" />	
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
			<fieldset title="Paso 2">
				<legend>Estudio Realizados</legend>
				<input type="button" value="Agregar" id="agregar" />
				<input type="button" value="Borrar" id="borrar" />
				<div>					
					<select name="" id="" class="chzn-select" style="width:100px;">
						<?php foreach ($niveles->result() as $nivel): ?>
							<option value=<?=$nivel->id_nivel_formacion?>><?=$nivel->nivel_formacion?></option>
						<?php endforeach ?>
					</select>
					<div class="combo_dinamico">
						<select name="establecimiento" style="width:220px;">
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
			<fieldset title="Paso 3">
			  <legend>Experiencia de Trabajo</legend>
			 	<div>
					<span>+</span><span>-</span>
					<select name="" id="">
						<?php foreach ($cargos->result() as $cargo): ?>
							<option value=<?=$cargo->id_cargo?>><?=$cargo->cargo?></option>
						<?php endforeach ?>
					</select>
					<select name="" id="">
						<?php foreach ($sucursales->result() as $suc): ?>
							<option value=<?=$suc->id_sucursal?>><?=$suc->sucursal?></option>
						<?php endforeach ?>
					</select>
					<input type="number" placeholder="Tiempo de Trabajo" />
				</div>
			</fieldset>
			<fieldset id="" title="Paso 4">
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
		    <fieldset id="" title="Paso 5">
			  <legend>Intereses Generales</legend>
			  <label for="">prueba 1</label><input type="text" name="" value="" id=""/>			  		 
			</fieldset>
			<input type="submit" class="finish" value="Finish!" />
		</form>
	</body>
</html>


