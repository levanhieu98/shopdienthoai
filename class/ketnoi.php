<?php
require_once"config.php"; 
class ketnoi 
{
  
    protected $db;
    public function __construct()
    {
        $this->db=new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		if($this->db->connect_error)
		{
			print_r("Connection failed: %s \n", $this->db->connect_error);
			exit();
		}
		$this->db->set_charset("utf8");
    }
}
 ?>