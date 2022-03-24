<?php

require_once '../../includes/DataBaseOperations.php';

$db = new DataBaseOperations();
$response = [];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $termId         = (int)$_POST['termId'];
    $expertId       = (int)$_POST['expertId'];

    $newTerm = $_POST['newTerm'];
    $newDefinition   = $_POST['definition'];
    $superclass   = $_POST['superclass'];
    $sentence   = $_POST['sentence'];
    $taxa   = $_POST['taxa'];
    $newOrExisting = $_POST['newOrExisting'];
    $comment = $_POST['comment'];
    $type = $_POST['type'];

    $db->deleteDisputedDeprecationDecision($termId, $expertId);

    $resultSubmitDecision = $db->submitDisputeDecision($termId, $expertId, $newTerm, $newDefinition, $superclass, $sentence, $taxa, $comment, $type, $newOrExisting);

    if ($resultSubmitDecision == 1) {

        $response['error'] = false;
        $response['message'] = "Submission Successful";
       
    } else {

        $response['error'] = true;
        $response['message'] = "Submission Failed";
    }
}
echo json_encode($response);
