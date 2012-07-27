<!doctype html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<base href="<?=base_url();?>"/>
	<title><?=$titulo?></title>
		
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
	<!--[if lt IE 9]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui.datepicker-es.js"></script>
	<link type="text/css" rel="stylesheet" href="css/smoothness/jquery-ui-1.8.21.custom.css"/> 

	<script src="js/hideshow.js" type="text/javascript"></script>
	<!--script src="js/jquery.tablesorter.min.js" type="text/javascript"></script-->
	<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
	
	
	<?php if (isset($css_extras)): ?> 
		<?php foreach($css_extras as $file): ?>
		    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
		<?php endforeach; ?>
	<?php endif;?>

	<?php if(isset($js_extras)): ?>
		<?php foreach($js_extras as $file): ?>
	   		 <script type="text/javascript" src="<?php echo $file; ?>"></script>
		<?php endforeach; ?>
	<?php endif;?>


<!-- INICIO LIBRERIAS DE GROCERY CRUD -->
<?php if(isset($js_files)): ?>
	<?php foreach($js_files as $file): ?>
	    <script src="<?php echo $file; ?>"></script>
	<?php endforeach; ?>
<?php endif;?>

<?php if(isset($css_files)): ?>
	<?php foreach($css_files as $file): ?>
	    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
	<?php endforeach; ?>
<?php endif;?>
<!-- FIN LIBRERIAS DE GROCERY CRUD -->

	<script type="text/javascript">
    	$(function(){

    		//When page loads...
			$(".tab_content").hide(); //Hide all content
			$("ul.tabs li:first").addClass("active").show(); //Activate first tab
			$(".tab_content:first").show(); //Show first tab content

			//On Click Event
			$("ul.tabs li").click(function() {

				$("ul.tabs li").removeClass("active"); //Remove any "active" class
				$(this).addClass("active"); //Add "active" class to selected tab
				$(".tab_content").hide(); //Hide all tab content

				var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
				$(activeTab).fadeIn(); //Fade in the active ID content
				return false;
			});

			// $(".tablesorter").tablesorter(); 

			   // $('.column').equalHeight();

		});
	</script>
</head>
<body>
	<header id="header">
		<hgroup>
		<!-- s -->
			<div id="banner">
				<h1>Elia Eudoxia
				</h1>	
				<h3>Sistema de informacion de Empleabilidad</h3>
			</div>
			<h2 class="section_title"><?=$titulo?></h2><div class="btn_view_site"><a href="http://www.medialoot.com">Ver el portal</a></div>
		</hgroup>
	</header> <!-- end of header bar -->
		<section id="secondary_bar">
		<div class="user">
			<p><?=$this->session->userdata('nombres')?> <?=$this->session->userdata('paterno')?> <?=$this->session->userdata('materno')?>   <!-- (<a href="#">3 Messages</a>) --></p>
			<a class="logout_user" href="acceso/logout" title="Logout">Salir</a>
		</div>
		<!-- <div class="breadcrumbs_container">
			<article class="breadcrumbs"><a href="index.html">Website Admin</a> <div class="breadcrumb_divider"></div> <a class="current">Dashboard</a></article>
		</div> -->
	</section><!-- end of secondary bar -->