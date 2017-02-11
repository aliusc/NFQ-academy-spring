<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<h1>Book`s <i>&quot;<?=$book_details->book_name?>&quot;</i> information</h1>

<div class="table_container">

<div id="single_book_div">
<table class="display cols">
	<tbody>
		<tr>
			<td>Name</td>
			<td><?=$book_details->book_name?></td>
		</tr><tr>
			<td>Author</td>
			<td><?=$book_details->book_author?></td>
		</tr>
		<tr>
			<td>Genre</td>
			<td><?=$book_details->book_genre?></td>
		</tr>
		<tr>
			<td>Year</td>
			<td><?=$book_details->year?></td>
		</tr>
	</tbody>
</table>
</div>
<div class="link_to_main">
<a href="<?=PAGE_WWW?>">&lt;-- Back to books list</a>
</div>

</div>