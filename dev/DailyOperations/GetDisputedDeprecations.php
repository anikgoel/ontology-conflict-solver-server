<?php
require_once '../../includes/DataBaseOperations.php';

$disputedDeprecations = [];

// echo "<pre>";
$db = new DataBaseOperations();
// print_r($db);
$disputedDeprecationsDb = $db->getDisputedDeprecations();
$expertId = $_GET['expertId'];

while ($task = $disputedDeprecationsDb->fetch_assoc()) {
    $disputedDeprecations[$task['termId']]['termId'] = $task['termId'];
    $disputedDeprecations[$task['termId']]['term'] = $task['term'];
    $disputedDeprecations[$task['termId']]['disputedReason'] = $task['data'];
    $disputedDeprecations[$task['termId']]['status'] = $task['status'];
    $disputedDeprecations[$task['termId']]['deprecatedReason'] = $task['sentence'];
    if(is_array($task['expertID'])){
        $disputedDeprecations[$task['termId']]['expertSolutions'][] = $task['expertID'];
    }else{
        $disputedDeprecations[$task['termId']]['expertSolutions'] = $task['expertID'];
    }
    
    $disputedDeprecations[$task['termId']]['disputedBy'] = $task['firstname'];
    $disputedDeprecations[$task['termId']]['newDefinition'] = $task['definition'];
    if ($expertId == $task['expertID']) {
        $disputedDeprecations[$task['termId']]['solutionGiven'] = 1;
    } elseif(!isset($disputedDeprecations[$task['termId']]['solutionGiven'])) {
        $disputedDeprecations[$task['termId']]['solutionGiven'] = 0;
    }
}
ksort($disputedDeprecations);
echo json_encode(array_values($disputedDeprecations));

// print_r($disputedDeprecations);

// die;
