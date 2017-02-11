<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<tr>
	<td><a href="<?=PAGE_WWW.'/index.php/books/book/'.$book->book_id?>"><?=$book->book_name?></a></td>
	<td><?=$book->book_genre?></td>
	<td><?=$book->year?></td>
</tr>