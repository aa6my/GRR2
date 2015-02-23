<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {

    	$this->load->view('about');
        
    }

    function contactus() {

    	$this->load->view('contactus');
        
    }

    function faq() {

    	$this->load->view('faq');
        
    }
}
        