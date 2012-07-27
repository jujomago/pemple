<!DOCTYPE HTML>
<html lang="es-ES">
<head>
	<meta charset="UTF-8">
	<title>Acceso al Sistema</title>
	<base href="<?=base_url()?>" />
	<style type="text/css">

/*--------------------*/
html{
	height:100%;
	overflow: hidden;
}
body{



background: #fffb94; /* Old browsers */
background: -moz-linear-gradient(top,  #fffb94 0%, #fff135 48%, #fff575 99%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fffb94), color-stop(48%,#fff135), color-stop(99%,#fff575)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #fffb94 0%,#fff135 48%,#fff575 99%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #fffb94 0%,#fff135 48%,#fff575 99%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #fffb94 0%,#fff135 48%,#fff575 99%); /* IE10+ */
background: linear-gradient(to bottom,  #fffb94 0%,#fff135 48%,#fff575 99%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fffb94', endColorstr='#fff575',GradientType=0 ); /* IE6-9 */




/*height:100%;*/
}
#logofau{
    position: absolute;
    top:10px;
    left:50px;
    width:150px;
}


#login
{
background: #c0d6c7; /* Old browsers */
background: -moz-linear-gradient(top,  #c0d6c7 0%, #69aa83 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#c0d6c7), color-stop(100%,#69aa83)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #c0d6c7 0%,#69aa83 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #c0d6c7 0%,#69aa83 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #c0d6c7 0%,#69aa83 100%); /* IE10+ */
background: linear-gradient(to bottom,  #c0d6c7 0%,#69aa83 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c0d6c7', endColorstr='#69aa83',GradientType=0 ); /* IE6-9 */

    /*height: 240px;*/
    width: 400px;
    margin: -150px 0 0 -230px;
    padding: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 0;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;  
    -webkit-box-shadow:
          0 0 2px rgba(0, 0, 0, 0.2),
          0 1px 1px rgba(0, 0, 0, .2),
          0 3px 0 #fff,
          0 4px 0 rgba(0, 0, 0, .2),
          0 6px 0 #fff,  
          0 7px 0 rgba(0, 0, 0, .2);
    -moz-box-shadow:
          0 0 2px rgba(0, 0, 0, 0.2),  
          1px 1px   0 rgba(0,   0,   0,   .1),
          3px 3px   0 rgba(255, 255, 255, 1),
          4px 4px   0 rgba(0,   0,   0,   .1),
          6px 6px   0 rgba(255, 255, 255, 1),  
          7px 7px   0 rgba(0,   0,   0,   .1);
    box-shadow:
          0 0 2px rgba(0, 0, 0, 0.2),  
          0 1px 1px rgba(0, 0, 0, .2),
          0 3px 0 #fff,
          0 4px 0 rgba(0, 0, 0, .2),
          0 6px 0 #fff,  
          0 7px 0 rgba(0, 0, 0, .2);
}

#login:before
{
    content: '';
    position: absolute;
    z-index: -1;
    border: 1px dashed #ccc;
    top: 5px;
    bottom: 5px;
    left: 5px;
    right: 5px;
    -moz-box-shadow: 0 0 0 1px #fff;
    -webkit-box-shadow: 0 0 0 1px #fff;
    box-shadow: 0 0 0 1px #fff;
}

/*--------------------*/

h1
{
    text-shadow: 0 1px 0 rgba(255, 255, 255, .7), 0px 2px 0 rgba(0, 0, 0, .5);
    text-transform: uppercase;
    text-align: center;
    color: #005700;
    margin: 0 0 30px 0;
    letter-spacing: 4px;
    font: normal 26px/1 Verdana, Helvetica;
    position: relative;
}

h1:after, h1:before
{
    background-color: #777;
    content: "";
    height: 1px;
    position: absolute;
    top: 15px;
    width: 120px;   
}

h1:after
{ 
    background-image: -webkit-gradient(linear, left top, right top, from(#777), to(#fff));
    background-image: -webkit-linear-gradient(left, #777, #fff);
    background-image: -moz-linear-gradient(left, #777, #fff);
    background-image: -ms-linear-gradient(left, #777, #fff);
    background-image: -o-linear-gradient(left, #777, #fff);
    background-image: linear-gradient(left, #777, #fff);      
    right: 0;
}

h1:before
{
    background-image: -webkit-gradient(linear, right top, left top, from(#777), to(#fff));
    background-image: -webkit-linear-gradient(right, #777, #fff);
    background-image: -moz-linear-gradient(right, #777, #fff);
    background-image: -ms-linear-gradient(right, #777, #fff);
    background-image: -o-linear-gradient(right, #777, #fff);
    background-image: linear-gradient(right, #777, #fff);
    left: 0;
}

/*--------------------*/

fieldset
{
    border: 0;
    padding: 0;
    margin: 0;
}

/*--------------------*/

#inputs input
{
    background: #f1f1f1 url(http://www.red-team-design.com/wp-content/uploads/2011/09/login-sprite.png) no-repeat;
    padding: 15px 15px 15px 30px;
    margin: 0 0 10px 0;
    width: 353px; /* 353 + 2 + 45 = 400 */
    border: 1px solid #ccc;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    -moz-box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
    -webkit-box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
    box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
}

#username
{
    background-position: 5px -2px !important;
}

#password
{
    background-position: 5px -52px !important;
}

#inputs input:focus
{
    background-color: #fff;
    border-color: #e8c291;
    outline: none;
    -moz-box-shadow: 0 0 0 1px #e8c291 inset;
    -webkit-box-shadow: 0 0 0 1px #e8c291 inset;
    box-shadow: 0 0 0 1px #e8c291 inset;
}

/*--------------------*/
#actions
{
    margin: 25px 0 0 0;
}

#submit
{		
    background-color: #ffb94b;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#fddb6f), to(#ffb94b));
    background-image: -webkit-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: -moz-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: -ms-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: -o-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: linear-gradient(top, #fddb6f, #ffb94b);
    
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    
    text-shadow: 0 1px 0 rgba(255,255,255,0.5);
    
     -moz-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
     -webkit-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
     box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;    
    
    border-width: 1px;
    border-style: solid;
    border-color: #d69e31 #e3a037 #d5982d #e3a037;

    float: left;
    height: 35px;
    padding: 0;
    width: 120px;
    cursor: pointer;
    font: bold 15px Arial, Helvetica;
    color: #8f5a0a;
}

#submit:hover,#submit:focus
{		
    background-color: #fddb6f;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ffb94b), to(#fddb6f));
    background-image: -webkit-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: -moz-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: -ms-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: -o-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: linear-gradient(top, #ffb94b, #fddb6f);
}	

#submit:active
{		
    outline: none;
   
     -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
     -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
     box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;		
}

#submit::-moz-focus-inner
{
  border: none;
}

#actions a
{
    color: #3151A2;    
    float: right;
    line-height: 35px;
    margin-left: 10px;
}

/*--------------------*/

#back
{
    display: block;
    text-align: center;
    position: relative;
    top: 60px;
    color: #999;
}


h4.alert_error {
display: block;
/*width: 95%;*/
margin: 20px 0 0 0;
margin-top: 20px;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
border-radius: 5px;
background: #F3D9D9 url(images/icn_alert_error.png) no-repeat;
background-position: 10px 10px;
border: 1px solid #D20009;
color: #7B040F;
padding: 10px 0;
text-indent: 40px;
font-size: 14px;
margin-bottom:6px;

}

h4.alert_success {
display: block;
width: 95%;
margin: 20px 3% 0 3%;
margin-top: 20px;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
border-radius: 5px;
background: #E2F6C5 url(images/icn_alert_success.png) no-repeat;
background-position: 10px 10px;
border: 1px solid #79C20D;
color: #32510F;
padding: 10px 0;
text-indent: 40px;
font-size: 14px;}

</style>
</head>

<body>
	<form id="login" method="post" action="acceso/login">
	<?php if(isset($mensaje)):?>
		<h4 class="alert_error" style="display:block"><?=$mensaje?></h4>
	<?php else:?>
		<h4 class="mensaje" style="display:none"></h4>
	<?php endif;?>
    <h1>Acceso</h1>
    <fieldset id="inputs">
        <input id="username" name="usuario" type="text" placeholder="Usuario" autofocus required>   
        <input id="password" name="clave" type="password" placeholder="Clave" required>
    </fieldset>
    <fieldset id="actions">
        <input type="submit" id="submit" value="Ingresar">
        <a href="">Olvido su clave?</a>
        <!-- <a href="">Register</a> -->
    </fieldset>
    </form>
    <img src="img/logo_fautapo.jpg" id="logofau" />
</body>
</html>