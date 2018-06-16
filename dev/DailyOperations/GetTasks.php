<?php

require_once '../../includes/DataBaseOperations.php';

$response = array(); 
$err = array();
if($_SERVER['REQUEST_METHOD'] == 'GET'){

	$db = new DataBaseOperations();
    $result = $db->getTasks();
        
  	while( $row = $result->fetch_assoc() ) {
  		$term = $row['term']; 
        $username = $row['username'];
        $data[] = array("term"=>$term, "username"=>$username);
    }
    $response = $data;
    $err['error'] = false;
} else {
    $err['error'] = true;
    $err['message'] = "Error happened";
}
echo json_encode(array("task_data"=>$response,"error"=>$err));


?>
