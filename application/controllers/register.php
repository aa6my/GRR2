<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->load->view('register');
    }

    public function create_user_now()
    {
        $userrole = '2';
        $firstname = $this->input->post("firstname");
        $lastname = $this->input->post("lastname");
        $email = $this->input->post("email");
        $password = $this->input->post("password");
        $verification_status = '1';
        $status = '1';
        $x = $this->ezrbac->createUser(array(
            'user_role' => $userrole,
            'meta' => array('first_name'=>$firstname, 'last_name'=>$lastname),
            'email' => $email,
            'verification_status' => $verification_status,
            'password' => $password,
            'status' => $status
        ));
       	$url = base_url();
        header( 'Location: '.$url.'welcome' ) ;
    }
}
        