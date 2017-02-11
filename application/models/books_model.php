<?php
class Books_model extends CI_Model {
	
	function __construct()
	{
		parent::__construct();
	}
	

	public function GetBooksList() {
		$this->db->select('book_id, book_name, book_genre, YEAR(book_published) AS year', false);
		$query = $this->db->get('tbl_book');
		return $query->result();
	}
	
	public function GetBookInfo($id) {
		$this->db->select('book_name, book_author, book_genre, YEAR(book_published) as year');
		$this->db->where('book_id', $id);
		$result = $this->db->get('tbl_book');
		
		if(empty($result->num_rows()))
			return false;
		else {
			$result_single = $result->result();
			return $result_single[0];
		}
	}
	
	public function AddNewBook($name, $author, $genre, $year) {
		$insert_array = array(
				'book_name' => $name,
				'book_author' => $author,
				'book_genre' => $genre,
				'book_published' => $year
				);
		$this->db->insert('tbl_book', $insert_array);
	}
	
}