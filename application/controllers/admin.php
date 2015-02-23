<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct(){
        parent::__construct();        
    }

	public function access_map(){
        return array(
            'index'=>'view',
            'review'=>'view',
            'update'=>'edit'
        );
    }

	public function index()
	{
		$crud = new grocery_CRUD();
        $state = $crud->getState();
		$data['page_header_title'] = "Games List Management";
		$crud->set_table('games');	
		$output = $crud->render();
		$output->data = $data;
		$this->load->view('crud', $output);
	}

	public function review()
	{

		$crud = new grocery_CRUD();
        $state = $crud->getState();
		$data['page_header_title'] = "Reviews Management";
		$crud->set_table('reviews');

		$crud->display_as('game_id','Game')
			 ->display_as('user_id','User');
		$crud->callback_column('game_id',array($this,'_callback_game'))
			 ->callback_column('user_id',array($this,'_callback_user'));

		$output = $crud->render();
		$output->data = $data;
		$this->load->view('crud', $output);
	}

	public function _callback_game($value, $row)
	{
		$table = "games";
		$where = array('game_id'=>$value);
		$game = $this->grr_model->get_specified_row($table,$where,false,false, false);
		return $game['game_title'];
		//return "<a href='".site_url('admin/sub_webpages/'.$row->id)."'>$value</a>";
	}

	public function _callback_user($value, $row)
	{
		$table = "system_users";
		$where = array('id'=>$value);
		$game = $this->grr_model->get_specified_row($table,$where,false,false, false);
		return $game['email'];
		//return "<a href='".site_url('admin/sub_webpages/'.$row->id)."'>$value</a>";
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */