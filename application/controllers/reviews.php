<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reviews extends CI_Controller {

	public function __construct(){
        parent::__construct();
        $this->load->helper('url');
        $this->output->enable_profiler(TRUE);
    }

	public function access_map(){
        return array(
            'index'=>'view',
            'add'=>'view',
            'update'=>'edit'
        );
    }

	public function add()
	{
		$game_id = $this->uri->segment(3);
		$table = "games";
		$where = array('game_id'=>$game_id);
		$data['game']  = $this->grr_model->get_all_rows($table,$where,false, false, false, false);

		if($this->input->post('save')){

			
			$user_id = $this->ezrbac->getCurrentUserID();			
			$arrayData = array( 'game_id' => $game_id,
								'user_id' => $user_id,
								'review_title' => $this->input->post('review_title'),
								'review_story' => $this->input->post('review_story'),
								'review_gameplay' => $this->input->post('gameplay_input'),
								'review_graphic' => $this->input->post('graphic_input'),
								'review_music' => $this->input->post('music_input'),
								'review_pro' => $this->input->post('review_pro'),
								'review_contra' => $this->input->post('review_contra'));

			$table = "reviews";
			$this->grr_model->insert_new_data($arrayData,$table);

			
			$table = "games";
			$where = array('game_id'=>$game_id);
			$sel = $this->grr_model->get_specified_row($table,$where,false,false, false);			
			

			$tableToUpdate = "games";
			$usingCondition = array('game_id'=>$game_id);			
			$columnToUpdate = array('game_vote' => $this->input->post('game_vote') + $sel['game_vote']);
			$this->grr_model->update_data($columnToUpdate, $tableToUpdate, $usingCondition);
		}



	


		$this->load->view('review_add.php', $data);


	}

	
}
