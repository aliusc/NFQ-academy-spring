<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
	<title>NFQ Spring. AliusC@gmail.com</title>		
	
	<script type="text/javascript" charset="utf-8" src="<?=PAGE_WWW?>/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="<?=PAGE_WWW?>/js/datatables.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="<?=PAGE_WWW?>/js/jquery-ui.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready( function () {
			
		} );

	</script>
	
	<link rel="stylesheet" type="text/css" href="<?=PAGE_WWW?>/css/datatables.min.css"/>
	<link rel="stylesheet" type="text/css" href="<?=PAGE_WWW?>/css/jquery-ui.min.css"/>
	<link rel="stylesheet" type="text/css" href="<?=PAGE_WWW?>/css/table.css"/>
	
	<style type="text/css" title="currentStyle">
		#books_div {
			margin:0 auto;
			width: 800px;
		}
		
		html, body {
			margin:0px auto;
			padding: 0px;
			width: 800px;
		} 
		
		.add_div {
			margin-top: 15px;
			position: relative;
			bottom: 5px;
			font-size:10pt;
		}
		
		.link_to_main {
			padding-top: 15px;
		}
		
		.validation_errors {
			color: red;
		}
	</style>


</head>

<body>