<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<h1>Books list</h1>

<div class="table_container">

<?php 
if(isset($error) && !empty($error)) {
	?>
	<div class="ui-widget">
		<div class="ui-state-error ui-corner-all" style="padding: 0 .7em;">
			<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
			<strong>Error:</strong> <?=$error?></p>
		</div>
	</div>
	<br>
	<?php 
}
?>

<div id="books_div">
<table class="display" id="book_table">
	<thead>
		<tr>
			<th>Name</th>
			<th>Genre</th>
			<th>Year</th>
		</tr>
	</thead>
	<tbody>
<?php 
	if(isset($books_list) && !empty($books_list))
		foreach ($books_list as $book) {
			require("books_list_row.php");
		}
?>
	</tbody>
</table>
</div>

</div>

<div class="add_div"><a href="<?=PAGE_WWW?>/index.php/books/book_add">Add new book</a></div>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#book_table').dataTable( {
			"sDom": 'lfrtip',
			"bPaginate": true,
			"asSorting": true,
		});
	});
</script>