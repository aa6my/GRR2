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
		$crud->callback_add_field('game_id',array($this,'_callback_add_game'))
			 ->callback_add_field('user_id',array($this,'_callback_add_user'))
			 ->callback_add_field('review_gameplay',array($this,'_callback_add_review_gameplay'))
			 ->callback_add_field('review_graphic',array($this,'_callback_add_review_graphic'))
			 ->callback_add_field('review_music',array($this,'_callback_add_review_music'))
			 ->callback_edit_field('game_id',array($this,'_callback_edit_game'))
			 ->callback_edit_field('user_id',array($this,'_callback_edit_user'))
			 ->callback_edit_field('review_gameplay',array($this,'_callback_edit_review_gameplay'))
			 ->callback_edit_field('review_graphic',array($this,'_callback_edit_review_graphic'))
			 ->callback_edit_field('review_music',array($this,'_callback_edit_review_music'))
			 ->callback_read_field('game_id',array($this,'_callback_game'))
			 ->callback_read_field('user_id',array($this,'_callback_user'));

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
	
	public function _callback_add_game($value = '', $primary_key = null)
	{
		$table = "games";
		//$where = array('id'=>$value);
		$game = $this->grr_model->get_all_rows($table,false, false, false, false, false);
		$sel = '<select name="game_id">';
		foreach ($game as $key => $value) {
			$sel .= '<option value="'.$value['game_id'].'">'.$value['game_title'].'</option>';
		}
		$sel .= '</select>';
		
		return $sel;
	    
	}

	public function _callback_add_user($value = '', $primary_key = null)
	{
		$table = "system_users";
		//$where = array('id'=>$value);
		$game = $this->grr_model->get_all_rows($table,false, false, false, false, false);
		$sel = '<select name="user_id">';
		foreach ($game as $key => $value) {
			$sel .= '<option value="'.$value['id'].'">'.$value['email'].'</option>';
		}
		$sel .= '</select>';
		
		return $sel;
	    
	}

	public function _callback_add_review_gameplay($value = '', $primary_key = null)
	{
		return $this->add_gameplay_graphic_music("review_gameplay");
	    
	}
	public function _callback_add_review_graphic($value = '', $primary_key = null)
	{
		return $this->add_gameplay_graphic_music("review_graphic");
	    
	}
	public function _callback_add_review_music($value = '', $primary_key = null)
	{
		return $this->add_gameplay_graphic_music("review_music");
	    
	}

	public function add_gameplay_graphic_music($name){

		$sel = '<select name="'.$name.'">
					<option value="">Please choose</option>
					<option value="one">One Star</option>
					<option value="two">Two Star</option>
					<option value="three">Three Star</option>
					<option value="four">Four Star</option>
					<option value="five">Five Star</option>';
		$sel .= '</select>';
		return $sel;
	}

	public function _callback_edit_game($val = '', $primary_key = null)
	{
		$table = "games";
		
		$game = $this->grr_model->get_all_rows($table,false, false, false, false, false);
		$sel = '<select name="game_id">';
		$m = "";
		foreach ($game as $key => $value) {
			if($value['game_id']==$val){
				$m = 'selected';
			}
			else{
				$m = "";
			}
			$sel .= '<option value="'.$value['game_id'].'"'.$m.'>'.$value['game_title'].'</option>';
		}
		$sel .= '</select>';
		
		return $sel;
	    
	}

	public function _callback_edit_user($val = '', $primary_key = null)
	{
		$table = "system_users";
		
		$game = $this->grr_model->get_all_rows($table,false, false, false, false, false);
		$sel = '<select name="user_id">';
		$m = "";
		foreach ($game as $key => $value) {
			if($value['id']==$val){
				$m = 'selected';
			}
			else{
				$m = "";
			}

			$sel .= '<option value="'.$value['id'].'"'.$m.'>'.$value['email'].'</option>';
		}
		$sel .= '</select>';
		
		return $sel;
	    
	}

	public function _callback_edit_review_gameplay($value = '', $primary_key = null)
	{

		$func = $this->edit_gameplay_graphic_music($value, "review_gameplay");
		return $func;
	    
	}

	public function _callback_edit_review_graphic($value = '', $primary_key = null)
	{

		$func = $this->edit_gameplay_graphic_music($value, "review_graphic");
		return $func;
	    
	}

	public function _callback_edit_review_music($value = '', $primary_key = null)
	{

		$func = $this->edit_gameplay_graphic_music($value, "review_music");
		return $func;
	    
	}

	public function edit_gameplay_graphic_music($pk, $name){

		$a = ($pk=="one")? 'selected' : '';
		$b = ($pk=="two")? 'selected' : '';
		$c = ($pk=="three")? 'selected' : '';
		$d = ($pk=="four")? 'selected' : '';
		$e = ($pk=="five")? 'selected' : '';

		$sel = '<select name="'.$name.'">
					<option value="">Please choose</option>
					<option value="one" '.$a.'>One Star</option>
					<option value="two" '.$b.'>Two Star</option>
					<option value="three" '.$c.'>Three Star</option>
					<option value="four" '.$d.'>Four Star</option>
					<option value="five" '.$e.'>Five Star</option>';
		$sel .= '</select>';

		return $sel;
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */