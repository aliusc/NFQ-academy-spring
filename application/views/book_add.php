<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<h1>Create new book entry</h1>

<div class="table_container">

<div class="validation_errors">
<?php echo validation_errors(); ?>
</div>

<div>
<?php echo form_open('books/book_add'); ?>
<table cellspacing="0" cellpadding="0" border="0" class="display">
	<tr>
		<td>Name</td>
		<td><input type="text" name="name" value="<?php echo set_value('name'); ?>"></td>
	</tr>
	<tr>
		<td>Author</td>
		<td><input type="text" name="author" value="<?php echo set_value('author'); ?>"></td>
	</tr>
	<tr>
		<td>Genre</td>
		<td><input type="text" name="genre" value="<?php echo set_value('genre'); ?>"></td>
	</tr>
	<tr>
		<td>Year of publishing</td>
		<td><input type="text" name="year" value="<?php echo set_value('year'); ?>" maxlength="4"></td>
	</tr>
	<tr>
		<td colspan="2" align="right"><input type="submit" name="submit" value="Create news book" /></td>
	</tr>
</table>
</form>
</div>

<div class="link_to_main">
<a href="<?=PAGE_WWW?>">&lt;-- Back to books list</a>
</div>

</div>