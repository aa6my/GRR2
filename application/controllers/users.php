<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    public function access_map(){
        return array(
            'index'=>'view',
            'update'=>'edit',
            'create_user'=>'view',
            'create_user_now'=>'view'
        );
    }

    public function index() {
    	$url = base_url();
        header( 'Location: '.$url.'welcome' ) ;
    }

    public function create_user()
    {
        //$this->load->helper('form');
        $this->load->view('view_create_user');
        //$this->create_user();
    }
}
        