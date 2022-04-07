<?php
require_once '../../includes/DataBaseOperations.php';

    $structureLink = "http://shark.sbs.arizona.edu:8080/carex/getSubclasses?baseIri=http://biosemantics.arizona.edu/ontologies/carex&term=anatomical%20structure";
    $qualityLink = "http://shark.sbs.arizona.edu:8080/carex/getSubclasses?baseIri=http://biosemantics.arizona.edu/ontologies/carex&term=quality";
    
    function getClasses($url, $type)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $data = curl_exec($ch);
        $db = new DataBaseOperations();
        $db->addDataToClasses($type, $data);
        curl_close($ch);
    }

    $classes = getClasses($qualityLink, '0');

    $classes = getClasses($structureLink, '1');

?>


