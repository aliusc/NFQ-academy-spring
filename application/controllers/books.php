<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Books extends CI_Controller {

	//saraso uzkrovimas
	public function index($data = array())
	{
		$this->load->model('books_model');
		$books_list = $this->books_model->GetBooksList();
		$data['books_list'] = $books_list;
		$this->load->view('header', $data);
		$this->load->view('books_list', $data);
		$this->load->view('footer', $data);
	}
	
	//vieno iraso gavimas
	public function book($id) {
		$this->load->model('books_model');
		$book_details = $this->books_model->GetBookInfo($id);
		
		if(!$book_details) { //jeigu nebuvo rezultatu rodome pagrindini puslapi su pranesimu
			$data['error'] = 'No results for selected book were found!';
			$this->index($data);
		}
		else {
			//arba rodome informacini puslapi
			$data['book_details'] = $book_details;
			$this->load->view('header', $data);
			$this->load->view('book_details', $data);
			$this->load->view('footer', $data);
		}
	}
	
	//naujos knygos sukurimas
	public function book_add() {
		$this->load->helper('form');
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('name', 'Name', 'htmlspecialchars|trim|required');
		$this->form_validation->set_rules('author', 'Author', 'htmlspecialchars|trim|required');
		$this->form_validation->set_rules('genre', 'Genre', 'htmlspecialchars|trim|required');
		$this->form_validation->set_rules('year', 'Published date', 'required|integer|exact_length[4]');
		
		$data = array();
		
		//knygos duomenu pateikimas - tikrinkime duomenis. Jeigu OK - itraukime ir grizkime i pagrindine
		if ($this->form_validation->run() === FALSE)
	    {
	        //jeigu neturime duomenu ar neteisingi - tuomet tiesiog rodykime forma
			$this->load->view('header', $data);
			$this->load->view('book_add', $data);
			$this->load->view('footer', $data);
	
	    }
	    else
	    {
	    	//Jeigu OK - itraukime ir rodykime success zinute
	    	$name = $this->input->post('name');
	    	$author = $this->input->post('author');
	    	$genre = $this->input->post('genre');
// 	    	$year = date("Y-m-d", strtotime($this->input->post('year'))); //is metu skaiciaus verskime i data
	    	$year = $this->input->post('year').'-01-01'; //is metu skaiciaus verskime i data
	    	
	    	$this->load->model('books_model');
	        $this->books_model->AddNewBook($name, $author, $genre, $year);
	        $this->load->view('header', $data);
	        $this->load->view('book_add_success');
			$this->load->view('footer', $data);
	    }
	}
}
