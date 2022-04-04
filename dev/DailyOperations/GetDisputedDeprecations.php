<?php
require_once '../../includes/DataBaseOperations.php';

// echo '<pre>';

$structureLink = "http://shark.sbs.arizona.edu:8080/carex/getSubclasses?baseIri=http://biosemantics.arizona.edu/ontologies/carex&term=anatomical%20structure";
$qualityLink = "http://shark.sbs.arizona.edu:8080/carex/getSubclasses?baseIri=http://biosemantics.arizona.edu/ontologies/carex&term=quality";

function getClasses($url)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);
    return json_decode($response);
}

function getClassesArray($classes, &$arrayData)
{
    foreach ($classes as $class) {
        $arrayData[$class->data->details[0]->IRI] = $class->text;
        if (isset($class->children) &&  is_array($class->children) && !empty($class->children)) {
            getClassesArray($class->children, $arrayData);
        }
    }
}

$classes = getClasses($qualityLink);

$qualityArrayData[$classes->data->details[0]->IRI] = $classes->text;
getClassesArray($classes->children, $qualityArrayData);

$classes = getClasses($structureLink);

$structureArrayData[$classes->data->details[0]->IRI] = $classes->text;
getClassesArray($classes->children, $structureArrayData);


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
    if ($task['expertID'] !== NULL) {
        $disputedDeprecations[$task['termId']]['expertSolutions'][] = $task['expertID'];
    } else {
        $disputedDeprecations[$task['termId']]['expertSolutions'] = [];
    }

    $disputedDeprecations[$task['termId']]['disputedBy'] = $task['firstname'];
    $disputedDeprecations[$task['termId']]['newDefinition'] = $task['definition'];
    if ($expertId == $task['expertID']) {
        $disputedDeprecations[$task['termId']]['solutionGiven'] = 1;

        $disputedDeprecations[$task['termId']]['userSolution'] = [
            'newTerm' => $task['newTerm'],
            'newDefinition' => $task['newDefinition'],
            'superclass' => $task['superclass'],
            'exampleSentence' => $task['exampleSentence'],
            'taxa' => $task['taxa'],
            'comment' => $task['comment'],
            'type' => $task['type'],
            'newOrExisting' => $task['newOrExisting']
        ];
    } elseif (!isset($disputedDeprecations[$task['termId']]['solutionGiven'])) {
        $disputedDeprecations[$task['termId']]['solutionGiven'] = 0;
    }

    if ($expertId != $task['expertID'] && $task['type'] != NULL) {

        if ($task['type'] == 1) {
            if (isset($qualityArrayData[$task['superclass']])) {
                if ($task['newOrExisting'] == 1) {
                    if (isset($disputedDeprecations[$task['termId']]['qualitySuperclassNew'])) {
                        $disputedDeprecations[$task['termId']]['qualitySuperclassNew'] .= "; " . $qualityArrayData[$task['superclass']];
                    } else {
                        $disputedDeprecations[$task['termId']]['qualitySuperclassNew'] = $qualityArrayData[$task['superclass']];
                    }
                } else {
                    if (isset($disputedDeprecations[$task['termId']]['qualitySuperclassExisting'])) {
                        $disputedDeprecations[$task['termId']]['qualitySuperclassExisting'] .= "; " . $qualityArrayData[$task['superclass']];
                    } else {
                        $disputedDeprecations[$task['termId']]['qualitySuperclassExisting'] = $qualityArrayData[$task['superclass']];
                    }
                }
            }
        } else {
            if (isset($structureArrayData[$task['superclass']])) {

                if ($task['newOrExisting'] == 1) {
                    if (isset($disputedDeprecations[$task['termId']]['structureSuperclassNew'])) {
                        $disputedDeprecations[$task['termId']]['structureSuperclassNew'] .= "; " . $qualityArrayData[$task['superclass']];
                    } else {
                        $disputedDeprecations[$task['termId']]['structureSuperclassNew'] = $qualityArrayData[$task['superclass']];
                    }
                } else {
                    if (isset($disputedDeprecations[$task['termId']]['structureSuperclassExisting'])) {
                        $disputedDeprecations[$task['termId']]['structureSuperclassExisting'] .= "; " . $qualityArrayData[$task['superclass']];
                    } else {
                        $disputedDeprecations[$task['termId']]['structureSuperclassExisting'] = $qualityArrayData[$task['superclass']];
                    }
                }
            }
        }


        $disputedDeprecations[$task['termId']]['otherSolution'][] = [
            'newTerm' => $task['newTerm'],
            'newDefinition' => $task['newDefinition'],
            'superclass' => $task['superclass'],
            'exampleSentence' => $task['exampleSentence'],
            'taxa' => $task['taxa'],
            'comment' => $task['comment'],
            'type' => $task['type'],
            'newOrExisting' => $task['newOrExisting'],
            'username' => $task['solutionUsername'],
        ];
    }
}
ksort($disputedDeprecations);
echo json_encode(array_values($disputedDeprecations), JSON_UNESCAPED_SLASHES);

// print_r($disputedDeprecations);

// die;
