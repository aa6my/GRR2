<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Games extends CI_Controller {

	public function __construct(){
        parent::__construct();
        $this->load->helper('url');
    }

	public function access_map(){
        return array(
            'index'=>'view',
            'update'=>'edit'
        );
    }

	public function index()
	{
		$table = "games";
		$data['game_list']  = $this->grr_model->get_all_rows($table,false,false, false, false, false);
		$this->load->view('game_lists.php', $data);
	}

	public function game_list_view(){
		$game_id = $this->uri->segment(3);
		$table = "games";
		$where = array('game_id'=>$game_id);
		$data['game']  = $this->grr_model->get_all_rows($table,$where,false, false, false, false);


		$table = "reviews";
		//$tableNameToJoin = 'system_users';
        //$tableRelation = "reviews.user_id = system_users.id";

        $tableNameToJoin = array('system_users');       
        $tableRelation = array('reviews.user_id = system_users.id'
                               );
        //$this->Midae_model->get_all_rows1("invoices", $where, $tableNameToJoin, $tableRelation, false, false); 
		$data['review']  = $this->grr_model->get_all_rows($table,$where, $tableNameToJoin, $tableRelation, false, false);
		$this->load->view('game_list_view.php', $data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */