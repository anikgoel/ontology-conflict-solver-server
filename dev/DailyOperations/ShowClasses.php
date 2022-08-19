<?php

require_once '../../includes/DataBaseOperations.php';

    if($_SERVER['REQUEST_METHOD'] == 'GET')
    {
       /* $db = new DataBaseOperations();
        $data = $db->sendClassesData($_GET['type']);
        $data = preg_replace('/\s+/', '', $data);
        echo $data;      */

        if($_GET['type'] == 1) {
            $url = "http://shark.sbs.arizona.edu:8080/carex/getSubclasses?baseIri=http://biosemantics.arizona.edu/ontologies/carex&term=anatomical%20structure";
            $ch = curl_init();
	        curl_setopt($ch, CURLOPT_URL, $url);
	        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	        $data = curl_exec($ch);
	        echo $data;
        }else if($_GET['type'] == 0) {
            $url = "http://shark.sbs.arizona.edu:8080/carex/getSubclasses?baseIri=http://biosemantics.arizona.edu/ontologies/carex&term=quality";
            $ch = curl_init();
	        curl_setopt($ch, CURLOPT_URL, $url);
	        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	        $data = curl_exec($ch);
	        echo $data;
        }
    }
?>
