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
		

        $tableNameToJoin = array('system_users');       
        $tableRelation = array('reviews.user_id = system_users.id');
       
		$data['review']  = $this->grr_model->get_all_review($table,$where, $tableNameToJoin, $tableRelation, 'desc');
		$data['user_id'] = $user_id = $this->ezrbac->getCurrentUserID();
		$this->load->view('game_list_view.php', $data);

		
	}

	public function reviewupvote(){

		if($this->input->post('jenis')=="vote"){
			$review_id = $this->input->post('review_id');
			$tableToUpdate = "reviews";
			$where = array('review_id'=>$review_id);
			$sel = $this->grr_model->get_specified_row($tableToUpdate,$where,false,false, false);	
			
			$usingCondition = $where;		
			$columnToUpdate = array('review_vote' =>1 + $sel['review_vote']);
			$this->grr_model->update_data($columnToUpdate, $tableToUpdate, $usingCondition);
			$s = 1;
			echo $s;
		}
	}

	public function popular(){

		$table = "games";
		$data['game_list_popular']  = $this->grr_model->get_popular_games();
		$this->load->view('game_list_popular.php', $data);
	}

	public function latest(){

		$table = "games";
		$data['game_list_latest']  = $this->grr_model->get_latest_games();
		$this->load->view('game_latest.php', $data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */