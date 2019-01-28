<?php require_once('config.php');
require_once(ROOT_PATH . '/includes/functions.php');
require_once( ROOT_PATH . '/includes/head.php'); ?>   
<link rel="stylesheet" type="text/css" href="css/code.css">
<title>Веб суралцагчид | Код бичигч </title>

<?php require_once(ROOT_PATH.'/includes/navbar.php') ?>
<div class="row">
	<div class="col-md-4">
		<textarea id="html" placeholder="HTML">	</textarea>
    	<textarea id="css" placeholder="CSS"></textarea>
    	<textarea id="js" placeholder="JavaScript"></textarea>
	</div>
	<div class="col-md-8"><iframe id="code"></iframe></div>
</div>
    
    

<script type="text/javascript" src="js/app.js"></script>
<?php require_once(ROOT_PATH . '/includes/footer.php') ?>