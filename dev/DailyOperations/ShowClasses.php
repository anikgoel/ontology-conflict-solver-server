<?php

require_once '../../includes/DataBaseOperations.php';

    if($_SERVER['REQUEST_METHOD'] == 'GET')
    {
        $db = new DataBaseOperations();
        $data = $db->sendClassesData($_GET['type']);
        echo $data;      
    }
?>
