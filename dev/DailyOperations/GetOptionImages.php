<?php

require_once '../../includes/DataBaseOperations.php';
$response = array(); 

    if($_SERVER['REQUEST_METHOD'] == 'GET'){
        
        $db = new DataBaseOperations();

        $result = $db->getOptionImages($_GET['ID']);

		if($result->num_rows > 0){
            $imgData = $result->fetch_assoc();
        
            //Render image
            //header("Content-type: image/jpg"); 
            //echo $imgData['pic']; 

            echo '<img src="data:image/jpeg;base64,'.base64_encode( $imgData['picture'] ).'"/>';

        }else{
            echo 'Image not found...';
        }
    }
?>
