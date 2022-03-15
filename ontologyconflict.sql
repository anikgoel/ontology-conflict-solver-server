-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 01:22 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ontologyconflict`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtermsolution`
--

CREATE TABLE `addtermsolution` (
  `id` int(11) NOT NULL,
  `termId` int(11) NOT NULL,
  `expertId` int(11) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'Character',
  `subpart` varchar(255) NOT NULL DEFAULT '',
  `superpart` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addtermsolution`
--

INSERT INTO `addtermsolution` (`id`, `termId`, `expertId`, `type`, `subpart`, `superpart`) VALUES
(4, 4512, 23, 'Character', 'age', ''),
(5, 4515, 23, 'Decline', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `addtermsynonyms`
--

CREATE TABLE `addtermsynonyms` (
  `id` int(11) NOT NULL,
  `termId` int(11) NOT NULL,
  `expertId` int(11) NOT NULL,
  `synonym` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authorId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorId`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(7, 'carex team', 'aaaaaa', 'carex team', 'carex team', 'carex.team@email.arizona.edu'),
(8, 'first', 'aaaaaa', 'first', 'first', 'first@email.arizona.edu'),
(9, 'Hong Cui', 'aaaaaa', 'Hong Cui', 'Hong Cui', 'Hong.Cui@email.arizona.edu'),
(10, 'newnew', 'aaaaaa', 'newnew', 'newnew', 'newnew@email.arizona.edu');

-- --------------------------------------------------------

--
-- Table structure for table `categorysolution`
--

CREATE TABLE `categorysolution` (
  `id` int(11) NOT NULL,
  `expertId` int(11) NOT NULL,
  `termId` int(11) NOT NULL,
  `choice` varchar(255) NOT NULL,
  `writtenComment` varchar(255) NOT NULL,
  `voiceComment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `confusingterm`
--

CREATE TABLE `confusingterm` (
  `termId` int(11) NOT NULL,
  `IRI` varchar(255) DEFAULT NULL,
  `term` varchar(30) DEFAULT NULL,
  `data` varchar(500) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confusingterm`
--

INSERT INTO `confusingterm` (`termId`, `IRI`, `term`, `data`, `type`, `authorId`) VALUES
(3408, 'http://biosemantics.arizona.edu/ontologies/carex#pale_hyaline', 'pale hyaline', '\"leaves : others grading from maroon to green on back , pale hyaline on front ;\" FNA', 'category', 7),
(3409, 'http://biosemantics.arizona.edu/ontologies/carex#black_tinged', 'black tinged', 'for dark tinged:\n\n\"perigynia dark tinged at tip , otherwise pale or golden_brown , contrasting with pistillate scales and beaks , elliptic , 4 . 2 â€“ 5 Ã— 1 . 5 â€“ 2 . 2 mm , 2 â€“ 2 . 6 times as long as wide .\"\n\nFNA', 'category', 7),
(3410, 'http://biosemantics.arizona.edu/ontologies/carex#newShape', 'newShape', 'New Shape for Test, used in taxon Carex capitata', 'category', 8),
(3411, 'http://biosemantics.arizona.edu/ontologies/carex#green_veined', 'green_veined', 'veined ', 'synonym', 7),
(3412, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_margin_of_staminate_scale', 'texture of margin of staminate', 'perceived texture ', 'synonym', 7),
(3413, 'http://biosemantics.arizona.edu/ontologies/carex#sheath_front_apex', 'sheath front apex', 'anatomical structure ', 'synonym', 7),
(3414, 'http://biosemantics.arizona.edu/ontologies/carex#smooth_awned', 'smooth_awned', 'awned ', 'synonym', 7),
(3415, 'http://biosemantics.arizona.edu/ontologies/carex#gray_green', 'gray green', 'green gray ', 'synonym', 7),
(3416, 'http://biosemantics.arizona.edu/ontologies/carex#metallic', 'metallic', 'reflectance ', 'synonym', 7),
(3417, 'http://biosemantics.arizona.edu/ontologies/carex#serrulate_margined', 'serrulate_margined', 'margined ', 'synonym', 7),
(3418, 'http://biosemantics.arizona.edu/ontologies/carex#subtending', 'subtending', 'position ', 'synonym', 7),
(3419, 'http://biosemantics.arizona.edu/ontologies/carex#plump', 'plump', 'size ', 'synonym', 7),
(3420, 'http://biosemantics.arizona.edu/ontologies/carex#cone', 'cone', 'anatomical structure ', 'synonym', 7),
(3421, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_sheath', 'length of sheath', 'perceived length ', 'synonym', 7),
(3422, 'http://biosemantics.arizona.edu/ontologies/carex#evident', 'evident', 'prominence ', 'synonym', 7),
(3423, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_margin_of_perigynium_beak', 'texture of margin of perigyniu', 'perceived texture ', 'synonym', 7),
(3424, 'http://biosemantics.arizona.edu/ontologies/carex#broadened', 'broadened', 'broad ', 'synonym', 7),
(3425, 'http://biosemantics.arizona.edu/ontologies/carex#swelling', 'swelling', 'enlarged ', 'synonym', 7),
(3426, 'http://biosemantics.arizona.edu/ontologies/carex#threadlike', 'threadlike', 'architecture ', 'synonym', 7),
(3427, 'http://biosemantics.arizona.edu/ontologies/carex#pale_bright_green', 'pale bright green', 'pale green bright green ', 'synonym', 7),
(3428, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_leaf_blade', 'length of leaf blade', 'perceived length ', 'synonym', 7),
(3429, 'http://biosemantics.arizona.edu/ontologies/carex#satiny', 'satiny', 'lustrous ', 'synonym', 7),
(3430, 'http://biosemantics.arizona.edu/ontologies/carex#short_pedunclulate', 'short pedunclulate', 'pedunculate ', 'synonym', 7),
(3431, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_inner_band_of_bract_sheath', 'color of inner band of bract s', 'perceived color ', 'synonym', 7),
(3432, 'http://biosemantics.arizona.edu/ontologies/carex#variable', 'variable', 'variability ', 'synonym', 7),
(3433, 'http://biosemantics.arizona.edu/ontologies/carex#distal_beak', 'distal beak', 'beak ', 'synonym', 7),
(3434, 'http://biosemantics.arizona.edu/ontologies/carex#slender_terminal_cone', 'slender terminal cone', 'cone ', 'synonym', 7),
(3435, 'http://biosemantics.arizona.edu/ontologies/carex#distant', 'distant', 'arrangement ', 'synonym', 7),
(3436, 'http://biosemantics.arizona.edu/ontologies/carex#distinguishable', 'distinguishable', 'prominence ', 'synonym', 7),
(3437, 'http://biosemantics.arizona.edu/ontologies/carex#hair', 'hair', 'pubescence (structure) ', 'synonym', 7),
(3438, 'http://biosemantics.arizona.edu/ontologies/carex#point', 'point', 'anatomical structure ', 'synonym', 7),
(3439, 'http://biosemantics.arizona.edu/ontologies/carex#margin_of_pistillate_scale', 'margin of pistillate scale', 'margin ', 'synonym', 7),
(3440, 'http://biosemantics.arizona.edu/ontologies/carex#brown_dotted', 'brown dotted', 'dotted brown ', 'synonym', 7),
(3441, 'http://biosemantics.arizona.edu/ontologies/carex#red_papillose', 'red_papillose', 'papillose ', 'synonym', 7),
(3442, 'http://biosemantics.arizona.edu/ontologies/carex#divergent', 'divergent', 'arrangement ', 'synonym', 7),
(3443, 'http://biosemantics.arizona.edu/ontologies/carex#cut', 'cut', 'shape ', 'synonym', 7),
(3444, 'http://biosemantics.arizona.edu/ontologies/carex#aphyllous_sheathed', 'aphyllous_sheathed', 'sheathed ', 'synonym', 7),
(3445, 'http://biosemantics.arizona.edu/ontologies/carex#utriculiform', 'utriculiform', 'shape ', 'synonym', 7),
(3446, 'http://biosemantics.arizona.edu/ontologies/carex#bristlelike_prolonged', 'bristlelike_prolonged', 'prolonged ', 'synonym', 7),
(3447, 'http://biosemantics.arizona.edu/ontologies/carex#submarginal_band', 'submarginal band', 'band ', 'synonym', 7),
(3448, 'http://biosemantics.arizona.edu/ontologies/carex#serrulate_winged', 'serrulate_winged', 'architecture ', 'synonym', 7),
(3449, 'http://biosemantics.arizona.edu/ontologies/carex#inner_band_of_bract_sheath', 'inner band of bract sheath', 'inner band ', 'synonym', 7),
(3450, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_stem_node', 'widest point of stem node', 'widest point ', 'synonym', 7),
(3451, 'http://biosemantics.arizona.edu/ontologies/carex#indistinct', 'indistinct', 'prominence ', 'synonym', 7),
(3452, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_clavate', 'ovate_clavate', 'clavate ovate ', 'synonym', 7),
(3453, 'http://biosemantics.arizona.edu/ontologies/carex#indistinguishable', 'indistinguishable', 'prominence ', 'synonym', 7),
(3454, 'http://biosemantics.arizona.edu/ontologies/carex#scabrous_pubescent', 'scabrous_pubescent', 'scabrous pubescent ', 'synonym', 7),
(3455, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_bract_of_inflorescence', 'proximal bract of inflorescenc', 'proximal bract ', 'synonym', 7),
(3456, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_orbiculate', 'ovate_orbiculate', 'orbiculate ovate ', 'synonym', 7),
(3457, 'http://biosemantics.arizona.edu/ontologies/carex#long_acute', 'long_acute', 'acute ', 'synonym', 7),
(3458, 'http://biosemantics.arizona.edu/ontologies/carex#Width_of_TestNoun3', 'Width of TestNoun3', 'toreview perceived-width ', 'synonym', 8),
(3459, 'http://biosemantics.arizona.edu/ontologies/carex#lanceoloid', 'lanceoloid', 'shape ', 'synonym', 7),
(3460, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_ligule', 'shape of ligule', 'perceived shape ', 'synonym', 7),
(3461, 'http://biosemantics.arizona.edu/ontologies/carex#purple_blotched', 'purple blotched', 'blotched purple ', 'synonym', 7),
(3462, 'http://biosemantics.arizona.edu/ontologies/carex#cauline_spike', 'cauline spike', 'spike ', 'synonym', 7),
(3463, 'http://biosemantics.arizona.edu/ontologies/carex#purple_blotches', 'purple blotches', 'blotched purple ', 'synonym', 7),
(3464, 'http://biosemantics.arizona.edu/ontologies/carex#adaxial_leaf_blade', 'adaxial leaf blade', 'blade surface ', 'synonym', 7),
(3465, 'http://biosemantics.arizona.edu/ontologies/carex#speckle', 'speckle', 'anatomical structure ', 'synonym', 7),
(3466, 'http://biosemantics.arizona.edu/ontologies/carex#flattened_triangular', 'flattened_triangular', 'triangular flat ', 'synonym', 7),
(3467, 'http://biosemantics.arizona.edu/ontologies/carex#staminate_flower', 'staminate flower', 'flower ', 'synonym', 7),
(3468, 'http://biosemantics.arizona.edu/ontologies/carex#scabrous_puberulent', 'scabrous_puberulent', 'puberulent ', 'synonym', 7),
(3469, 'http://biosemantics.arizona.edu/ontologies/carex#prolonged', 'prolonged', 'length ', 'synonym', 7),
(3470, 'http://biosemantics.arizona.edu/ontologies/carex#distal_inflorescence', 'distal inflorescence', 'inflorescence ', 'synonym', 7),
(3471, 'http://biosemantics.arizona.edu/ontologies/carex#gyncecandrous', 'gyncecandrous', 'reproduction ', 'synonym', 7),
(3472, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_internode_of_inflorescence_unit', 'proximal internode of inflores', 'proximal internode ', 'synonym', 7),
(3473, 'http://biosemantics.arizona.edu/ontologies/carex#serrulate_ciliate', 'serrulate_ciliate', 'ciliate ', 'synonym', 7),
(3474, 'http://biosemantics.arizona.edu/ontologies/carex#scabrid', 'scabrid', 'relief ', 'synonym', 7),
(3475, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_node_of_inflorescence_unit', 'proximal_node_of_inflorescence', 'node_of_inflorescence_unit ', 'synonym', 7),
(3476, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_inflorescence', 'length of inflorescence', 'perceived length ', 'synonym', 7),
(3477, 'http://biosemantics.arizona.edu/ontologies/carex#perigynium_beak', 'perigynium beak', 'anatomical structure ', 'synonym', 7),
(3478, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_ovoid', 'broadly ovoid', 'ovoid ', 'synonym', 7),
(3479, 'http://biosemantics.arizona.edu/ontologies/carex#subrhombic', 'subrhombic', 'rhombic ', 'synonym', 7),
(3480, 'http://biosemantics.arizona.edu/ontologies/carex#desaturated', 'desaturated', 'color saturation ', 'synonym', 7),
(3481, 'http://biosemantics.arizona.edu/ontologies/carex#lighter_colored', 'lighter colored', 'colored light ', 'synonym', 7),
(3482, 'http://biosemantics.arizona.edu/ontologies/carex#winged', 'winged', 'architecture ', 'synonym', 7),
(3483, 'http://biosemantics.arizona.edu/ontologies/carex#bladeless', 'bladeless', 'architecture ', 'synonym', 7),
(3484, 'http://biosemantics.arizona.edu/ontologies/carex#wide', 'wide', 'width ', 'synonym', 7),
(3485, 'http://biosemantics.arizona.edu/ontologies/carex#substipitate', 'substipitate', 'stipitate ', 'synonym', 7),
(3486, 'http://biosemantics.arizona.edu/ontologies/carex#bright_green', 'bright green', 'green bright ', 'synonym', 7),
(3487, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_margin_of_bract_blade', 'color of margin of bract blade', 'perceived color ', 'synonym', 7),
(3488, 'http://biosemantics.arizona.edu/ontologies/carex#inner', 'inner', 'position ', 'synonym', 7),
(3489, 'http://biosemantics.arizona.edu/ontologies/carex#boatshaped', 'boat_shaped', 'shape ', 'synonym', 7),
(3490, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_perigynium', 'width of perigynium', 'perceived width ', 'synonym', 7),
(3491, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_bract_blade', 'widest point of bract blade', 'widest point ', 'synonym', 7),
(3492, 'http://biosemantics.arizona.edu/ontologies/carex#short_creeping', 'short_creeping', 'creeping ', 'synonym', 7),
(3493, 'http://biosemantics.arizona.edu/ontologies/carex#scalelike', 'scalelike', 'architecture ', 'synonym', 7),
(3494, 'http://biosemantics.arizona.edu/ontologies/carex#subsessile', 'subsessile', 'sessile ', 'synonym', 7),
(3495, 'http://biosemantics.arizona.edu/ontologies/carex#distal_body', 'distal body', 'body ', 'synonym', 7),
(3496, 'http://biosemantics.arizona.edu/ontologies/carex#subequal_to', 'subequal to', 'relational size ', 'synonym', 7),
(3497, 'http://biosemantics.arizona.edu/ontologies/carex#shape_in_longitudinal_section', 'shape in longitudinal section', 'shape ', 'synonym', 7),
(3498, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_staminate_scale', 'widest point of staminate scal', 'widest point ', 'synonym', 7),
(3499, 'http://biosemantics.arizona.edu/ontologies/carex#spathose_shaped', 'spathose_shaped', 'shape ', 'synonym', 7),
(3500, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_clavate', 'oblong_clavate', 'clavate ', 'synonym', 7),
(3501, 'http://biosemantics.arizona.edu/ontologies/carex#reduced_strength', 'reduced strength', 'fragility ', 'synonym', 7),
(3502, 'http://biosemantics.arizona.edu/ontologies/carex#beak_orifice', 'beak orifice', 'orifice ', 'synonym', 7),
(3503, 'http://biosemantics.arizona.edu/ontologies/carex#round', 'round', 'shape ', 'synonym', 7),
(3504, 'http://biosemantics.arizona.edu/ontologies/carex#trullate', 'trullate', 'shape ', 'synonym', 7),
(3505, 'http://biosemantics.arizona.edu/ontologies/carex#gradually_tapering', 'gradually tapering', 'tapered ', 'synonym', 7),
(3506, 'http://biosemantics.arizona.edu/ontologies/carex#subplano_convex', 'subplano_convex', 'plano_convex ', 'synonym', 7),
(3507, 'http://biosemantics.arizona.edu/ontologies/carex#pale_brown', 'pale brown', 'pale ', 'synonym', 7),
(3508, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_ligule', 'apex of ligule', 'apex ', 'synonym', 7),
(3509, 'http://biosemantics.arizona.edu/ontologies/carex#bulbous', 'bulbous', 'architecture ', 'synonym', 7),
(3510, 'http://biosemantics.arizona.edu/ontologies/carex#several_veined', 'several_veined', 'veined ', 'synonym', 7),
(3511, 'http://biosemantics.arizona.edu/ontologies/carex#white_hyaline', 'white hyaline', 'white hyaline ', 'synonym', 7),
(3512, 'http://biosemantics.arizona.edu/ontologies/carex#fewer', 'fewer', 'few ', 'synonym', 7),
(3513, 'http://biosemantics.arizona.edu/ontologies/carex#ovoid_orbicular', 'ovoid_orbicular', 'orbiculate ovoid ', 'synonym', 7),
(3514, 'http://biosemantics.arizona.edu/ontologies/carex#thin', 'thin', 'depth ', 'synonym', 7),
(3515, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_abaxial_leaf_blade', 'texture of abaxial leaf blade', 'perceived texture ', 'synonym', 7),
(3516, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_leaf_per_stem', 'number of leaf per stem', 'perceived quantity ', 'synonym', 7),
(3517, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_staminate_scale', 'texture of staminate scale', 'perceived texture ', 'synonym', 7),
(3518, 'http://biosemantics.arizona.edu/ontologies/carex#retrorse_scabrous', 'retrorse_scabrous', 'scabrous ', 'synonym', 7),
(3519, 'http://biosemantics.arizona.edu/ontologies/carex#oblate', 'oblate', 'shape ', 'synonym', 7),
(3520, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_shape_in_transverse_section', 'perceived shape in transverse ', 'perceived quality ', 'synonym', 7),
(3521, 'http://biosemantics.arizona.edu/ontologies/carex#small', 'small', 'size ', 'synonym', 7),
(3522, 'http://biosemantics.arizona.edu/ontologies/carex#pseudoumbel', 'pseudoumbel', 'architecture ', 'synonym', 7),
(3523, 'http://biosemantics.arizona.edu/ontologies/carex#short_awned', 'short_awned', 'awned ', 'synonym', 7),
(3524, 'http://biosemantics.arizona.edu/ontologies/carex#hypostomic', 'hypostomic', 'architecture ', 'synonym', 7),
(3525, 'http://biosemantics.arizona.edu/ontologies/carex#margin_of_staminate_scale', 'margin of staminate scale', 'margin ', 'synonym', 7),
(3526, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_shape', 'perceived shape', 'perceived quality ', 'synonym', 7),
(3527, 'http://biosemantics.arizona.edu/ontologies/carex#yellow_brown', 'yellow brown', 'brown yellow ', 'synonym', 7),
(3528, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_cuneate', 'broadly cuneate', 'cuneate ', 'synonym', 7),
(3529, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_achene', 'color of achene', 'perceived color ', 'synonym', 7),
(3530, 'http://biosemantics.arizona.edu/ontologies/carex#dark_red', 'dark red', 'dark red ', 'synonym', 7),
(3531, 'http://biosemantics.arizona.edu/ontologies/carex#elevated', 'elevated', 'prominence ', 'synonym', 7),
(3532, 'http://biosemantics.arizona.edu/ontologies/carex#obovoid_flat', 'obovoid flat', 'obovoid flat ', 'synonym', 7),
(3533, 'http://biosemantics.arizona.edu/ontologies/carex#setose_ciliate', 'setose_ciliate', 'ciliate ', 'synonym', 7),
(3534, 'http://biosemantics.arizona.edu/ontologies/carex#larger', 'larger', 'relative size ', 'synonym', 7),
(3535, 'http://biosemantics.arizona.edu/ontologies/carex#equal_to', 'equal to', 'relational size ', 'synonym', 7),
(3536, 'http://biosemantics.arizona.edu/ontologies/carex#neck', 'neck', 'anatomical structure ', 'synonym', 7),
(3537, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_perigynium_body', 'length of perigynium body', 'perceived length ', 'synonym', 7),
(3538, 'http://biosemantics.arizona.edu/ontologies/carex#linear_clavate', 'linear_clavate', 'clavate ', 'synonym', 7),
(3539, 'http://biosemantics.arizona.edu/ontologies/carex#long_clavate', 'long_clavate', 'clavate ', 'synonym', 7),
(3540, 'http://biosemantics.arizona.edu/ontologies/carex#enfolding_margin', 'enfolding margin', 'margin ', 'synonym', 7),
(3541, 'http://biosemantics.arizona.edu/ontologies/carex#petal', 'petal', 'reproductive structure ', 'synonym', 7),
(3542, 'http://biosemantics.arizona.edu/ontologies/carex#subterete', 'subterete', 'terete ', 'synonym', 7),
(3543, 'http://biosemantics.arizona.edu/ontologies/carex#beakless', 'beakless', 'architecture ', 'synonym', 7),
(3544, 'http://biosemantics.arizona.edu/ontologies/carex#abrupt', 'abrupt', 'shape ', 'synonym', 7),
(3545, 'http://biosemantics.arizona.edu/ontologies/carex#otuse', 'otuse', 'shape ', 'synonym', 7),
(3546, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_anther', 'base of anther', 'base ', 'synonym', 7),
(3547, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_margin_of_staminate_scale', 'color of margin of staminate s', 'perceived color ', 'synonym', 7),
(3548, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_most_leaf', 'proximal_most leaf', 'leaf ', 'synonym', 7),
(3549, 'http://biosemantics.arizona.edu/ontologies/carex#wing', 'wing', 'anatomical structure ', 'synonym', 7),
(3550, 'http://biosemantics.arizona.edu/ontologies/carex#tinge', 'tinge', 'toreview ', 'synonym', 7),
(3551, 'http://biosemantics.arizona.edu/ontologies/carex#rosette', 'rosette', 'arrangement ', 'synonym', 7),
(3552, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_perigynium_body', 'base_of_perigynium_body', 'base ', 'synonym', 7),
(3553, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_bract_sheath_inner_band', 'apex of bract sheath inner ban', 'apex ', 'synonym', 7),
(3554, 'http://biosemantics.arizona.edu/ontologies/carex#longest_bract_blade', 'longest bract blade', 'bract blade ', 'synonym', 7),
(3555, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_adaxial_leaf_blade', 'texture of adaxial leaf blade', 'perceived texture ', 'synonym', 7),
(3556, 'http://biosemantics.arizona.edu/ontologies/carex#tan_hyaline', 'tan hyaline', 'orange brown light brown hyaline brown ', 'synonym', 7),
(3557, 'http://biosemantics.arizona.edu/ontologies/carex#darkened', 'darkened', 'color brightness ', 'synonym', 7),
(3558, 'http://biosemantics.arizona.edu/ontologies/carex#leakflike', 'leakflike', 'toreview ', 'synonym', 7),
(3559, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_elliptic', 'narrowly elliptic', 'elliptic ', 'synonym', 7),
(3560, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_orifice_of_perigynium_beak', 'shape of orifice of perigynium', 'perceived shape ', 'synonym', 7),
(3561, 'http://biosemantics.arizona.edu/ontologies/carex#rounded', 'rounded', 'shape ', 'synonym', 7),
(3562, 'http://biosemantics.arizona.edu/ontologies/carex#capillary', 'capillary', 'shape ', 'synonym', 7),
(3563, 'http://biosemantics.arizona.edu/ontologies/carex#flattened', 'flattened', 'shape depth ', 'synonym', 7),
(3564, 'http://biosemantics.arizona.edu/ontologies/carex#position', 'position', 'quality ', 'synonym', 7),
(3565, 'http://biosemantics.arizona.edu/ontologies/carex#point_of_attachment', 'point of attachment', 'point ', 'synonym', 7),
(3566, 'http://biosemantics.arizona.edu/ontologies/carex#finer', 'finer', 'size ', 'synonym', 7),
(3567, 'http://biosemantics.arizona.edu/ontologies/carex#medium_saturated', 'medium saturated', 'color saturation ', 'synonym', 7),
(3568, 'http://biosemantics.arizona.edu/ontologies/carex#toreview', 'toreview', 'Thing ', 'synonym', 7),
(3569, 'http://biosemantics.arizona.edu/ontologies/carex#adaxial_bract_blade', 'adaxial bract blade', 'adaxial surface ', 'synonym', 7),
(3570, 'http://biosemantics.arizona.edu/ontologies/carex#pale_red_brown', 'pale red brown', 'pale ', 'synonym', 7),
(3571, 'http://biosemantics.arizona.edu/ontologies/carex#shortest', 'shortest', 'relative length ', 'synonym', 7),
(3572, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_lanceolate', 'oblong_lanceolate', 'lanceolate oblong ', 'synonym', 7),
(3573, 'http://biosemantics.arizona.edu/ontologies/carex#endosperm', 'endosperm', 'reproductive structure ', 'synonym', 7),
(3574, 'http://biosemantics.arizona.edu/ontologies/carex#short_apiculate', 'short_apiculate', 'apiculate ', 'synonym', 7),
(3575, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_cauline_bract', 'proximal cauline bract', 'proximal bract ', 'synonym', 7),
(3576, 'http://biosemantics.arizona.edu/ontologies/carex#short_prolonged', 'short_prolonged', 'prolonged ', 'synonym', 7),
(3577, 'http://biosemantics.arizona.edu/ontologies/carex#beak', 'beak', 'anatomical structure ', 'synonym', 7),
(3578, 'http://biosemantics.arizona.edu/ontologies/carex#multiseriate', 'multiseriate', 'arrangement ', 'synonym', 7),
(3579, 'http://biosemantics.arizona.edu/ontologies/carex#exceeding', 'exceeding', 'position ', 'synonym', 7),
(3580, 'http://biosemantics.arizona.edu/ontologies/carex#short_ovoid', 'short_ovoid', 'ovoid ', 'synonym', 7),
(3581, 'http://biosemantics.arizona.edu/ontologies/carex#black_mottled', 'black mottled', 'mottled black ', 'synonym', 7),
(3582, 'http://biosemantics.arizona.edu/ontologies/carex#inflation_of_perigynium', 'inflation of perigynium', 'perceived inflation ', 'synonym', 7),
(3583, 'http://biosemantics.arizona.edu/ontologies/carex#linear_lanceolate', 'linear lanceolate', 'lanceolate linear ', 'synonym', 7),
(3584, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_length', 'perceived length', 'perceived size ', 'synonym', 7),
(3585, 'http://biosemantics.arizona.edu/ontologies/carex#gynecadrous', 'gynecadrous', 'architecture ', 'synonym', 7),
(3586, 'http://biosemantics.arizona.edu/ontologies/carex#short_pubescent', 'short_pubescent', 'pubescent ', 'synonym', 7),
(3587, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_elliptic', 'ovate_elliptic', 'ovate elliptic ', 'synonym', 7),
(3588, 'http://biosemantics.arizona.edu/ontologies/carex#longer_than', 'longer than', 'relational size ', 'synonym', 7),
(3589, 'http://biosemantics.arizona.edu/ontologies/carex#subcapitate', 'subcapitate', 'capitate ', 'synonym', 7),
(3590, 'http://biosemantics.arizona.edu/ontologies/carex#orbicular', 'orbicular', 'shape ', 'synonym', 7),
(3591, 'http://biosemantics.arizona.edu/ontologies/carex#size', 'size', 'quality ', 'synonym', 7),
(3592, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_oblong', 'ovate_oblong', 'ovate oblong ', 'synonym', 7),
(3593, 'http://biosemantics.arizona.edu/ontologies/carex#medium', 'medium', 'medium saturated ', 'synonym', 7),
(3594, 'http://biosemantics.arizona.edu/ontologies/carex#unwrinkled', 'unwrinkled', 'relief ', 'synonym', 7),
(3595, 'http://biosemantics.arizona.edu/ontologies/carex#cellular', 'cellular', 'architecture ', 'synonym', 7),
(3596, 'http://biosemantics.arizona.edu/ontologies/carex#short_oblong', 'short_oblong', 'oblong ', 'synonym', 7),
(3597, 'http://biosemantics.arizona.edu/ontologies/carex#white_green', 'white green', 'white green ', 'synonym', 7),
(3598, 'http://biosemantics.arizona.edu/ontologies/carex#closed', 'closed', 'condition ', 'synonym', 7),
(3599, 'http://biosemantics.arizona.edu/ontologies/carex#spreading_pubescent', 'spreading_pubescent', 'pubescent ', 'synonym', 7),
(3600, 'http://biosemantics.arizona.edu/ontologies/carex#rhomboid_ovoid', 'rhomboid_ovoid', 'ovoid rhomboid ', 'synonym', 7),
(3601, 'http://biosemantics.arizona.edu/ontologies/carex#clump', 'clump', 'anatomical structure ', 'synonym', 7),
(3602, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_rhomboid', 'ovate_rhomboid', 'rhomboid ovate ', 'synonym', 7),
(3603, 'http://biosemantics.arizona.edu/ontologies/carex#compressed', 'compressed', 'shape ', 'synonym', 7),
(3604, 'http://biosemantics.arizona.edu/ontologies/carex#narrower_than', 'narrower than', 'relational size ', 'synonym', 7),
(3605, 'http://biosemantics.arizona.edu/ontologies/carex#scaberulous', 'scaberulous', 'scabrous ', 'synonym', 7),
(3606, 'http://biosemantics.arizona.edu/ontologies/carex#foliage', 'foliage', 'anatomical structure ', 'synonym', 7),
(3607, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_quantity', 'perceived quantity', 'perceived quality ', 'synonym', 7),
(3608, 'http://biosemantics.arizona.edu/ontologies/carex#Length_of_testnoun1', 'Length of testnoun1', 'perceived-length ', 'synonym', 8),
(3609, 'http://biosemantics.arizona.edu/ontologies/carex#obvious', 'obvious', 'prominence ', 'synonym', 7),
(3610, 'http://biosemantics.arizona.edu/ontologies/carex#embryo', 'embryo', 'reproductive structure ', 'synonym', 7),
(3611, 'http://biosemantics.arizona.edu/ontologies/carex#relative_width', 'relative width', 'relative size width ', 'synonym', 7),
(3612, 'http://biosemantics.arizona.edu/ontologies/carex#puckered', 'puckered', 'relief ', 'synonym', 7),
(3613, 'http://biosemantics.arizona.edu/ontologies/carex#dark_chestnut', 'dark chestnut', 'chestnut dark brown ', 'synonym', 7),
(3614, 'http://biosemantics.arizona.edu/ontologies/carex#rounded_trigonous', 'rounded_trigonous', 'trigonous rounded ', 'synonym', 7),
(3615, 'http://biosemantics.arizona.edu/ontologies/carex#pistillate_scale', 'pistillate scale', 'scale ', 'synonym', 7),
(3616, 'http://biosemantics.arizona.edu/ontologies/carex#orbiculate_flat', 'orbiculate flat', 'orbiculate flat ', 'synonym', 7),
(3617, 'http://biosemantics.arizona.edu/ontologies/carex#purple_tinged', 'purple tinged', 'tinged purple ', 'synonym', 7),
(3618, 'http://biosemantics.arizona.edu/ontologies/carex#tipped', 'tipped', 'architecture ', 'synonym', 7),
(3619, 'http://biosemantics.arizona.edu/ontologies/carex#appressed_pubescent', 'appressed_pubescent', 'pubescent pubescence ', 'synonym', 7),
(3620, 'http://biosemantics.arizona.edu/ontologies/carex#hood_shaped', 'hood shaped', 'shape ', 'synonym', 7),
(3621, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_tooth_of_perigynium_beak', 'color of tooth of perigynium b', 'perceived color ', 'synonym', 7),
(3622, 'http://biosemantics.arizona.edu/ontologies/carex#arching', 'arching', 'orientation ', 'synonym', 7),
(3623, 'http://biosemantics.arizona.edu/ontologies/carex#planoconvex', 'planoconvex', 'shape ', 'synonym', 7),
(3624, 'http://biosemantics.arizona.edu/ontologies/carex#diameter', 'diameter', 'size ', 'synonym', 7),
(3625, 'http://biosemantics.arizona.edu/ontologies/carex#pubescence_%28structure%29', 'pubescence (structure)', 'anatomical structure ', 'synonym', 7),
(3626, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_obovate', 'elliptic_obovate', 'obovate elliptic ', 'synonym', 7),
(3627, 'http://biosemantics.arizona.edu/ontologies/carex#lanceolate_oblong', 'lanceolate_oblong', 'lanceolate oblong ', 'synonym', 7),
(3628, 'http://biosemantics.arizona.edu/ontologies/carex#subrounded', 'subrounded', 'rounded ', 'synonym', 7),
(3629, 'http://biosemantics.arizona.edu/ontologies/carex#testtype3_of_testnoun3', 'testtype3_of_testnoun3', 'toreview ', 'synonym', 8),
(3630, 'http://biosemantics.arizona.edu/ontologies/carex#bractlet', 'bractlet', 'bract ', 'synonym', 7),
(3631, 'http://biosemantics.arizona.edu/ontologies/carex#scabrous_margined', 'scabrous_margined', 'margined ', 'synonym', 7),
(3632, 'http://biosemantics.arizona.edu/ontologies/carex#subobtuse', 'subobtuse', 'obtuse ', 'synonym', 7),
(3633, 'http://biosemantics.arizona.edu/ontologies/carex#subserrulate', 'subserrulate', 'serrulate ', 'synonym', 7),
(3634, 'http://biosemantics.arizona.edu/ontologies/carex#low', 'low', 'position ', 'synonym', 7),
(3635, 'http://biosemantics.arizona.edu/ontologies/carex#ladder_fibrillose', 'ladder fibrillose', 'pubescence ', 'synonym', 7),
(3636, 'http://biosemantics.arizona.edu/ontologies/carex#midway', 'midway', 'position ', 'synonym', 7),
(3637, 'http://biosemantics.arizona.edu/ontology/carex#anatomical_structure', 'anatomical_structure', '', 'synonym', 7),
(3638, 'http://biosemantics.arizona.edu/ontologies/carex#overtoppped', 'overtoppped', 'position ', 'synonym', 7),
(3639, 'http://biosemantics.arizona.edu/ontologies/carex#achene_side', 'achene side', 'side ', 'synonym', 7),
(3640, 'http://biosemantics.arizona.edu/ontologies/carex#short_sheathed', 'short_sheathed', 'sheathed ', 'synonym', 7),
(3641, 'http://biosemantics.arizona.edu/ontologies/carex#leaf_blade_margin', 'leaf blade margin', 'margin ', 'synonym', 7),
(3642, 'http://biosemantics.arizona.edu/ontologies/carex#distalmost_lateral_bract', 'distalmost lateral bract', 'bract ', 'synonym', 7),
(3643, 'http://biosemantics.arizona.edu/ontologies/carex#relative_size', 'relative size', 'size ', 'synonym', 7),
(3644, 'http://biosemantics.arizona.edu/ontologies/carex#slender_peduncle', 'slender peduncle', 'peduncle ', 'synonym', 7),
(3645, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_stem', 'color of stem', 'perceived color ', 'synonym', 7),
(3646, 'http://biosemantics.arizona.edu/ontologies/carex#gold', 'gold', 'colored ', 'synonym', 7),
(3647, 'http://biosemantics.arizona.edu/ontologies/carex#remote', 'remote', 'toreview ', 'synonym', 7),
(3648, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_distal_internode_of_inflorescence', 'texture of distal internode of', 'perceived texture ', 'synonym', 7),
(3649, 'http://biosemantics.arizona.edu/ontologies/carex#dwarf', 'dwarf', 'height ', 'synonym', 7),
(3650, 'http://biosemantics.arizona.edu/ontologies/carex#defined', 'defined', 'prominence ', 'synonym', 7),
(3651, 'http://biosemantics.arizona.edu/ontologies/carex#remnant', 'remnant', 'anatomical structure ', 'synonym', 7),
(3652, 'http://biosemantics.arizona.edu/ontologies/carex#wine_red', 'wine_red', 'red ', 'synonym', 7),
(3653, 'http://biosemantics.arizona.edu/ontologies/carex#flowering', 'flowering', 'life cycle ', 'synonym', 7),
(3654, 'http://biosemantics.arizona.edu/ontologies/carex#uninflated', 'uninflated', 'size ', 'synonym', 7),
(3655, 'http://biosemantics.arizona.edu/ontologies/carex#granular_papillose', 'granular_papillose', 'papillose ', 'synonym', 7),
(3656, 'http://biosemantics.arizona.edu/ontologies/carex#youngest', 'youngest', 'life cycle ', 'synonym', 7),
(3657, 'http://biosemantics.arizona.edu/ontologies/carex#previous_leaf', 'previous leaf', 'leaf ', 'synonym', 7),
(3658, 'http://biosemantics.arizona.edu/ontologies/carex#distal_internode_of_inflorescence', 'distal internode of infloresce', 'distal internode ', 'synonym', 7),
(3659, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_stem', 'length of stem', 'perceived length ', 'synonym', 7),
(3660, 'http://biosemantics.arizona.edu/ontologies/carex#basal_node', 'basal node', 'node ', 'synonym', 7),
(3661, 'http://biosemantics.arizona.edu/ontologies/carex#scabriduous', 'scabriduous', 'relief ', 'synonym', 7),
(3662, 'http://biosemantics.arizona.edu/ontologies/carex#widest_leaf_blade', 'widest leaf_blade', 'leaf blade ', 'synonym', 7),
(3663, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_apex_of_sheath_inner_band', 'shape of apex of sheath inner ', 'perceived shape ', 'synonym', 7),
(3664, 'http://biosemantics.arizona.edu/ontologies/carex#greenish_hyaline', 'greenish hyaline', 'hyaline ', 'synonym', 7),
(3665, 'http://biosemantics.arizona.edu/ontologies/carex#yellowbrown_tinged', 'yellow brown tinged', 'tinged brown yellow ', 'synonym', 7),
(3666, 'http://biosemantics.arizona.edu/ontologies/carex#subapical', 'subapical', 'position ', 'synonym', 7),
(3667, 'http://biosemantics.arizona.edu/ontologies/carex#tinged', 'tinged', 'multi_colored ', 'synonym', 7),
(3668, 'http://biosemantics.arizona.edu/ontologies/carex#crowded', 'crowded', 'arrangement ', 'synonym', 7),
(3669, 'http://biosemantics.arizona.edu/ontologies/carex#compressed_ovoid', 'compressed_ovoid', 'ovoid compressed ', 'synonym', 7),
(3670, 'http://biosemantics.arizona.edu/ontologies/carex#adaxial_flap', 'adaxial flap', 'flap ', 'synonym', 7),
(3671, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_margin_of_leaf_blade', 'color of margin of leaf blade', 'perceived color ', 'synonym', 7),
(3672, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_stem', 'texture of stem', 'perceived texture ', 'synonym', 7),
(3673, 'http://biosemantics.arizona.edu/ontologies/carex#dark_purple', 'dark purple', 'dark purple ', 'synonym', 7),
(3674, 'http://biosemantics.arizona.edu/ontologies/carex#free_limb', 'free limb', 'anatomical structure ', 'synonym', 7),
(3675, 'http://biosemantics.arizona.edu/ontologies/carex#longer_peduncle', 'longer peduncle', 'peduncle ', 'synonym', 7),
(3676, 'http://biosemantics.arizona.edu/ontologies/carex#dark_redbrown', 'dark red brown', 'dark red dark brown red brown ', 'synonym', 7),
(3677, 'http://biosemantics.arizona.edu/ontologies/carex#ligule', 'ligule', 'anatomical structure ', 'synonym', 7),
(3678, 'http://biosemantics.arizona.edu/ontologies/carex#midway_of_rhizome_internode', 'midway of rhizome internode', 'midway ', 'synonym', 9),
(3679, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_apex_of_bract_sheath_inner_band', 'shape of apex of bract sheath ', 'perceived shape ', 'synonym', 7),
(3680, 'http://biosemantics.arizona.edu/ontologies/carex#headlike', 'headlike', 'architecture ', 'synonym', 7),
(3681, 'http://biosemantics.arizona.edu/ontologies/carex#subglabrous', 'subglabrous', 'glabrous ', 'synonym', 7),
(3682, 'http://biosemantics.arizona.edu/ontologies/carex#bidentulate', 'bidentulate', 'architecture ', 'synonym', 7),
(3683, 'http://biosemantics.arizona.edu/ontologies/carex#herbacous', 'herbacous', 'texture growth form ', 'synonym', 7),
(3684, 'http://biosemantics.arizona.edu/ontologies/carex#longest', 'longest', 'relative length ', 'synonym', 7),
(3685, 'http://biosemantics.arizona.edu/ontologies/carex#tattered', 'tattered', 'shape ', 'synonym', 7),
(3686, 'http://biosemantics.arizona.edu/ontologies/carex#cuneate_attenuate', 'cuneate_attenuate', 'cuneate attenuate ', 'synonym', 7),
(3687, 'http://biosemantics.arizona.edu/ontologies/carex#papillose_abaxially', 'papillose abaxially', 'papillose ', 'synonym', 7),
(3688, 'http://biosemantics.arizona.edu/ontologies/carex#parenchyma', 'parenchyma', 'anatomical structure ', 'synonym', 7),
(3689, 'http://biosemantics.arizona.edu/ontologies/carex#linear_cylindric', 'linear_cylindric', 'cylindric ', 'synonym', 7),
(3690, 'http://biosemantics.arizona.edu/ontologies/carex#lateral_perigynium', 'lateral perigynium', 'perigynium ', 'synonym', 7),
(3691, 'http://biosemantics.arizona.edu/ontologies/carex#many_veined', 'many_veined', 'veined ', 'synonym', 7),
(3692, 'http://biosemantics.arizona.edu/ontologies/carex#nonoverlapping', 'nonoverlapping', 'arrangement ', 'synonym', 7),
(3693, 'http://biosemantics.arizona.edu/ontologies/carex#brownish_hyaline', 'brownish hyaline', 'hyaline ', 'synonym', 7),
(3694, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_adaxial_bract_blade', 'texture of adaxial bract blade', 'perceived texture ', 'synonym', 7),
(3695, 'http://biosemantics.arizona.edu/ontologies/carex#differentiated', 'differentiated', 'variability ', 'synonym', 7),
(3696, 'http://biosemantics.arizona.edu/ontologies/carex#stellate', 'stellate', 'arrangement ', 'synonym', 7),
(3697, 'http://biosemantics.arizona.edu/ontologies/carex#clavate_cylindric', 'clavate_cylindric', 'clavate cylindric ', 'synonym', 7),
(3698, 'http://biosemantics.arizona.edu/ontologies/carex#empty', 'empty', 'architecture ', 'synonym', 7),
(3699, 'http://biosemantics.arizona.edu/ontologies/carex#erose_ciliate', 'erose_ciliate', 'ciliate ', 'synonym', 7),
(3700, 'http://biosemantics.arizona.edu/ontologies/carex#subapical_band', 'subapical band', 'band ', 'synonym', 7),
(3701, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_veins_in_staminate_scale', 'number of veins in staminate s', 'perceived quantity ', 'synonym', 7),
(3702, 'http://biosemantics.arizona.edu/ontologies/carex#unispicate', 'unispicate', 'spicate ', 'synonym', 7),
(3703, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_blade', 'proximal blade', 'blade ', 'synonym', 7),
(3704, 'http://biosemantics.arizona.edu/ontologies/carex#midstripe', 'midstripe', 'stripe ', 'synonym', 7),
(3705, 'http://biosemantics.arizona.edu/ontologies/carex#anthela', 'anthela', 'corymb ', 'synonym', 7),
(3706, 'http://purl.obolibrary.org/obo/UBERON_0001062', 'anatomical entity', '', 'synonym', 7),
(3707, 'http://biosemantics.arizona.edu/ontologies/carex#olive_brown', 'olive brown', 'olive green brown ', 'synonym', 7),
(3708, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_circular', 'elliptic_circular', 'circular elliptic ', 'synonym', 7),
(3709, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_staminate_scale', 'width of staminate scale', 'perceived width ', 'synonym', 7),
(3710, 'http://biosemantics.arizona.edu/ontologies/carex#satiny_luster', 'satiny luster', 'sheen ', 'synonym', 7),
(3711, 'http://biosemantics.arizona.edu/ontologies/carex#rhombic_oblong', 'rhombic_oblong', 'rhombic oblong ', 'synonym', 7),
(3712, 'http://biosemantics.arizona.edu/ontologies/carex#achene', 'achene', 'fruit ', 'synonym', 7),
(3713, 'http://biosemantics.arizona.edu/ontologies/carex#perennial', 'perennial', 'duration ', 'synonym', 7),
(3714, 'http://biosemantics.arizona.edu/ontologies/carex#obpyriform', 'obpyriform', 'shape ', 'synonym', 7),
(3715, 'http://biosemantics.arizona.edu/ontologies/carex#glaucescent', 'glaucescent', 'coating ', 'synonym', 7),
(3716, 'http://biosemantics.arizona.edu/ontologies/carex#subwoody', 'subwoody', 'woody ', 'synonym', 7),
(3717, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_leaf_blade_margin', 'color of leaf blade margin', 'perceived color ', 'synonym', 7),
(3718, 'http://biosemantics.arizona.edu/ontologies/carex#abaxial_leaf_blade', 'abaxial leaf blade', 'abaxial surface ', 'synonym', 7),
(3719, 'http://biosemantics.arizona.edu/ontologies/carex#front_apex', 'front apex', 'toreview ', 'synonym', 7),
(3720, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_bract_blade', 'width of bract blade', 'perceived width ', 'synonym', 7),
(3721, 'http://biosemantics.arizona.edu/ontologies/carex#bidentate', 'bidentate', 'toothed ', 'synonym', 7),
(3722, 'http://biosemantics.arizona.edu/ontologies/carex#sharp_angled', 'sharp_angled', 'angled ', 'synonym', 7),
(3723, 'http://biosemantics.arizona.edu/ontologies/carex#rolled', 'rolled', 'shape ', 'synonym', 7),
(3724, 'http://biosemantics.arizona.edu/ontologies/carex#secondary_inflorescence', 'secondary inflorescence', 'inflorescence ', 'synonym', 7),
(3725, 'http://biosemantics.arizona.edu/ontologies/carex#pale_silvery_green', 'pale silvery green', 'silvery green pale green ', 'synonym', 7),
(3726, 'http://biosemantics.arizona.edu/ontologies/carex#wider_than', 'wider than', 'relational size ', 'synonym', 7),
(3727, 'http://biosemantics.arizona.edu/ontologies/carex#adjacent_proximal_node_of_inflorescence_unit', 'adjacent_proximal_node_of_infl', 'adjacent_node_of_inflorescence_unit ', 'synonym', 7),
(3728, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_filament', 'base of filament', 'base ', 'synonym', 7),
(3729, 'http://biosemantics.arizona.edu/ontologies/carex#abaxial_suture', 'abaxial suture', 'suture ', 'synonym', 7),
(3730, 'http://biosemantics.arizona.edu/ontologies/carex#sheen', 'sheen', 'reflectance ', 'synonym', 7),
(3731, 'http://biosemantics.arizona.edu/ontologies/carex#inflorescence_sheath', 'inflorescence sheath', 'sheath ', 'synonym', 7),
(3732, 'http://biosemantics.arizona.edu/ontologies/carex#older', 'older', 'life cycle ', 'synonym', 7),
(3733, 'http://biosemantics.arizona.edu/ontologies/carex#golden_green', 'gold green', 'green gold ', 'synonym', 7),
(3734, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_cylindric', 'oblong_cylindric', 'cylindric ', 'synonym', 7),
(3735, 'http://biosemantics.arizona.edu/ontologies/carex#few', 'few', 'quantity ', 'synonym', 7),
(3736, 'http://biosemantics.arizona.edu/ontologies/carex#septum', 'septum', 'anatomical structure ', 'synonym', 7),
(3737, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_abaxial_bract_blade', 'texture of abaxial bract blade', 'perceived texture ', 'synonym', 7),
(3738, 'http://biosemantics.arizona.edu/ontologies/carex#capitulum', 'capitulum', 'inflorescence ', 'synonym', 7),
(3739, 'http://biosemantics.arizona.edu/ontologies/carex#short_mucronate', 'short_mucronate', 'mucronate ', 'synonym', 7),
(3740, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_veins_in_pistillate_scale', 'number of veins in pistillate ', 'perceived quantity ', 'synonym', 7),
(3741, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_bract_blade', 'apex of bract blade', 'apex ', 'synonym', 7),
(3742, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_peduncle_of_inflorescence_unit', 'proximal peduncle of infloresc', 'proximal peduncle ', 'synonym', 7),
(3743, 'http://biosemantics.arizona.edu/ontologies/carex#red_brown', 'red brown', 'red brown ', 'synonym', 7),
(3744, 'http://biosemantics.arizona.edu/ontologies/carex#subpapillose', 'subpapillose', 'papillose ', 'synonym', 7),
(3745, 'http://biosemantics.arizona.edu/ontologies/carex#short_stipitate', 'short_stipitate', 'stipitate ', 'synonym', 7),
(3746, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_ovate', 'narrowly ovate', 'ovate ', 'synonym', 7),
(3747, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_portion', 'proximal portion', 'portion ', 'synonym', 7),
(3748, 'http://biosemantics.arizona.edu/ontologies/carex#distal_sheath', 'distal sheath', 'sheath ', 'synonym', 7),
(3749, 'http://biosemantics.arizona.edu/ontologies/carex#parallel', 'parallel', 'arrangement ', 'synonym', 7),
(3750, 'http://biosemantics.arizona.edu/ontologies/carex#short_ciliate', 'short_ciliate', 'ciliate ', 'synonym', 7),
(3751, 'http://biosemantics.arizona.edu/ontologies/carex#cespitose', 'cespitose', 'growth form ', 'synonym', 7),
(3752, 'http://biosemantics.arizona.edu/ontologies/carex#plant', 'plant', 'anatomical structure ', 'synonym', 7),
(3753, 'http://biosemantics.arizona.edu/ontologies/carex#modified', 'modified', 'development ', 'synonym', 7),
(3754, 'http://biosemantics.arizona.edu/ontologies/carex#plane', 'plane', 'shape ', 'synonym', 7),
(3755, 'http://biosemantics.arizona.edu/ontologies/carex#abruptly_narrowed', 'abruptly narrowed', 'narrowed ', 'synonym', 7),
(3756, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_ovoid', 'narrowly ovoid', 'ovoid ', 'synonym', 7),
(3757, 'http://biosemantics.arizona.edu/ontologies/carex#subacute', 'subacute', 'acute ', 'synonym', 7),
(3758, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_ovate', 'oblong_ovate', 'ovate oblong ', 'synonym', 7),
(3759, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_sheath', 'color of sheath', 'perceived color ', 'synonym', 7),
(3760, 'http://biosemantics.arizona.edu/ontologies/carex#hood__shaped', 'hood__shaped', 'shape ', 'synonym', 7),
(3761, 'http://biosemantics.arizona.edu/ontologies/carex#erect_ascending', 'erect_ascending', 'ascending ', 'synonym', 7),
(3762, 'http://biosemantics.arizona.edu/ontologies/carex#narrow_hyaline', 'narrow_hyaline', 'hyaline ', 'synonym', 7),
(3763, 'http://biosemantics.arizona.edu/ontologies/carex#fringe', 'fringe', 'anatomical structure ', 'synonym', 7),
(3764, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_proximal_peduncle_of_inflorescence_unit', 'texture of proximal peduncle o', 'perceived texture ', 'synonym', 7),
(3765, 'http://biosemantics.arizona.edu/ontologies/carex#woody', 'woody', 'growth form ', 'synonym', 7),
(3766, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_pubescence', 'perceived pubescence', 'perceived quality ', 'synonym', 7),
(3767, 'http://biosemantics.arizona.edu/ontologies/carex#obpyramidal', 'obpyramidal', 'shape ', 'synonym', 7),
(3768, 'http://biosemantics.arizona.edu/ontologies/carex#growth_form_of_plant', 'growth form of plant', 'perceived growth form ', 'synonym', 7),
(3769, 'http://biosemantics.arizona.edu/ontologies/carex#diamond_shaped', 'diamond_shaped', 'shape ', 'synonym', 7),
(3770, 'http://biosemantics.arizona.edu/ontologies/carex#distributed', 'distributed', 'arrangement ', 'synonym', 7),
(3771, 'http://biosemantics.arizona.edu/ontologies/carex#squarrose_spreading', 'squarrose_spreading', 'spreading ', 'synonym', 7),
(3772, 'http://biosemantics.arizona.edu/ontologies/carex#nervation_of_perigynium', 'nervation of perigynium', 'venation ', 'synonym', 7),
(3773, 'http://biosemantics.arizona.edu/ontologies/carex#long_arching', 'long_arching', 'arching ', 'synonym', 7),
(3774, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_proximal_scale', 'base of proximal scale', 'base ', 'synonym', 7),
(3775, 'http://biosemantics.arizona.edu/ontologies/carex#ascending_spreading', 'ascending_spreading', 'spreading ', 'synonym', 7),
(3776, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_bract_sheath', 'color of bract sheath', 'perceived color ', 'synonym', 7),
(3777, 'http://biosemantics.arizona.edu/ontologies/carex#warty', 'warty', 'relief ', 'synonym', 7),
(3778, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_number', 'perceived number', 'perceived quality ', 'synonym', 7),
(3779, 'http://biosemantics.arizona.edu/ontologies/carex#nerve', 'nerve', 'anatomical structure ', 'synonym', 7),
(3780, 'http://biosemantics.arizona.edu/ontologies/carex#stout_rhizomatous', 'stout_rhizomatous', 'rhizomatous ', 'synonym', 7),
(3781, 'http://biosemantics.arizona.edu/ontologies/carex#white_iridescent', 'white iridescent', 'white iridescent ', 'synonym', 7),
(3782, 'http://biosemantics.arizona.edu/ontologies/carex#nerveless', 'nerveless', 'architecture ', 'synonym', 7),
(3783, 'http://biosemantics.arizona.edu/ontologies/carex#ovoid_oblong', 'ovoid_oblong', 'ovoid oblong ', 'synonym', 7),
(3784, 'http://biosemantics.arizona.edu/ontologies/carex#enveloped', 'enveloped', 'architecture ', 'synonym', 7),
(3785, 'http://biosemantics.arizona.edu/ontologies/carex#distalmost', 'distalmost', 'distal ', 'synonym', 7),
(3786, 'http://biosemantics.arizona.edu/ontologies/carex#curving', 'curving', 'shape ', 'synonym', 7),
(3787, 'http://biosemantics.arizona.edu/ontologies/carex#thin_winged', 'thin_winged', 'winged architecture ', 'synonym', 7),
(3788, 'http://biosemantics.arizona.edu/ontologies/carex#indented', 'indented', 'shape ', 'synonym', 7),
(3789, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_pistillate_scale', 'width of pistillate scale', 'perceived width ', 'synonym', 7),
(3790, 'http://biosemantics.arizona.edu/ontologies/carex#main_rib', 'main rib', 'rib ', 'synonym', 7),
(3791, 'http://biosemantics.arizona.edu/ontologies/carex#pollen_sac', 'pollen sac', 'anatomical structure ', 'synonym', 7),
(3792, 'http://biosemantics.arizona.edu/ontologies/carex#subfasciculate', 'subfasciculate', 'fasciculate ', 'synonym', 7),
(3793, 'http://biosemantics.arizona.edu/ontologies/carex#appressed_ascending', 'appressed_ascending', 'ascending ', 'synonym', 7),
(3794, 'http://biosemantics.arizona.edu/ontologies/carex#rib', 'rib', 'anatomical structure ', 'synonym', 7),
(3795, 'http://biosemantics.arizona.edu/ontologies/carex#fastigiate', 'fastigiate', 'arrangement ', 'synonym', 7),
(3796, 'http://biosemantics.arizona.edu/ontologies/carex#subobovate', 'subobovate', 'obovate ', 'synonym', 7),
(3797, 'http://biosemantics.arizona.edu/ontologies/carex#adjacent', 'adjacent', 'arrangement ', 'synonym', 7),
(3798, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_inflorescence_unit', 'width of inflorescence unit', 'perceived width ', 'synonym', 7),
(3799, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_perigynium_stipe', 'length of perigynium stipe', 'perceived length ', 'synonym', 7),
(3800, 'http://biosemantics.arizona.edu/ontologies/carex#emerging', 'emerging', 'toreview ', 'synonym', 7),
(3801, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_circular', 'ovate_circular', 'circular ovate ', 'synonym', 7),
(3802, 'http://biosemantics.arizona.edu/ontologies/carex#character_collection', 'character collection', '', 'synonym', 7),
(3803, 'http://biosemantics.arizona.edu/ontologies/carex#red_gold', 'red gold', 'red gold ', 'synonym', 7),
(3804, 'http://biosemantics.arizona.edu/ontologies/carex#brown_tinged', 'brown tinged', 'tinged brown ', 'synonym', 7),
(3805, 'http://biosemantics.arizona.edu/ontologies/carex#seeds', 'seeds', 'seed ', 'synonym', 7),
(3806, 'http://biosemantics.arizona.edu/ontologies/carex#ferruginous_yellow', 'ferruginous yellow', 'ferruginous yellow ', 'synonym', 7),
(3807, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_depth', 'perceived depth', 'perceived size ', 'synonym', 7),
(3808, 'http://biosemantics.arizona.edu/ontologies/carex#triquetrous', 'triquetrous', 'triangular ', 'synonym', 7),
(3809, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_inner_band_of_sheath', 'color of inner band of sheath', 'perceived color ', 'synonym', 7),
(3810, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_growth_form', 'perceived growth form', 'perceived quality ', 'synonym', 7),
(3811, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_diameter', 'perceived diameter', 'perceived size ', 'synonym', 7),
(3812, 'http://biosemantics.arizona.edu/ontologies/carex#surface_feature', 'surface feature', 'quality ', 'synonym', 7),
(3813, 'http://biosemantics.arizona.edu/ontologies/carex#relational_size', 'relational size', 'relational quality ', 'synonym', 7),
(3814, 'http://biosemantics.arizona.edu/ontologies/carex#single', 'single', 'quantity ', 'synonym', 7),
(3815, 'http://biosemantics.arizona.edu/ontologies/carex#y_shaped', 'y_shaped', 'shape ', 'synonym', 7),
(3816, 'http://biosemantics.arizona.edu/ontologies/carex#distal_leaf', 'distal leaf', 'leaf ', 'synonym', 7),
(3817, 'http://biosemantics.arizona.edu/ontologies/carex#shorter_than', 'shorter than', 'relational size ', 'synonym', 7);
INSERT INTO `confusingterm` (`termId`, `IRI`, `term`, `data`, `type`, `authorId`) VALUES
(3818, 'http://biosemantics.arizona.edu/ontologies/carex#nerve_of_staminate_scale', 'nerve of staminate scale', 'nerve ', 'synonym', 7),
(3819, 'http://biosemantics.arizona.edu/ontologies/carex#hairlike', 'hairlike', 'architecture ', 'synonym', 7),
(3820, 'http://biosemantics.arizona.edu/ontologies/carex#brown_purple', 'purple brown', 'purple brown ', 'synonym', 7),
(3821, 'http://biosemantics.arizona.edu/ontologies/carex#minutely_toothed', 'minutely toothed', 'toothed ', 'synonym', 7),
(3822, 'http://biosemantics.arizona.edu/ontologies/carex#obovoid_oblanceoloid', 'obovoid_oblanceoloid', 'obovoid oblanceolate ', 'synonym', 7),
(3823, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_branch', 'proximal branch', 'branch ', 'synonym', 7),
(3824, 'http://biosemantics.arizona.edu/ontologies/carex#anthesis', 'anthesis', 'life cycle ', 'synonym', 7),
(3825, 'http://biosemantics.arizona.edu/ontologies/carex#obovate_terete', 'obovate_terete', 'terete obovate ', 'synonym', 7),
(3826, 'http://biosemantics.arizona.edu/ontologies/carex#lanceovate_planoconvex', 'lanceovate_planoconvex', 'plano_convex lanceovate ', 'synonym', 7),
(3827, 'http://biosemantics.arizona.edu/ontologies/carex#wing_angled', 'wing_angled', 'angled ', 'synonym', 7),
(3828, 'http://biosemantics.arizona.edu/ontologies/carex#diameter_of_rhizome', 'diameter of rhizome', 'perceived diameter ', 'synonym', 7),
(3829, 'http://biosemantics.arizona.edu/ontologies/carex#nerve_of_pistillate_scale', 'nerve of pistillate scale', 'nerve ', 'synonym', 7),
(3830, 'http://biosemantics.arizona.edu/ontologies/carex#marginal_tooth', 'marginal tooth', 'toreview ', 'synonym', 7),
(3831, 'http://biosemantics.arizona.edu/ontologies/carex#panicle', 'panicle', 'inflorescence ', 'synonym', 7),
(3832, 'http://biosemantics.arizona.edu/ontologies/carex#ovoid_globose', 'ovoid_globose', 'ovoid globose ', 'synonym', 7),
(3833, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_inflation', 'perceived inflation', 'perceived quality ', 'synonym', 7),
(3834, 'http://biosemantics.arizona.edu/ontologies/carex#gynaecandrous', 'gynaecandrous', 'reproduction ', 'synonym', 7),
(3835, 'http://biosemantics.arizona.edu/ontologies/carex#flared', 'flared', 'shape ', 'synonym', 7),
(3836, 'http://biosemantics.arizona.edu/ontologies/carex#setae', 'setae', 'anatomical structure ', 'synonym', 7),
(3837, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_perigynia_per_inforescence_unit', 'number of perigynia per infore', 'perceived quantity ', 'synonym', 7),
(3838, 'http://biosemantics.arizona.edu/ontologies/carex#inconspiculous', 'inconspiculous', 'prominence ', 'synonym', 7),
(3839, 'http://biosemantics.arizona.edu/ontologies/carex#gynecandrous', 'gynecandrous', 'reproduction ', 'synonym', 7),
(3840, 'http://biosemantics.arizona.edu/ontologies/carex#silvery_brown', 'silvery brown', 'silvery brown ', 'synonym', 7),
(3841, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_obovate', 'narrowly obovate', 'obovate ', 'synonym', 7),
(3842, 'http://biosemantics.arizona.edu/ontologies/carex#darker', 'darker', 'color brightness ', 'synonym', 7),
(3843, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_pistillate_scale', 'shape of pistillate scale', 'perceived shape ', 'synonym', 7),
(3844, 'http://biosemantics.arizona.edu/ontologies/carex#dark_gold', 'dark gold', 'gold ', 'synonym', 7),
(3845, 'http://biosemantics.arizona.edu/ontologies/carex#multi_colored', 'multi_colored', 'coloration ', 'synonym', 7),
(3846, 'http://biosemantics.arizona.edu/ontologies/carex#lighter', 'lighter', 'color brightness ', 'synonym', 7),
(3847, 'http://biosemantics.arizona.edu/ontologies/carex#cross_vein', 'cross_vein', 'vein ', 'synonym', 7),
(3848, 'http://biosemantics.arizona.edu/ontologies/carex#cream_colored', 'cream_colored', 'white ', 'synonym', 7),
(3849, 'http://biosemantics.arizona.edu/ontologies/carex#distalmost_leaf', 'distalmost leaf', 'leaf ', 'synonym', 7),
(3850, 'http://biosemantics.arizona.edu/ontologies/carex#middle_portion', 'middle portion', 'portion ', 'synonym', 7),
(3851, 'http://biosemantics.arizona.edu/ontologies/carex#subclavate', 'subclavate', 'clavate ', 'synonym', 7),
(3852, 'http://biosemantics.arizona.edu/ontologies/carex#tussock', 'tussock', 'anatomical structure ', 'synonym', 7),
(3853, 'http://biosemantics.arizona.edu/ontologies/carex#congregated', 'congregated', 'arrangement ', 'synonym', 7),
(3854, 'http://biosemantics.arizona.edu/ontologies/carex#lanceloid', 'lanceloid', 'shape ', 'synonym', 7),
(3855, 'http://biosemantics.arizona.edu/ontologies/carex#central', 'central', 'position ', 'synonym', 7),
(3856, 'http://biosemantics.arizona.edu/ontologies/carex#1_nerved', '1_nerved', 'nerved ', 'synonym', 7),
(3857, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_globose', 'ovate_globose', 'ovate globose ', 'synonym', 7),
(3858, 'http://biosemantics.arizona.edu/ontologies/carex#pubescence_of_margin_of_staminate_scale', 'pubescence of margin of stamin', 'perceived pubescence ', 'synonym', 7),
(3859, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_tooth_of_perigynium_beak', 'length of tooth of perigynium ', 'perceived length ', 'synonym', 7),
(3860, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_filament', 'length of filament', 'perceived length ', 'synonym', 7),
(3861, 'http://biosemantics.arizona.edu/ontologies/carex#glumelike', 'glumelike', 'architecture ', 'synonym', 7),
(3862, 'http://biosemantics.arizona.edu/ontologies/carex#varying', 'varying', 'variability ', 'synonym', 7),
(3863, 'http://biosemantics.arizona.edu/ontologies/carex#obovate_orbicular', 'obovate_orbicular', 'orbiculate obovate ', 'synonym', 7),
(3864, 'http://biosemantics.arizona.edu/ontologies/carex#w_shaped', 'w_shaped', 'shape ', 'synonym', 7),
(3865, 'http://biosemantics.arizona.edu/ontologies/carex#fitting', 'fitting', 'size ', 'synonym', 7),
(3866, 'http://biosemantics.arizona.edu/ontologies/carex#channeled', 'channeled', 'shape ', 'synonym', 7),
(3867, 'http://biosemantics.arizona.edu/ontologies/carex#median_adaxial_groove', 'median adaxial groove', 'groove ', 'synonym', 7),
(3868, 'http://biosemantics.arizona.edu/ontologies/carex#seed_coat', 'seed coat', 'anatomical structure ', 'synonym', 7),
(3869, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_oblanceolate', 'elliptic_oblanceolate', 'oblanceolate elliptic ', 'synonym', 7),
(3870, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_proximal_peduncle_of_inflorescence_unit', 'length of proximal peduncle of', 'perceived length ', 'synonym', 7),
(3871, 'http://biosemantics.arizona.edu/ontologies/carex#distal_leaf_blade', 'distal leaf_blade', 'leaf blade ', 'synonym', 7),
(3872, 'http://biosemantics.arizona.edu/ontologies/carex#stellate_pubescent', 'stellate_pubescent', 'pubescent ', 'synonym', 7),
(3873, 'http://biosemantics.arizona.edu/ontologies/carex#amphistomic', 'amphistomic', 'architecture ', 'synonym', 7),
(3874, 'http://biosemantics.arizona.edu/ontologies/carex#sublanceolate', 'sublanceolate', 'lanceolate ', 'synonym', 7),
(3875, 'http://biosemantics.arizona.edu/ontologies/carex#rhombic_orbiculate', 'rhombic_orbiculate', 'orbiculate rhombic ', 'synonym', 7),
(3876, 'http://biosemantics.arizona.edu/ontologies/carex#overwintering', 'overwintering', 'duration ', 'synonym', 7),
(3877, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_acute', 'broadly acute', 'acute ', 'synonym', 7),
(3878, 'http://biosemantics.arizona.edu/ontologies/carex#medium_brightness', 'medium brightness', 'color brightness ', 'synonym', 7),
(3879, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_margin_of_leaf_blade', 'texture of margin of leaf blad', 'perceived texture ', 'synonym', 7),
(3880, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_lanceolate', 'narrowly lanceolate', 'lanceolate ', 'synonym', 7),
(3881, 'http://biosemantics.arizona.edu/ontologies/carex#primary_inflorescence', 'primary inflorescence', 'inflorescence ', 'synonym', 7),
(3882, 'http://biosemantics.arizona.edu/ontologies/carex#orientation_of_perigynium_beak', 'orientation of perigynium beak', 'perceived orientation ', 'synonym', 7),
(3883, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_cylindric', 'narrowly cylindric', 'cylindric ', 'synonym', 7),
(3884, 'http://biosemantics.arizona.edu/ontologies/carex#subinflated', 'subinflated', 'inflated ', 'synonym', 7),
(3885, 'http://biosemantics.arizona.edu/ontologies/carex#subglobose', 'subglobose', 'globose ', 'synonym', 7),
(3886, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_perigynium_beak', 'texture of perigynium beak', 'perceived texture ', 'synonym', 7),
(3887, 'http://biosemantics.arizona.edu/ontologies/carex#developed', 'developed', 'development ', 'synonym', 7),
(3888, 'http://biosemantics.arizona.edu/ontologies/carex#lanceolate_elliptic', 'lanceolate_elliptic', 'lanceolate elliptic ', 'synonym', 7),
(3889, 'http://biosemantics.arizona.edu/ontologies/carex#obdeltoid_obovoid', 'obdeltoid_obovoid', 'obdeltoid obovoid ', 'synonym', 7),
(3890, 'http://biosemantics.arizona.edu/ontologies/carex#m_shaped', 'm_shaped', 'shape ', 'synonym', 7),
(3891, 'http://biosemantics.arizona.edu/ontologies/carex#alpine', 'alpine', 'habitat ', 'synonym', 7),
(3892, 'http://biosemantics.arizona.edu/ontologies/carex#oblanceoloid', 'oblanceoloid', 'shape ', 'synonym', 7),
(3893, 'http://biosemantics.arizona.edu/ontologies/carex#truncate_erose', 'truncate_erose', 'erose ', 'synonym', 7),
(3894, 'http://biosemantics.arizona.edu/ontologies/carex#keel', 'keel', 'anatomical structure ', 'synonym', 7),
(3895, 'http://biosemantics.arizona.edu/ontologies/carex#veined', 'veined', 'architecture ', 'synonym', 7),
(3896, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_stem_in_transverse_section', 'shape of stem in transverse se', 'perceived shape in transverse section ', 'synonym', 7),
(3897, 'http://biosemantics.arizona.edu/ontologies/carex#subovate', 'subovate', 'ovate ', 'synonym', 7),
(3898, 'http://biosemantics.arizona.edu/ontologies/carex#vein_of_pistillate_scale', 'vein of pistillate scale', 'vein ', 'synonym', 7),
(3899, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_inflorescence_unit', 'widest point of inflorescence ', 'widest point ', 'synonym', 7),
(3900, 'http://biosemantics.arizona.edu/ontologies/carex#ciliate_margined', 'ciliate margined', 'margined ', 'synonym', 7),
(3901, 'http://biosemantics.arizona.edu/ontologies/carex#immature', 'immature', 'life cycle ', 'synonym', 7),
(3902, 'http://biosemantics.arizona.edu/ontologies/carex#tallest_culm', 'tallest culm', 'culm ', 'synonym', 7),
(3903, 'http://biosemantics.arizona.edu/ontologies/carex#spikes', 'spikes', 'spike ', 'synonym', 7),
(3904, 'http://biosemantics.arizona.edu/ontologies/carex#suberect', 'suberect', 'erect ', 'synonym', 7),
(3905, 'http://biosemantics.arizona.edu/ontologies/carex#compressed_obovoid', 'compressed_obovoid', 'obovoid compressed ', 'synonym', 7),
(3906, 'http://biosemantics.arizona.edu/ontologies/carex#winglike', 'winglike', 'architecture ', 'synonym', 7),
(3907, 'http://biosemantics.arizona.edu/ontologies/carex#spiked', 'spiked', 'architecture ', 'synonym', 7),
(3908, 'http://biosemantics.arizona.edu/ontologies/carex#scale_apex', 'scale apex', 'apex ', 'synonym', 7),
(3909, 'http://biosemantics.arizona.edu/ontologies/carex#peduncle', 'peduncle', 'anatomical structure ', 'synonym', 7),
(3910, 'http://biosemantics.arizona.edu/ontologies/carex#opposite_margin_of_staminate_scale', 'opposite margin of staminate s', 'margin of staminate scale ', 'synonym', 7),
(3911, 'http://biosemantics.arizona.edu/ontologies/carex#smooth_angled', 'smooth_angled', 'angled ', 'synonym', 7),
(3912, 'http://biosemantics.arizona.edu/ontologies/carex#silvery', 'silvery', 'gray ', 'synonym', 7),
(3913, 'http://biosemantics.arizona.edu/ontologies/carex#suborbiculate', 'suborbiculate', 'orbiculate ', 'synonym', 7),
(3914, 'http://biosemantics.arizona.edu/ontologies/carex#dorsal', 'dorsal', 'position ', 'synonym', 7),
(3915, 'http://biosemantics.arizona.edu/ontologies/carex#high', 'high', 'height ', 'synonym', 7),
(3916, 'http://biosemantics.arizona.edu/ontologies/carex#disk', 'disk', 'inflorescence ', 'synonym', 7),
(3917, 'http://biosemantics.arizona.edu/ontologies/carex#angled', 'angled', 'shape ', 'synonym', 7),
(3918, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_obovate', 'oblong_obovate', 'obovate oblong ', 'synonym', 7),
(3919, 'http://biosemantics.arizona.edu/ontologies/carex#corymb', 'corymb', 'inflorescence ', 'synonym', 7),
(3920, 'http://biosemantics.arizona.edu/ontologies/carex#widest_blade', 'widest blade', 'blade ', 'synonym', 7),
(3921, 'http://biosemantics.arizona.edu/ontologies/carex#puberulous', 'puberulous', 'pubescence ', 'synonym', 7),
(3922, 'http://biosemantics.arizona.edu/ontologies/carex#cladoprophyllate', 'cladoprophyllate', 'prophyllate ', 'synonym', 7),
(3923, 'http://biosemantics.arizona.edu/ontologies/carex#angle', 'angle', 'anatomical structure ', 'synonym', 7),
(3924, 'http://biosemantics.arizona.edu/ontologies/carex#longer', 'longer', 'relative length ', 'synonym', 7),
(3925, 'http://biosemantics.arizona.edu/ontologies/carex#scabrous_awned', 'scabrous_awned', 'awned ', 'synonym', 7),
(3926, 'http://biosemantics.arizona.edu/ontologies/carex#v_shaped', 'v_shaped', 'shape ', 'synonym', 7),
(3927, 'http://biosemantics.arizona.edu/ontologies/carex#wider', 'wider', 'relative width ', 'synonym', 7),
(3928, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_ellipsoid', 'broadly ellipsoid', 'ellipsoid ', 'synonym', 7),
(3929, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_elliptic', 'oblong_elliptic', 'elliptic oblong ', 'synonym', 7),
(3930, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_obovoid', 'oblong_obovoid', 'obovoid oblong ', 'synonym', 7),
(3931, 'http://biosemantics.arizona.edu/ontologies/carex#silvery_white', 'silvery white', 'white silvery ', 'synonym', 7),
(3932, 'http://biosemantics.arizona.edu/ontologies/carex#tough', 'tough', 'fragility ', 'synonym', 7),
(3933, 'http://biosemantics.arizona.edu/ontologies/carex#knobbed', 'knobbed', 'shape ', 'synonym', 7),
(3934, 'http://biosemantics.arizona.edu/ontologies/carex#sheathless', 'sheathless', 'architecture ', 'synonym', 7),
(3935, 'http://biosemantics.arizona.edu/ontologies/carex#collapsing', 'collapsing', 'architecture ', 'synonym', 7),
(3936, 'http://biosemantics.arizona.edu/ontologies/carex#awl_shaped', 'awl shaped', 'shape ', 'synonym', 7),
(3937, 'http://biosemantics.arizona.edu/ontologies/carex#narrowing', 'narrowing', 'narrow ', 'synonym', 7),
(3938, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_distance', 'perceived distance', 'perceived size ', 'synonym', 7),
(3939, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_ligule', 'length of ligule', 'perceived length ', 'synonym', 7),
(3940, 'http://biosemantics.arizona.edu/ontologies/carex#detatched', 'detatched', 'fixation ', 'synonym', 7),
(3941, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_inflorescence_unit', 'apex of inflorescence unit', 'apex ', 'synonym', 7),
(3942, 'http://biosemantics.arizona.edu/ontologies/carex#papillate', 'papillate', 'relief ', 'synonym', 7),
(3943, 'http://biosemantics.arizona.edu/ontologies/carex#short_peduncled', 'short_peduncled', 'peduncled ', 'synonym', 7),
(3944, 'http://biosemantics.arizona.edu/ontologies/carex#roughened', 'roughened', 'texture ', 'synonym', 7),
(3945, 'http://biosemantics.arizona.edu/ontologies/carex#densely_aggregated', 'densely aggregated', 'aggregated ', 'synonym', 7),
(3946, 'http://biosemantics.arizona.edu/ontologies/carex#pale_olive', 'pale olive', 'olive green pale green ', 'synonym', 7),
(3947, 'http://biosemantics.arizona.edu/ontologies/carex#blue_black', 'blue black', 'black blue ', 'synonym', 7),
(3948, 'http://biosemantics.arizona.edu/ontologies/carex#rough_hispidulous', 'rough_hispidulous', 'hispidulous ', 'synonym', 7),
(3949, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_leaf_blade', 'color of leaf blade', 'perceived color ', 'synonym', 7),
(3950, 'http://biosemantics.arizona.edu/ontologies/carex#flowering_stem', 'flowering_stem', 'stem ', 'synonym', 7),
(3951, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_margin', 'proximal margin', 'margin ', 'synonym', 7),
(3952, 'http://biosemantics.arizona.edu/ontologies/carex#brown_green', 'brown green', 'green brown ', 'synonym', 7),
(3953, 'http://biosemantics.arizona.edu/ontologies/carex#subentire', 'subentire', 'entire ', 'synonym', 7),
(3954, 'http://biosemantics.arizona.edu/ontologies/carex#speckled', 'speckled', 'multi_colored ', 'synonym', 7),
(3955, 'http://biosemantics.arizona.edu/ontologies/carex#loosely_aggregated', 'loosely aggregated', 'aggregated ', 'synonym', 7),
(3956, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_achene_in_transverse_section', 'shape of achene in transverse ', 'perceived shape in transverse section ', 'synonym', 7),
(3957, 'http://biosemantics.arizona.edu/ontologies/carex#obconic', 'obconic', 'shape ', 'synonym', 7),
(3958, 'http://biosemantics.arizona.edu/ontologies/carex#oblanceolate_elliptic', 'oblanceolate_elliptic', 'oblanceolate elliptic ', 'synonym', 7),
(3959, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_pistillate_scale', 'widest point of pistillate sca', 'widest point ', 'synonym', 7),
(3960, 'http://biosemantics.arizona.edu/ontologies/carex#separated', 'separated', 'arrangement ', 'synonym', 7),
(3961, 'http://biosemantics.arizona.edu/ontologies/carex#wrinkled', 'wrinkled', 'relief ', 'synonym', 7),
(3962, 'http://biosemantics.arizona.edu/ontologies/carex#apart', 'apart', 'arrangement ', 'synonym', 7),
(3963, 'http://biosemantics.arizona.edu/ontologies/carex#separate', 'separate', 'arrangement ', 'synonym', 7),
(3964, 'http://biosemantics.arizona.edu/ontologies/carex#enclosed', 'enclosed', 'toreview ', 'synonym', 7),
(3965, 'http://biosemantics.arizona.edu/ontologies/carex#cell', 'cell', 'anatomical structure ', 'synonym', 7),
(3966, 'http://biosemantics.arizona.edu/ontologies/carex#cross_section', 'cross section', 'anatomical structure ', 'synonym', 7),
(3967, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_inflorescence', 'apex of inflorescence', 'apex ', 'synonym', 7),
(3968, 'http://biosemantics.arizona.edu/ontologies/carex#orientation_of_perigynium', 'orientation of perigynium', 'perceived orientation ', 'synonym', 7),
(3969, 'http://biosemantics.arizona.edu/ontologies/carex#smooth_margined', 'smooth_margined', 'margined ', 'synonym', 7),
(3970, 'http://biosemantics.arizona.edu/ontologies/carex#mat_forming', 'mat_forming', 'growth form ', 'synonym', 7),
(3971, 'http://biosemantics.arizona.edu/ontologies/carex#foliage_leaf_blade', 'foliage leaf_blade', 'leaf blade ', 'synonym', 7),
(3972, 'http://biosemantics.arizona.edu/ontologies/carex#perigynium_stipe', 'perigynium stipe', 'stipe ', 'synonym', 7),
(3973, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_rhizome', 'apex of rhizome', 'apex ', 'synonym', 7),
(3974, 'http://biosemantics.arizona.edu/ontologies/carex#perceived-width', 'perceived-width', '', 'synonym', 7),
(3975, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_quality', 'perceived quality', 'quality ', 'synonym', 7),
(3976, 'http://biosemantics.arizona.edu/ontologies/carex#narrow', 'narrow', 'width ', 'synonym', 7),
(3977, 'http://biosemantics.arizona.edu/ontologies/carex#reduced', 'reduced', 'size ', 'synonym', 7),
(3978, 'http://biosemantics.arizona.edu/ontologies/carex#blue_green', 'blue green', 'blue green ', 'synonym', 7),
(3979, 'http://biosemantics.arizona.edu/ontologies/carex#distal_internode', 'distal internode', 'internode ', 'synonym', 7),
(3980, 'http://biosemantics.arizona.edu/ontologies/carex#obutse', 'obutse', 'shape ', 'synonym', 7),
(3981, 'http://biosemantics.arizona.edu/ontologies/carex#felty', 'felty', 'pubescence ', 'synonym', 7),
(3982, 'http://biosemantics.arizona.edu/ontologies/carex#many_flowered', 'many_flowered', 'flowered ', 'synonym', 7),
(3983, 'http://biosemantics.arizona.edu/ontologies/carex#blade_bearing', 'blade_bearing', 'architecture ', 'synonym', 7),
(3984, 'http://biosemantics.arizona.edu/ontologies/carex#graded', 'graded', 'multi_colored ', 'synonym', 7),
(3985, 'http://biosemantics.arizona.edu/ontologies/carex#cordlike', 'cordlike', 'shape ', 'synonym', 7),
(3986, 'http://biosemantics.arizona.edu/ontologies/carex#red_dotted', 'red dotted', 'red dotted ', 'synonym', 7),
(3987, 'http://biosemantics.arizona.edu/ontologies/carex#stipe', 'stipe', 'stalk ', 'synonym', 7),
(3988, 'http://biosemantics.arizona.edu/ontologies/carex#rounded_contracted', 'rounded_contracted', 'contracted ', 'synonym', 7),
(3989, 'http://biosemantics.arizona.edu/ontologies/carex#plano_convex', 'plano_convex', 'convex ', 'synonym', 7),
(3990, 'http://biosemantics.arizona.edu/ontologies/carex#obovoid_round', 'obovoid_round', 'obovoid rounded ', 'synonym', 7),
(3991, 'http://biosemantics.arizona.edu/ontologies/carex#leathery', 'leathery', 'texture ', 'synonym', 7),
(3992, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_achene', 'widest point of achene', 'widest point ', 'synonym', 7),
(3993, 'http://biosemantics.arizona.edu/ontologies/carex#poorly_developed', 'poorly developed', 'development ', 'synonym', 7),
(3994, 'http://biosemantics.arizona.edu/ontologies/carex#long_tapering', 'long tapering', 'tapered ', 'synonym', 7),
(3995, 'http://biosemantics.arizona.edu/ontologies/carex#u_shaped', 'u_shaped', 'shape ', 'synonym', 7),
(3996, 'http://biosemantics.arizona.edu/ontologies/carex#purple_banded', 'purple banded', 'banded purple ', 'synonym', 7),
(3997, 'http://biosemantics.arizona.edu/ontologies/carex#lanceolate_acuminate', 'lanceolate_acuminate', 'acuminate lanceolate ', 'synonym', 7),
(3998, 'http://biosemantics.arizona.edu/ontologies/carex#acuminate_awned', 'acuminate_awned', 'awned ', 'synonym', 7),
(3999, 'http://biosemantics.arizona.edu/ontologies/carex#ranked', 'ranked', 'arrangement ', 'synonym', 7),
(4000, 'http://biosemantics.arizona.edu/ontologies/carex#shorter', 'shorter', 'relative length ', 'synonym', 7),
(4001, 'http://biosemantics.arizona.edu/ontologies/carex#glaucous_green', 'glaucous green', 'glaucous green ', 'synonym', 7),
(4002, 'http://biosemantics.arizona.edu/ontologies/carex#cluster', 'cluster', 'arrangement ', 'synonym', 7),
(4003, 'http://biosemantics.arizona.edu/ontologies/carex#architecture_of_vein', 'architecture of vein', 'perceived architecture ', 'synonym', 7),
(4004, 'http://biosemantics.arizona.edu/ontologies/carex#expanded', 'expanded', 'size ', 'synonym', 7),
(4005, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_beak_tooth', 'apex of beak tooth', 'apex ', 'synonym', 7),
(4006, 'http://biosemantics.arizona.edu/ontologies/carex#elongate_obovoid', 'elongate_obovoid', 'obovoid ', 'synonym', 7),
(4007, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_inflorescence_units', 'number of inflorescence units', 'perceived quantity ', 'synonym', 7),
(4008, 'http://biosemantics.arizona.edu/ontologies/carex#toothless', 'toothless', 'architecture ', 'synonym', 7),
(4009, 'http://biosemantics.arizona.edu/ontologies/carex#linear_oblong', 'linear_oblong', 'linear oblong ', 'synonym', 7),
(4010, 'http://biosemantics.arizona.edu/ontologies/carex#fibril', 'fibril', 'anatomical structure ', 'synonym', 7),
(4011, 'http://biosemantics.arizona.edu/ontologies/carex#wiry', 'wiry', 'architecture ', 'synonym', 7),
(4012, 'http://biosemantics.arizona.edu/ontologies/carex#fine', 'fine', 'width ', 'synonym', 7),
(4013, 'http://biosemantics.arizona.edu/ontologies/carex#linear_ovate', 'linear_ovate', 'ovate ', 'synonym', 7),
(4014, 'http://biosemantics.arizona.edu/ontologies/carex#style_base', 'style base', 'base ', 'synonym', 7),
(4015, 'http://biosemantics.arizona.edu/ontologies/carex#yellow_white', 'yellow white', 'white yellow ', 'synonym', 7),
(4016, 'http://biosemantics.arizona.edu/ontologies/carex#visible', 'visible', 'prominence ', 'synonym', 7),
(4017, 'http://biosemantics.arizona.edu/ontologies/carex#ferruginous_brown', 'ferruginous brown', 'ferruginous brown ', 'synonym', 7),
(4018, 'http://biosemantics.arizona.edu/ontologies/carex#area', 'area', 'anatomical structure ', 'synonym', 7),
(4019, 'http://biosemantics.arizona.edu/ontologies/carex#shape', 'shape', 'quality ', 'synonym', 7),
(4020, 'http://biosemantics.arizona.edu/ontologies/carex#adaxial_area', 'adaxial area', 'area ', 'synonym', 7),
(4021, 'http://biosemantics.arizona.edu/ontologies/carex#long_sheathed', 'long_sheathed', 'sheathed ', 'synonym', 7),
(4022, 'http://biosemantics.arizona.edu/ontologies/carex#bright_orange', 'bright orange', 'orange bright ', 'synonym', 7),
(4023, 'http://biosemantics.arizona.edu/ontologies/carex#leaflike', 'leaflike', 'architecture ', 'synonym', 7),
(4024, 'http://biosemantics.arizona.edu/ontologies/carex#node_of_inflorescence_unit', 'node_of_inflorescence_unit', 'node ', 'synonym', 7),
(4025, 'http://biosemantics.arizona.edu/ontologies/carex#minute', 'minute', 'size ', 'synonym', 7),
(4026, 'http://biosemantics.arizona.edu/ontologies/carex#subcylindric', 'subcylindric', 'cylindric ', 'synonym', 7),
(4027, 'http://biosemantics.arizona.edu/ontologies/carex#adaxial_vein', 'adaxial vein', 'vein ', 'synonym', 7),
(4028, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_cylindric', 'ovate_cylindric', 'cylindric ovate ', 'synonym', 7),
(4029, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_perigynium', 'length of perigynium', 'perceived length ', 'synonym', 7),
(4030, 'http://biosemantics.arizona.edu/ontologies/carex#chromosome', 'chromosome', 'anatomical structure ', 'synonym', 7),
(4031, 'http://biosemantics.arizona.edu/ontologies/carex#margin_of_bract_blade', 'margin of bract blade', 'margin ', 'synonym', 7),
(4032, 'http://biosemantics.arizona.edu/ontologies/carex#rhombic_ellipsoid', 'rhombic_ellipsoid', 'rhombic ellipsoid ', 'synonym', 7),
(4033, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_staminate_flowers', 'number of staminate flowers', 'perceived quantity ', 'synonym', 7),
(4034, 'http://biosemantics.arizona.edu/ontologies/carex#horizontally_spreading', 'horizontally spreading', 'spreading ', 'synonym', 7),
(4035, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_leaf_blade', 'width of leaf blade', 'perceived width ', 'synonym', 7),
(4036, 'http://biosemantics.arizona.edu/ontologies/carex#radiating', 'radiating', 'arrangement ', 'synonym', 7),
(4037, 'http://biosemantics.arizona.edu/ontologies/carex#subelliptic', 'subelliptic', 'elliptic ', 'synonym', 7),
(4038, 'http://biosemantics.arizona.edu/ontologies/carex#point_of_insertion', 'point of insertion', 'point ', 'synonym', 7),
(4039, 'http://biosemantics.arizona.edu/ontologies/carex#pale_yellow', 'pale yellow', 'pale yellow ', 'synonym', 7),
(4040, 'http://biosemantics.arizona.edu/ontologies/carex#blade', 'blade', 'anatomical structure ', 'synonym', 7),
(4041, 'http://biosemantics.arizona.edu/ontologies/carex#rough_awned', 'rough_awned', 'awned ', 'synonym', 7),
(4042, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_scale_of_terminal_portion_of_inflorescence', 'proximal scale of terminal por', 'proximal scale ', 'synonym', 7),
(4043, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_ellipsoid', 'oblong_ellipsoid', 'ellipsoid oblong ', 'synonym', 7),
(4044, 'http://biosemantics.arizona.edu/ontologies/carex#mid', 'mid', 'position ', 'synonym', 7),
(4045, 'http://biosemantics.arizona.edu/ontologies/carex#1st_order_long_branch', '1st order long branch', 'long branch ', 'synonym', 7),
(4046, 'http://biosemantics.arizona.edu/ontologies/carex#hirtellous', 'hirtellous', 'hirsute ', 'synonym', 7),
(4047, 'http://biosemantics.arizona.edu/ontologies/carex#constriction', 'constriction', 'anatomical structure ', 'synonym', 7),
(4048, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_size', 'perceived size', 'perceived quality ', 'synonym', 7),
(4049, 'http://biosemantics.arizona.edu/ontologies/carex#non_sheathed', 'non_sheathed', 'architecture ', 'synonym', 7),
(4050, 'http://biosemantics.arizona.edu/ontologies/carex#spike_inflorescence', 'spike inflorescence', 'inflorescence ', 'synonym', 7),
(4051, 'http://biosemantics.arizona.edu/ontologies/carex#pinnate_network', 'pinnate network', 'venation ', 'synonym', 7),
(4052, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_perigynium', 'proximal perigynium', 'perigynium ', 'synonym', 7),
(4053, 'http://biosemantics.arizona.edu/ontologies/carex#relative_length', 'relative length', 'relative size length ', 'synonym', 7),
(4054, 'http://biosemantics.arizona.edu/ontologies/carex#mucro', 'mucro', 'anatomical structure ', 'synonym', 7),
(4055, 'http://biosemantics.arizona.edu/ontologies/carex#rhombic_ovate', 'rhombic_ovate', 'rhombic ovate ', 'synonym', 7),
(4056, 'http://biosemantics.arizona.edu/ontologies/carex#gray_black', 'gray black', 'black gray ', 'synonym', 7),
(4057, 'http://biosemantics.arizona.edu/ontologies/carex#medium_sized', 'medium_sized', 'size ', 'synonym', 7),
(4058, 'http://biosemantics.arizona.edu/ontologies/carex#compact', 'compact', 'architecture ', 'synonym', 7),
(4059, 'http://biosemantics.arizona.edu/ontologies/carex#flattened_trigonous', 'flattened_trigonous', 'trigonous flat ', 'synonym', 7),
(4060, 'http://biosemantics.arizona.edu/ontologies/carex#sharply_obovate', 'sharply obovate', 'obovate sharp ', 'synonym', 7),
(4061, 'http://biosemantics.arizona.edu/ontologies/carex#obtriangular', 'obtriangular', 'shape ', 'synonym', 7),
(4062, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_the_proximal_bract', 'base of proximal bract', 'base ', 'synonym', 7),
(4063, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_quadrate', 'ovate quadrate', 'quadrate ovate ', 'synonym', 7),
(4064, 'http://biosemantics.arizona.edu/ontologies/carex#appressed_erect', 'appressed_erect', 'erect ', 'synonym', 7),
(4065, 'http://biosemantics.arizona.edu/ontologies/carex#circular_obovate', 'circular_obovate', 'circular obovate ', 'synonym', 7),
(4066, 'http://biosemantics.arizona.edu/ontologies/carex#relative_height', 'relative height', 'relative size height ', 'synonym', 7),
(4067, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_lanceovoid', 'narrowly lanceovoid', 'lanceovoid ', 'synonym', 7),
(4068, 'http://biosemantics.arizona.edu/ontologies/carex#arctic_alpine', 'arctic alpine', 'habitat ', 'synonym', 7),
(4069, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_bract_blade', 'length of bract blade', 'perceived length ', 'synonym', 7),
(4070, 'http://biosemantics.arizona.edu/ontologies/carex#white_mottled', 'white mottled', 'white mottled ', 'synonym', 7),
(4071, 'http://biosemantics.arizona.edu/ontologies/carex#long_ciliate', 'long_ciliate', 'ciliate ', 'synonym', 7),
(4072, 'http://biosemantics.arizona.edu/ontologies/carex#rare', 'rare', 'quantity ', 'synonym', 7),
(4073, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_fusiform', 'oblong_fusiform', 'fusiform oblong ', 'synonym', 7),
(4074, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_achene_in_longitudinal_section', 'shape of achene in longitudina', 'perceived shape in longitudinal section ', 'synonym', 7),
(4075, 'http://biosemantics.arizona.edu/ontologies/carex#ovateoblong', 'ovateoblong', 'shape ', 'synonym', 7),
(4076, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_nerves_in_staminate_scale', 'number of nerves in staminate ', 'perceived quantity ', 'synonym', 7),
(4077, 'http://biosemantics.arizona.edu/ontologies/carex#ratio', 'ratio', 'quality ', 'synonym', 7),
(4078, 'http://biosemantics.arizona.edu/ontologies/carex#large_sized', 'large sized', 'size ', 'synonym', 7),
(4079, 'http://biosemantics.arizona.edu/ontologies/carex#short_persistent', 'short_persistent', 'persistent ', 'synonym', 7),
(4080, 'http://biosemantics.arizona.edu/ontologies/carex#apex_awn', 'apex awn', 'awn ', 'synonym', 7),
(4081, 'http://biosemantics.arizona.edu/ontologies/carex#stellate_hirsute', 'stellate_hirsute', 'hirsute ', 'synonym', 7),
(4082, 'http://biosemantics.arizona.edu/ontologies/carex#enfolding', 'enfolding', 'position ', 'synonym', 7),
(4083, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_shape_in_longitudinal_section', 'perceived shape in longitudina', 'perceived quality ', 'synonym', 7),
(4084, 'http://biosemantics.arizona.edu/ontologies/carex#pale_green', 'pale green', 'pale ', 'synonym', 7),
(4085, 'http://biosemantics.arizona.edu/ontologies/carex#adjacent_node', 'adjacent_node', 'node ', 'synonym', 7),
(4086, 'http://biosemantics.arizona.edu/ontologies/carex#septate_noduloae', 'septate noduloae', 'architecture ', 'synonym', 7),
(4087, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_duration', 'perceived duration', 'perceived quality ', 'synonym', 7),
(4088, 'http://biosemantics.arizona.edu/ontologies/carex#open', 'open', 'architecture ', 'synonym', 7),
(4089, 'http://biosemantics.arizona.edu/ontologies/carex#ciliolate', 'ciliolate', 'pubescence ', 'synonym', 7),
(4090, 'http://biosemantics.arizona.edu/ontologies/carex#green_and_white_mottled', 'green and white mottled', 'mottled ', 'synonym', 7),
(4091, 'http://biosemantics.arizona.edu/ontologies/carex#female_flower', 'female flower', 'perigynial complex ', 'synonym', 7),
(4092, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_terminal_portion_of_inflorescence', 'width of terminal portion of i', 'perceived width ', 'synonym', 7),
(4093, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_leaf_blade', 'apex of leaf blade', 'apex ', 'synonym', 7),
(4094, 'http://biosemantics.arizona.edu/ontologies/carex#nutlet', 'nutlet', 'fruit ', 'synonym', 7),
(4095, 'http://biosemantics.arizona.edu/ontologies/carex#ovoid_ellipsoid', 'ovoid_ellipsoid', 'ovoid ellipsoid ', 'synonym', 7),
(4096, 'http://biosemantics.arizona.edu/ontologies/carex#leafy', 'leafy', 'architecture ', 'synonym', 7),
(4097, 'http://biosemantics.arizona.edu/ontologies/carex#short_attenuate', 'short_attenuate', 'attenuate ', 'synonym', 7),
(4098, 'http://biosemantics.arizona.edu/ontologies/carex#long_pubescent', 'long_pubescent', 'pubescent long ', 'synonym', 7),
(4099, 'http://biosemantics.arizona.edu/ontologies/carex#smaller', 'smaller', 'relative size ', 'synonym', 7),
(4100, 'http://biosemantics.arizona.edu/ontologies/carex#linear_elongate', 'linear_elongate', 'linear ', 'synonym', 7),
(4101, 'http://biosemantics.arizona.edu/ontologies/carex#tip', 'tip', 'anatomical structure ', 'synonym', 7),
(4102, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_inflorescence_unit', 'shape of inflorescence unit', 'perceived shape ', 'synonym', 7),
(4103, 'http://biosemantics.arizona.edu/ontologies/carex#delicate', 'delicate', 'fragility ', 'synonym', 7),
(4104, 'http://biosemantics.arizona.edu/ontologies/carex#inflation', 'inflation', 'architecture ', 'synonym', 7),
(4105, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_distal_internode_of_inflorescence', 'length of distal internode of ', 'perceived length ', 'synonym', 7),
(4106, 'http://biosemantics.arizona.edu/ontologies/carex#short_sheathing', 'short sheathing', 'sheathing ', 'synonym', 7),
(4107, 'http://biosemantics.arizona.edu/ontologies/carex#secondary_inflorescences_panicle', 'secondary inflorescences panic', 'panicle ', 'synonym', 7),
(4108, 'http://biosemantics.arizona.edu/ontologies/carex#cross_corrugated', 'cross corrugated', 'corrugated ', 'synonym', 7),
(4109, 'http://biosemantics.arizona.edu/ontologies/carex#light_green', 'light green', 'light green ', 'synonym', 7),
(4110, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_linear', 'oblong_linear', 'linear ', 'synonym', 7),
(4111, 'http://biosemantics.arizona.edu/ontologies/carex#short_pendunculate', 'short pendunculate', 'pedunculate ', 'synonym', 7),
(4112, 'http://biosemantics.arizona.edu/ontologies/carex#discoid_annulate', 'discoid_annulate', 'annulate ', 'synonym', 7),
(4113, 'http://biosemantics.arizona.edu/ontologies/carex#adjacent_node_of_inflorescence_unit', 'adjacent_node_of_inflorescence', 'node_of_inflorescence_unit ', 'synonym', 7),
(4114, 'http://biosemantics.arizona.edu/ontologies/carex#pale_gold', 'pale gold', 'pale gold ', 'synonym', 7),
(4115, 'http://biosemantics.arizona.edu/ontologies/carex#blotch', 'blotch', 'spot ', 'synonym', 7),
(4116, 'http://biosemantics.arizona.edu/ontologies/carex#spike', 'spike', 'anatomical structure ', 'synonym', 7),
(4117, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_proximal_internode_of_inflorescence_unit', 'length of proximal internode o', 'perceived length ', 'synonym', 7),
(4118, 'http://biosemantics.arizona.edu/ontologies/carex#metallic_sheen', 'metallic sheen', 'sheen ', 'synonym', 7),
(4119, 'http://biosemantics.arizona.edu/ontologies/carex#ruptured', 'ruptured', 'condition ', 'synonym', 7),
(4120, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_orientation', 'perceived orientation', 'perceived quality ', 'synonym', 7),
(4121, 'http://biosemantics.arizona.edu/ontologies/carex#venation', 'venation', 'anatomical structure ', 'synonym', 7),
(4122, 'http://biosemantics.arizona.edu/ontologies/carex#ovatelanceolate', 'ovatelanceolate', 'shape ', 'synonym', 7),
(4123, 'http://biosemantics.arizona.edu/ontologies/carex#inner_band_of_sheath', 'inner band of sheath', 'inner band ', 'synonym', 7),
(4124, 'http://biosemantics.arizona.edu/ontologies/carex#perceived-length', 'perceived-length', '', 'synonym', 7),
(4125, 'http://biosemantics.arizona.edu/ontologies/carex#half_terete', 'half_terete', 'shape ', 'synonym', 7),
(4126, 'http://biosemantics.arizona.edu/ontologies/carex#many', 'many', 'quantity ', 'synonym', 7),
(4127, 'http://biosemantics.arizona.edu/ontologies/carex#rough_ciliate', 'rough_ciliate', 'ciliate ', 'synonym', 7),
(4128, 'http://biosemantics.arizona.edu/ontologies/carex#perigynium_wall', 'perigynium wall', 'anatomical structure ', 'synonym', 7),
(4129, 'http://biosemantics.arizona.edu/ontologies/carex#stalked', 'stalked', 'architecture ', 'synonym', 7),
(4130, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_fusiform', 'ovate_fusiform', 'fusiform ovate ', 'synonym', 7),
(4131, 'http://biosemantics.arizona.edu/ontologies/carex#conspicous', 'conspicous', 'prominence ', 'synonym', 7),
(4132, 'http://biosemantics.arizona.edu/ontologies/carex#marcescent', 'marcescent', 'duration ', 'synonym', 7),
(4133, 'http://biosemantics.arizona.edu/ontologies/carex#dry', 'dry', 'texture ', 'synonym', 7),
(4134, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_staminate_scale', 'shape of staminate scale', 'perceived shape ', 'synonym', 7),
(4135, 'http://biosemantics.arizona.edu/ontologies/carex#rounded_cuneate', 'rounded_cuneate', 'cuneate rounded ', 'synonym', 7),
(4136, 'http://biosemantics.arizona.edu/ontologies/carex#interior', 'interior', 'position ', 'synonym', 7),
(4137, 'http://biosemantics.arizona.edu/ontologies/carex#few_veined', 'few_veined', 'veined ', 'synonym', 7),
(4138, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_achene', 'length of achene', 'perceived length ', 'synonym', 7),
(4139, 'http://biosemantics.arizona.edu/ontologies/carex#perigynium_beak_tooth', 'perigynium beak tooth', 'tooth ', 'synonym', 7),
(4140, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_rhizome_internode', 'length of rhizome internode', 'perceived length ', 'synonym', 7),
(4141, 'http://biosemantics.arizona.edu/ontologies/carex#young', 'young', 'life cycle ', 'synonym', 7),
(4142, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_bract_sheath', 'length of bract sheath', 'perceived length ', 'synonym', 7),
(4143, 'http://biosemantics.arizona.edu/ontologies/carex#blade_surface', 'blade surface', 'surface ', 'synonym', 7),
(4144, 'http://biosemantics.arizona.edu/ontologies/carex#submarginal', 'submarginal', 'position ', 'synonym', 7),
(4145, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_obtuse', 'broadly_obtuse', 'obtuse ', 'synonym', 7),
(4146, 'http://biosemantics.arizona.edu/ontologies/carex#rounded_tapering', 'rounded tapering', 'tapered rounded ', 'synonym', 7),
(4147, 'http://biosemantics.arizona.edu/ontologies/carex#ferruginous_green', 'ferruginous green', 'ferruginous green ', 'synonym', 7),
(4148, 'http://biosemantics.arizona.edu/ontologies/carex#loosely_overlapping', 'loosely overlapping', 'overlapping ', 'synonym', 7),
(4149, 'http://biosemantics.arizona.edu/ontologies/carex#light_colored', 'light colored', 'colored light ', 'synonym', 7),
(4150, 'http://biosemantics.arizona.edu/ontologies/carex#abaxial_surface', 'abaxial surface', 'surface ', 'synonym', 7),
(4151, 'http://biosemantics.arizona.edu/ontologies/carex#midvein', 'midvein', 'vein ', 'synonym', 7),
(4152, 'http://biosemantics.arizona.edu/ontologies/carex#rounded_obtuse', 'rounded_obtuse', 'obtuse ', 'synonym', 7),
(4153, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_ellipsoid', 'narrowly ellipsoid', 'ellipsoid ', 'synonym', 7),
(4154, 'http://biosemantics.arizona.edu/ontologies/carex#rhomboid_ovate', 'rhomboid_ovate', 'rhomboid ovate ', 'synonym', 7),
(4155, 'http://biosemantics.arizona.edu/ontologies/carex#long_rhizomatous', 'long_rhizomatous', 'rhizomatous ', 'synonym', 7),
(4156, 'http://biosemantics.arizona.edu/ontologies/carex#awnless', 'awnless', 'architecture ', 'synonym', 7),
(4157, 'http://biosemantics.arizona.edu/ontologies/carex#inconspiuous', 'inconspiuous', 'prominence ', 'synonym', 7),
(4158, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_nerves_in_pistillate_scale', 'number of nerves in pistillate', 'perceived quantity ', 'synonym', 7),
(4159, 'http://biosemantics.arizona.edu/ontologies/carex#early_deciduous', 'early deciduous', 'deciduous ', 'synonym', 7),
(4160, 'http://biosemantics.arizona.edu/ontologies/carex#accessory', 'accessory', 'anatomical structure ', 'synonym', 7),
(4161, 'http://biosemantics.arizona.edu/ontologies/carex#gray_brown', 'gray brown', 'gray brown ', 'synonym', 7),
(4162, 'http://biosemantics.arizona.edu/ontologies/carex#short_pedunculate', 'short pedunculate', 'pedunculate ', 'synonym', 7),
(4163, 'http://biosemantics.arizona.edu/ontologies/carex#duration_of_style', 'duration of style', 'perceived duration ', 'synonym', 7),
(4164, 'http://biosemantics.arizona.edu/ontologies/carex#pedunculate', 'pedunculate', 'architecture ', 'synonym', 7),
(4165, 'http://biosemantics.arizona.edu/ontologies/carex#margined', 'margined', 'architecture ', 'synonym', 7),
(4166, 'http://biosemantics.arizona.edu/ontologies/carex#prophyll', 'prophyll', 'anatomical structure ', 'synonym', 7),
(4167, 'http://biosemantics.arizona.edu/ontologies/carex#deltate_ovate', 'deltate_ovate', 'deltate ovate ', 'synonym', 7),
(4168, 'http://biosemantics.arizona.edu/ontologies/carex#median', 'median', 'position ', 'synonym', 7),
(4169, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_bract', 'proximal bract', 'bract ', 'synonym', 7),
(4170, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_bract_node', 'apex of node', 'apex ', 'synonym', 7),
(4171, 'http://biosemantics.arizona.edu/ontologies/carex#green_and_white_striped', 'green and white striped', 'striped ', 'synonym', 7),
(4172, 'http://biosemantics.arizona.edu/ontologies/carex#acute_rounded', 'acute_rounded', 'acute rounded ', 'synonym', 7),
(4173, 'http://biosemantics.arizona.edu/ontologies/carex#thick_coriaceous', 'thick_coriaceous', 'coriaceous ', 'synonym', 7),
(4174, 'http://biosemantics.arizona.edu/ontologies/carex#pale_ferruginous', 'pale ferruginous', 'ferruginous pale ', 'synonym', 7),
(4175, 'http://biosemantics.arizona.edu/ontologies/carex#pubescence_of_stem', 'pubescence of stem', 'perceived pubescence ', 'synonym', 7),
(4176, 'http://biosemantics.arizona.edu/ontologies/carex#pale_silvery_brown', 'pale silvery brown', 'pale brown silvery brown ', 'synonym', 7),
(4177, 'http://biosemantics.arizona.edu/ontologies/carex#long_creeping', 'long_creeping', 'creeping ', 'synonym', 7),
(4178, 'http://biosemantics.arizona.edu/ontologies/carex#reproductive_structure', 'reproductive structure', 'anatomical structure ', 'synonym', 7),
(4179, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_architecture', 'perceived architecture', 'perceived quality ', 'synonym', 7),
(4180, 'http://biosemantics.arizona.edu/ontologies/carex#paler', 'paler', 'color saturation ', 'synonym', 7),
(4181, 'http://biosemantics.arizona.edu/ontologies/carex#suborbicular', 'suborbicular', 'orbicular ', 'synonym', 7),
(4182, 'http://biosemantics.arizona.edu/ontologies/carex#pressed', 'pressed', 'fixation ', 'synonym', 7),
(4183, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_elliptic', 'broadly_elliptic', 'elliptic ', 'synonym', 7),
(4184, 'http://biosemantics.arizona.edu/ontologies/carex#medium_brown', 'medium brown', 'medium brown ', 'synonym', 7),
(4185, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_pollen_sac', 'base of pollen sac', 'base ', 'synonym', 7),
(4186, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_pistillate_scale', 'texture of pistillate scale', 'perceived texture ', 'synonym', 7),
(4187, 'http://biosemantics.arizona.edu/ontologies/carex#proximalmost', 'proximalmost', 'proximal ', 'synonym', 7),
(4188, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_bract', 'apex of bract', 'apex ', 'synonym', 7),
(4189, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_apex_of_achene', 'shape of apex of achene', 'perceived shape ', 'synonym', 7),
(4190, 'http://biosemantics.arizona.edu/ontologies/carex#pithlike', 'pithlike', 'architecture ', 'synonym', 7),
(4191, 'http://biosemantics.arizona.edu/ontologies/carex#dense', 'dense', 'density ', 'synonym', 7),
(4192, 'http://biosemantics.arizona.edu/ontologies/carex#triangular_channeled', 'triangular channeled', 'triangular channeled ', 'synonym', 7),
(4193, 'http://biosemantics.arizona.edu/ontologies/carex#filiform_involute', 'filiform_involute', 'involute ', 'synonym', 7),
(4194, 'http://biosemantics.arizona.edu/ontologies/carex#dark_brown', 'dark brown', 'dark brown ', 'synonym', 7),
(4195, 'http://biosemantics.arizona.edu/ontologies/carex#narrower', 'narrower', 'relative width ', 'synonym', 7),
(4196, 'http://biosemantics.arizona.edu/ontologies/carex#short_rhizomatous', 'short_rhizomatous', 'rhizomatous ', 'synonym', 7),
(4197, 'http://biosemantics.arizona.edu/ontologies/carex#cinereous', 'cinereous', 'gray ', 'synonym', 7),
(4198, 'http://biosemantics.arizona.edu/ontologies/carex#globose_obovate', 'globose_obovate', 'obovate globose ', 'synonym', 7),
(4199, 'http://biosemantics.arizona.edu/ontologies/carex#redbrown_tinged', 'red brown tinged', 'red tinged brown tinged red brown red brown ', 'synonym', 7),
(4200, 'http://biosemantics.arizona.edu/ontologies/carex#gold_hyaline', 'gold_hyaline', 'hyaline ', 'synonym', 7),
(4201, 'http://biosemantics.arizona.edu/ontologies/carex#diamond', 'diamond', 'shape ', 'synonym', 7),
(4202, 'http://biosemantics.arizona.edu/ontologies/carex#distal_bract', 'distal bract', 'bract ', 'synonym', 7),
(4203, 'http://biosemantics.arizona.edu/ontologies/carex#pubescence_of_margin_of_leaf_blade', 'pubescence of margin of leaf b', 'perceived pubescence ', 'synonym', 7),
(4204, 'http://biosemantics.arizona.edu/ontologies/carex#auricle', 'auricle', 'anatomical structure ', 'synonym', 7),
(4205, 'http://biosemantics.arizona.edu/ontologies/carex#margin_of_perigynium_beak', 'margin of perigynium beak', 'margin ', 'synonym', 7),
(4206, 'http://biosemantics.arizona.edu/ontologies/carex#pinnate', 'pinnate', 'architecture ', 'synonym', 7),
(4207, 'http://biosemantics.arizona.edu/ontologies/carex#short_tapered', 'short_tapered', 'tapered ', 'synonym', 7),
(4208, 'http://biosemantics.arizona.edu/ontologies/carex#rhombic_ovoid', 'rhombic_ovoid', 'rhombic ovoid ', 'synonym', 7),
(4209, 'http://biosemantics.arizona.edu/ontologies/carex#subcoriaceous', 'subcoriaceous', 'coriaceous ', 'synonym', 7),
(4210, 'http://biosemantics.arizona.edu/ontologies/carex#narrowed', 'narrowed', 'shape ', 'synonym', 7),
(4211, 'http://biosemantics.arizona.edu/ontologies/carex#approximate', 'approximate', 'arrangement ', 'synonym', 7),
(4212, 'http://biosemantics.arizona.edu/ontologies/carex#lanceovate', 'lanceovate', 'ovate ', 'synonym', 7),
(4213, 'http://biosemantics.arizona.edu/ontologies/carex#nerved', 'nerved', 'architecture ', 'synonym', 7),
(4214, 'http://biosemantics.arizona.edu/ontologies/carex#broad_ovate', 'broad_ovate', 'ovate ', 'synonym', 7),
(4215, 'http://biosemantics.arizona.edu/ontologies/carex#black_tipped', 'black tipped', 'tipped architecture ', 'synonym', 7),
(4216, 'http://biosemantics.arizona.edu/ontologies/carex#obovate_lanceolate', 'obovate_lanceolate', 'lanceolate obovate ', 'synonym', 7),
(4217, 'http://biosemantics.arizona.edu/ontologies/carex#shortly_setose', 'shortly setose', 'setose ', 'synonym', 7),
(4218, 'http://biosemantics.arizona.edu/ontologies/carex#veinless', 'veinless', 'architecture ', 'synonym', 7),
(4219, 'http://biosemantics.arizona.edu/ontologies/carex#taller', 'taller', 'relative height ', 'synonym', 7),
(4220, 'http://biosemantics.arizona.edu/ontologies/carex#short_cylindric', 'short_cylindric', 'cylindric ', 'synonym', 7),
(4221, 'http://biosemantics.arizona.edu/ontologies/carex#aphyllopodic', 'aphyllopodic', 'architecture ', 'synonym', 7),
(4222, 'http://biosemantics.arizona.edu/ontologies/carex#subcordate', 'subcordate', 'cordate ', 'synonym', 7),
(4223, 'http://biosemantics.arizona.edu/ontologies/carex#spathelike', 'spathelike', 'architecture ', 'synonym', 7),
(4224, 'http://biosemantics.arizona.edu/ontologies/carex#long_cylindric', 'long_cylindric', 'cylindric ', 'synonym', 7),
(4225, 'http://biosemantics.arizona.edu/ontologies/carex#bractlike', 'bractlike', 'architecture ', 'synonym', 7),
(4226, 'http://biosemantics.arizona.edu/ontologies/carex#gutter__shaped', 'gutter_shaped', 'shape ', 'synonym', 7),
(4227, 'http://biosemantics.arizona.edu/ontologies/carex#purple_red', 'purple red', 'red purple ', 'synonym', 7),
(4228, 'http://biosemantics.arizona.edu/ontologies/carex#overwintered', 'overwintered', 'life cycle ', 'synonym', 7),
(4229, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_cataphyll', 'color of cataphyll', 'perceived color ', 'synonym', 7),
(4230, 'http://biosemantics.arizona.edu/ontologies/carex#widely_spreading', 'widely spreading', 'spreading ', 'synonym', 7);
INSERT INTO `confusingterm` (`termId`, `IRI`, `term`, `data`, `type`, `authorId`) VALUES
(4231, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_stem', 'width of stem', 'perceived width ', 'synonym', 7),
(4232, 'http://biosemantics.arizona.edu/ontologies/carex#coarse_textured', 'coarse_textured', 'texture ', 'synonym', 7),
(4233, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_widest_face_of_perigynium', 'widest point of widest face of', 'widest point ', 'synonym', 7),
(4234, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_oblanceloid', 'narrowly oblanceloid', 'oblanceolate ', 'synonym', 7),
(4235, 'http://biosemantics.arizona.edu/ontologies/carex#ciliate_setose', 'ciliate_setose', 'setose ', 'synonym', 7),
(4236, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_leaf_blade', 'widest point of leaf blade', 'widest point ', 'synonym', 7),
(4237, 'http://biosemantics.arizona.edu/ontologies/carex#distal_ligule', 'distal ligule', 'ligule ', 'synonym', 7),
(4238, 'http://biosemantics.arizona.edu/ontologies/carex#short_aristate', 'short_aristate', 'aristate ', 'synonym', 7),
(4239, 'http://biosemantics.arizona.edu/ontologies/carex#subequal', 'subequal', 'variability ', 'synonym', 7),
(4240, 'http://biosemantics.arizona.edu/ontologies/carex#light_yellowbrown', 'light yellow brown', 'yellow brown light brown ', 'synonym', 7),
(4241, 'http://biosemantics.arizona.edu/ontologies/carex#defexed', 'defexed', 'course ', 'synonym', 7),
(4242, 'http://biosemantics.arizona.edu/ontologies/carex#wingless', 'wingless', 'architecture ', 'synonym', 7),
(4243, 'http://biosemantics.arizona.edu/ontologies/carex#beaded', 'beaded', 'architecture ', 'synonym', 7),
(4244, 'http://biosemantics.arizona.edu/ontologies/carex#tight', 'tight', 'inflation ', 'synonym', 7),
(4245, 'http://biosemantics.arizona.edu/ontologies/carex#pliable', 'pliable', 'flexible ', 'synonym', 7),
(4246, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_end', 'proximal end', 'end ', 'synonym', 7),
(4247, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_most_scale', 'proximal most scale', 'proximal scale ', 'synonym', 7),
(4248, 'http://biosemantics.arizona.edu/ontologies/carex#colony', 'colony', 'anatomical structure ', 'synonym', 7),
(4249, 'http://biosemantics.arizona.edu/ontologies/carex#involute_cylindric', 'involute_cylindric', 'cylindric ', 'synonym', 7),
(4250, 'http://biosemantics.arizona.edu/ontologies/carex#bristlelike', 'bristlelike', 'architecture ', 'synonym', 7),
(4251, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_scale_of_inflorescence_unit', 'proximal_scale_of_inflorescenc', 'proximal scale ', 'synonym', 7),
(4252, 'http://biosemantics.arizona.edu/ontologies/carex#flowerless', 'flowerless', 'architecture ', 'synonym', 7),
(4253, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_pistillate_scale', 'length of pistillate scale', 'perceived length ', 'synonym', 7),
(4254, 'http://biosemantics.arizona.edu/ontologies/carex#white_margined', 'white_margined', 'margined ', 'synonym', 7),
(4255, 'http://biosemantics.arizona.edu/ontologies/carex#corky', 'corky', 'texture ', 'synonym', 7),
(4256, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_width', 'perceived width', 'perceived size ', 'synonym', 7),
(4257, 'http://biosemantics.arizona.edu/ontologies/carex#pale_red_brown_tinged', 'pale red brown tinged', 'tinged pale red brown ', 'synonym', 7),
(4258, 'http://biosemantics.arizona.edu/ontologies/carex#scabrous_angled', 'scabrous_angled', 'angled ', 'synonym', 7),
(4259, 'http://biosemantics.arizona.edu/ontologies/carex#well_developed', 'well_developed', 'development ', 'synonym', 7),
(4260, 'http://biosemantics.arizona.edu/ontologies/carex#compressed_trigonous', 'compressed_trigonous', 'trigonous compressed ', 'synonym', 7),
(4261, 'http://biosemantics.arizona.edu/ontologies/carex#reaching', 'reaching', 'position ', 'synonym', 7),
(4262, 'http://biosemantics.arizona.edu/ontologies/carex#lance_ellipsoid', 'lance_ellipsoid', 'ellipsoid ', 'synonym', 7),
(4263, 'http://biosemantics.arizona.edu/ontologies/carex#apparent', 'apparent', 'prominence ', 'synonym', 7),
(4264, 'http://biosemantics.arizona.edu/ontologies/carex#puberulent_papillose', 'puberulent_papillose', 'papillose ', 'synonym', 7),
(4265, 'http://biosemantics.arizona.edu/ontologies/carex#relative_position', 'relative position', 'quality ', 'synonym', 7),
(4266, 'http://biosemantics.arizona.edu/ontologies/carex#sheath_summit', 'sheath summit', 'anatomical structure ', 'synonym', 7),
(4267, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_inflorescence_unit', 'length of inflorescence unit', 'perceived length ', 'synonym', 7),
(4268, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_obovoid', 'broadly obovoid', 'obovoid ', 'synonym', 7),
(4269, 'http://biosemantics.arizona.edu/ontologies/carex#broader', 'broader', 'broad ', 'synonym', 7),
(4270, 'http://biosemantics.arizona.edu/ontologies/carex#ciliate_serrulate', 'ciliate_serrulate', 'ciliate serrulate ', 'synonym', 7),
(4271, 'http://biosemantics.arizona.edu/ontologies/carex#attachment_%28structure%29', 'attachment (structure)', 'toreview ', 'synonym', 7),
(4272, 'http://biosemantics.arizona.edu/ontologies/carex#nonbasal_sheath', 'nonbasal sheath', 'sheath ', 'synonym', 7),
(4273, 'http://biosemantics.arizona.edu/ontologies/carex#tallest', 'tallest', 'relative height ', 'synonym', 7),
(4274, 'http://biosemantics.arizona.edu/ontologies/carex#2_ranked', '2_ranked', 'ranked ', 'synonym', 7),
(4275, 'http://biosemantics.arizona.edu/ontologies/carex#3_ranked', '3_ranked', 'ranked ', 'synonym', 7),
(4276, 'http://biosemantics.arizona.edu/ontologies/carex#quality', 'quality', '', 'synonym', 7),
(4277, 'http://biosemantics.arizona.edu/ontologies/carex#ciliate_serulate', 'ciliate serulate', 'ciliate ', 'synonym', 7),
(4278, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_cataphyll', 'texture of cataphyll', 'perceived texture ', 'synonym', 7),
(4279, 'http://biosemantics.arizona.edu/ontologies/carex#long_awned', 'long_awned', 'awned ', 'synonym', 7),
(4280, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_rhombic', 'elliptic_rhombic', 'rhombic elliptic ', 'synonym', 7),
(4281, 'http://biosemantics.arizona.edu/ontologies/carex#tuft_forming', 'tuft_forming', 'growth form ', 'synonym', 7),
(4282, 'http://biosemantics.arizona.edu/ontologies/carex#trigonous_obovoid', 'trigonous_obovoid', 'obovoid trigonous ', 'synonym', 7),
(4283, 'http://biosemantics.arizona.edu/ontologies/carex#fewer_spiked', 'fewer_spiked', 'spiked ', 'synonym', 7),
(4284, 'http://biosemantics.arizona.edu/ontologies/carex#several', 'several', 'quantity ', 'synonym', 7),
(4285, 'http://biosemantics.arizona.edu/ontologies/carex#enlarged', 'enlarged', 'size ', 'synonym', 7),
(4286, 'http://biosemantics.arizona.edu/ontologies/carex#inner_band', 'inner band', 'band ', 'synonym', 7),
(4287, 'http://biosemantics.arizona.edu/ontologies/carex#hyaline_suffused', 'hyaline suffused', 'suffused hyaline ', 'synonym', 7),
(4288, 'http://biosemantics.arizona.edu/ontologies/carex#trullate_ovate', 'trullate_ovate', 'trullate ovate ', 'synonym', 7),
(4289, 'http://biosemantics.arizona.edu/ontologies/carex#zigzag', 'zigzag', 'course ', 'synonym', 7),
(4290, 'http://biosemantics.arizona.edu/ontologies/carex#lateral_adaxial_vein', 'lateral adaxial vein', 'lateral_vein adaxial vein ', 'synonym', 7),
(4291, 'http://biosemantics.arizona.edu/ontologies/carex#lanceovoid', 'lanceovoid', 'ovoid ', 'synonym', 7),
(4292, 'http://biosemantics.arizona.edu/ontologies/carex#new', 'new', 'maturity ', 'synonym', 7),
(4293, 'http://biosemantics.arizona.edu/ontologies/carex#rachilla', 'rachilla', 'rachis ', 'synonym', 7),
(4294, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_bract_blade', 'color of bract blade', 'perceived color ', 'synonym', 7),
(4295, 'http://biosemantics.arizona.edu/ontologies/carex#castaneous', 'castaneous', 'chestnut ', 'synonym', 7),
(4296, 'http://biosemantics.arizona.edu/ontologies/carex#gray', 'gray', 'colored desaturated ', 'synonym', 7),
(4297, 'http://biosemantics.arizona.edu/ontologies/carex#light_redbrown', 'light red brown', 'light brown red brown ', 'synonym', 7),
(4298, 'http://www.w3.org/2002/07/owl#Thing', 'Thing', '', 'synonym', 7),
(4299, 'http://biosemantics.arizona.edu/ontologies/carex#ellipsoid_obovoid', 'ellipsoid_obovoid', 'obovoid ellipsoid ', 'synonym', 7),
(4300, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_lateral_spike', 'proximal lateral spike', 'spike ', 'synonym', 7),
(4301, 'http://biosemantics.arizona.edu/ontologies/carex#awn', 'awn', 'anatomical structure ', 'synonym', 7),
(4302, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_margin_of_bract_blade', 'texture of margin of bract bla', 'perceived texture ', 'synonym', 7),
(4303, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_lanceolate', 'elliptic_lanceolate', 'lanceolate elliptic ', 'synonym', 7),
(4304, 'http://biosemantics.arizona.edu/ontologies/carex#equal', 'equal', 'variability ', 'synonym', 7),
(4305, 'http://biosemantics.arizona.edu/ontologies/carex#texture', 'texture', 'surface feature ', 'synonym', 7),
(4306, 'http://biosemantics.arizona.edu/ontologies/carex#disposed', 'disposed', 'arrangement ', 'synonym', 7),
(4307, 'http://biosemantics.arizona.edu/ontologies/carex#middle', 'middle', 'position ', 'synonym', 7),
(4308, 'http://biosemantics.arizona.edu/ontologies/carex#awnlike', 'awnlike', 'toreview ', 'synonym', 7),
(4309, 'http://biosemantics.arizona.edu/ontologies/carex#curvature', 'curvature', 'orientation ', 'synonym', 7),
(4310, 'http://biosemantics.arizona.edu/ontologies/carex#minutely_bidentulate', 'minutely bidentulate', 'bidentulate ', 'synonym', 7),
(4311, 'http://biosemantics.arizona.edu/ontologies/carex#obscure', 'obscure', 'prominence ', 'synonym', 7),
(4312, 'http://biosemantics.arizona.edu/ontologies/carex#white_dotted', 'white dotted', 'white dotted ', 'synonym', 7),
(4313, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_texture', 'perceived texture', 'perceived quality ', 'synonym', 7),
(4314, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_obovate', 'broadly obovate', 'obovate ', 'synonym', 7),
(4315, 'http://biosemantics.arizona.edu/ontologies/carex#inrolled_obtuse', 'inrolled_obtuse', 'obtuse inrolled ', 'synonym', 7),
(4316, 'http://biosemantics.arizona.edu/ontologies/carex#median_groove', 'median groove', 'groove ', 'synonym', 7),
(4317, 'http://biosemantics.arizona.edu/ontologies/carex#red_brown_speckled', 'red brown speckled', 'speckled red red brown brown ', 'synonym', 7),
(4318, 'http://biosemantics.arizona.edu/ontologies/carex#carpellate', 'carpellate', 'architecture ', 'synonym', 7),
(4319, 'http://biosemantics.arizona.edu/ontologies/carex#imbricate', 'imbricate', 'arrangement ', 'synonym', 7),
(4320, 'http://biosemantics.arizona.edu/ontologies/carex#spreading_white_pubescent', 'spreading white pubescent', 'spreading_pubescent ', 'synonym', 7),
(4321, 'http://biosemantics.arizona.edu/ontologies/carex#copper_brown', 'copper brown', 'bronze brown ', 'synonym', 7),
(4322, 'http://biosemantics.arizona.edu/ontologies/carex#channelled', 'channelled', 'architecture ', 'synonym', 7),
(4323, 'http://biosemantics.arizona.edu/ontologies/carex#shoots', 'shoots', 'shoot ', 'synonym', 7),
(4324, 'http://biosemantics.arizona.edu/ontologies/carex#spongy_thickened', 'spongy_thickened', 'thickened ', 'synonym', 7),
(4325, 'http://biosemantics.arizona.edu/ontologies/carex#sharply_trigonous', 'sharply trigonous', 'trigonous sharp ', 'synonym', 7),
(4326, 'http://biosemantics.arizona.edu/ontologies/carex#fallen', 'fallen', 'life cycle ', 'synonym', 7),
(4327, 'http://biosemantics.arizona.edu/ontologies/carex#long_persistent', 'long_persistent', 'persistent ', 'synonym', 7),
(4328, 'http://biosemantics.arizona.edu/ontologies/carex#unwinged', 'unwinged', 'architecture ', 'synonym', 7),
(4329, 'http://biosemantics.arizona.edu/ontologies/carex#broadly_lanceolate', 'broadly lanceolate', 'lanceolate ', 'synonym', 7),
(4330, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_ovoid', 'elliptic_ovoid', 'ovoid elliptic ', 'synonym', 7),
(4331, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_oblanceolate', 'oblong_oblanceolate', 'oblanceolate ', 'synonym', 7),
(4332, 'http://biosemantics.arizona.edu/ontologies/carex#aggregate', 'aggregate', 'architecture ', 'synonym', 7),
(4333, 'http://biosemantics.arizona.edu/ontologies/carex#hidden', 'hidden', 'prominence ', 'synonym', 7),
(4334, 'http://biosemantics.arizona.edu/ontologies/carex#widest_bract_blade', 'widest bract blade', 'bract blade ', 'synonym', 7),
(4335, 'http://biosemantics.arizona.edu/ontologies/carex#papery', 'papery', 'texture ', 'synonym', 7),
(4336, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_staminate_scale', 'length of staminate scale', 'perceived length ', 'synonym', 7),
(4337, 'http://biosemantics.arizona.edu/ontologies/carex#hyaline_brown', 'hyaline brown', 'hyaline brown ', 'synonym', 7),
(4338, 'http://biosemantics.arizona.edu/ontologies/carex#withering', 'withering', 'life cycle ', 'synonym', 7),
(4339, 'http://biosemantics.arizona.edu/ontologies/carex#saturated', 'saturated', 'color saturation ', 'synonym', 7),
(4340, 'http://biosemantics.arizona.edu/ontologies/carex#clavate_ovoid', 'clavate_ovoid', 'ovoid clavate ', 'synonym', 7),
(4341, 'http://biosemantics.arizona.edu/ontologies/carex#long_stoloniferous', 'long_stoloniferous', 'stoloniferous ', 'synonym', 7),
(4342, 'http://biosemantics.arizona.edu/ontologies/carex#proximate', 'proximate', 'position ', 'synonym', 7),
(4343, 'http://biosemantics.arizona.edu/ontologies/carex#fine_textured', 'fine_textured', 'texture ', 'synonym', 7),
(4344, 'http://biosemantics.arizona.edu/ontologies/carex#distal_margin', 'distal margin', 'margin ', 'synonym', 7),
(4345, 'http://biosemantics.arizona.edu/ontologies/carex#basalmost', 'basalmost', 'basal ', 'synonym', 7),
(4346, 'http://biosemantics.arizona.edu/ontologies/carex#multispicate', 'multispicate', 'spicate ', 'synonym', 7),
(4347, 'http://biosemantics.arizona.edu/ontologies/carex#inflorescence_bract', 'inflorescence bract', 'bract ', 'synonym', 7),
(4348, 'http://biosemantics.arizona.edu/ontologies/carex#segment', 'segment', 'anatomical structure ', 'synonym', 7),
(4349, 'http://biosemantics.arizona.edu/ontologies/carex#large', 'large', 'size ', 'synonym', 7),
(4350, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_terminal_portion_of_inflorescence', 'widest point of terminal porti', 'widest point ', 'synonym', 7),
(4351, 'http://biosemantics.arizona.edu/ontologies/carex#long_peduncled', 'long peduncled', 'peduncled long ', 'synonym', 7),
(4352, 'http://biosemantics.arizona.edu/ontologies/carex#uncrowded', 'uncrowded', 'arrangement ', 'synonym', 7),
(4353, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_lanceolate', 'ovate_lanceolate', 'lanceolate ovate ', 'synonym', 7),
(4354, 'http://biosemantics.arizona.edu/ontologies/carex#nipplelike', 'nipplelike', 'architecture ', 'synonym', 7),
(4355, 'http://biosemantics.arizona.edu/ontologies/carex#puberulent_proximally', 'puberulent proximally', 'puberulent ', 'synonym', 7),
(4356, 'http://biosemantics.arizona.edu/ontologies/carex#lateral_spike', 'lateral spike', 'spike ', 'synonym', 7),
(4357, 'http://biosemantics.arizona.edu/ontologies/carex#cuspitate', 'cuspitate', 'shape ', 'synonym', 7),
(4358, 'http://biosemantics.arizona.edu/ontologies/carex#exerted', 'exerted', 'orientation ', 'synonym', 7),
(4359, 'http://biosemantics.arizona.edu/ontologies/carex#pleated', 'pleated', 'shape ', 'synonym', 7),
(4360, 'http://biosemantics.arizona.edu/ontologies/carex#trigonous', 'trigonous', 'triangular ', 'synonym', 7),
(4361, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_ovate', 'elliptic_ovate', 'ovate elliptic ', 'synonym', 7),
(4362, 'http://biosemantics.arizona.edu/ontologies/carex#widest', 'widest', 'relative width ', 'synonym', 7),
(4363, 'http://biosemantics.arizona.edu/ontologies/carex#texture_of_perigynium', 'texture of perigynium', 'perceived texture ', 'synonym', 7),
(4364, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_achene', 'width of achene', 'perceived width ', 'synonym', 7),
(4365, 'http://biosemantics.arizona.edu/ontologies/carex#short_acute', 'short_acute', 'acute ', 'synonym', 7),
(4366, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_staminate_scale', 'color of staminate scale', 'perceived color ', 'synonym', 7),
(4367, 'http://biosemantics.arizona.edu/ontologies/carex#leaf_base', 'leaf_base', 'base ', 'synonym', 7),
(4368, 'http://biosemantics.arizona.edu/ontologies/carex#maturing', 'maturing', 'life cycle ', 'synonym', 7),
(4369, 'http://biosemantics.arizona.edu/ontologies/carex#projecting', 'projecting', 'exerted ', 'synonym', 7),
(4370, 'http://biosemantics.arizona.edu/ontologies/carex#spikelet', 'spikelet', 'spike ', 'synonym', 7),
(4371, 'http://biosemantics.arizona.edu/ontologies/carex#flowered', 'flowered', 'architecture ', 'synonym', 7),
(4372, 'http://biosemantics.arizona.edu/ontologies/carex#grading_from_dark_red_to_green', 'grading from dark red to green', 'graded ', 'synonym', 7),
(4373, 'http://biosemantics.arizona.edu/ontologies/carex#anther_apex', 'anther apex', 'apex ', 'synonym', 7),
(4374, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_pistillate_scale', 'apex of pistillate scale', 'apex ', 'synonym', 7),
(4375, 'http://biosemantics.arizona.edu/ontologies/carex#widest_face_of_perigynium', 'widest face of perigynium', 'face ', 'synonym', 7),
(4376, 'http://biosemantics.arizona.edu/ontologies/carex#pubescence_of_margin_of_bract_blade', 'pubescence of margin of bract ', 'perceived pubescence ', 'synonym', 7),
(4377, 'http://biosemantics.arizona.edu/ontologies/carex#dot', 'dot', 'spot ', 'synonym', 7),
(4378, 'http://biosemantics.arizona.edu/ontologies/carex#spot', 'spot', 'anatomical structure ', 'synonym', 7),
(4379, 'http://biosemantics.arizona.edu/ontologies/carex#strong', 'strong', 'fragility ', 'synonym', 7),
(4380, 'http://biosemantics.arizona.edu/ontologies/carex#hollow', 'hollow', 'architecture ', 'synonym', 7),
(4381, 'http://biosemantics.arizona.edu/ontologies/carex#silvery_green', 'silvery green', 'green silvery ', 'synonym', 7),
(4382, 'http://biosemantics.arizona.edu/ontologies/carex#disintegrating', 'disintegrating', 'dehiscence ', 'synonym', 7),
(4383, 'http://biosemantics.arizona.edu/ontologies/carex#arial_shoot', 'arial shoot', 'shoot ', 'synonym', 7),
(4384, 'http://biosemantics.arizona.edu/ontologies/carex#whitish_hyaline', 'whitish hyaline', 'hyaline ', 'synonym', 7),
(4385, 'http://biosemantics.arizona.edu/ontologies/carex#elongate_oblong', 'elongate_oblong', 'oblong ', 'synonym', 7),
(4386, 'http://biosemantics.arizona.edu/ontologies/carex#marginal', 'marginal', 'position ', 'synonym', 7),
(4387, 'http://biosemantics.arizona.edu/ontologies/carex#interspersed', 'interspersed', 'arrangement ', 'synonym', 7),
(4388, 'http://biosemantics.arizona.edu/ontologies/carex#stained', 'stained', 'multi_colored ', 'synonym', 7),
(4389, 'http://biosemantics.arizona.edu/ontologies/carex#dark_olive', 'dark olive', 'dark green olive green ', 'synonym', 7),
(4390, 'http://biosemantics.arizona.edu/ontologies/carex#septa', 'septa', 'anatomical structure ', 'synonym', 7),
(4391, 'http://biosemantics.arizona.edu/ontologies/carex#dark_green', 'dark green', 'green dark ', 'synonym', 7),
(4392, 'http://biosemantics.arizona.edu/ontologies/carex#tall', 'tall', 'height ', 'synonym', 7),
(4393, 'http://biosemantics.arizona.edu/ontologies/carex#abaxial_midrib', 'abaxial midrib', 'midrib ', 'synonym', 7),
(4394, 'http://biosemantics.arizona.edu/ontologies/carex#splitting', 'splitting', 'architecture ', 'synonym', 7),
(4395, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_anther', 'length of anther', 'perceived length ', 'synonym', 7),
(4396, 'http://biosemantics.arizona.edu/ontologies/carex#obvoid', 'obvoid', 'shape ', 'synonym', 7),
(4397, 'http://biosemantics.arizona.edu/ontologies/carex#color_of_pistillate_scale', 'color of pistillate scale', 'perceived color ', 'synonym', 7),
(4398, 'http://biosemantics.arizona.edu/ontologies/carex#subbasal', 'subbasal', 'basal ', 'synonym', 7),
(4399, 'http://biosemantics.arizona.edu/ontologies/carex#cyme', 'cyme', 'inflorescence ', 'synonym', 7),
(4400, 'http://biosemantics.arizona.edu/ontologies/carex#base_of_proximal_scale_of_terminal_portion_of_inflorescence', 'base of proximal scale of term', 'base ', 'synonym', 7),
(4401, 'http://biosemantics.arizona.edu/ontologies/carex#shortly_bidentate', 'shortly bidentate', 'bidentate ', 'synonym', 7),
(4402, 'http://biosemantics.arizona.edu/ontologies/carex#deltoid_ovoid', 'deltoid_ovoid', 'deltate ovoid ', 'synonym', 7),
(4403, 'http://biosemantics.arizona.edu/ontologies/carex#dull', 'dull', 'reflectance ', 'synonym', 7),
(4404, 'http://biosemantics.arizona.edu/ontologies/carex#red_tinged', 'red tinged', 'tinged red ', 'synonym', 7),
(4405, 'http://biosemantics.arizona.edu/ontologies/carex#lower', 'lower', 'low ', 'synonym', 7),
(4406, 'http://biosemantics.arizona.edu/ontologies/carex#spreading_ascending', 'spreading_ascending', 'ascending ', 'synonym', 7),
(4407, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_terminal_portion_of_inflorescence', 'length of terminal portion of ', 'perceived length ', 'synonym', 7),
(4408, 'http://biosemantics.arizona.edu/ontologies/carex#locule', 'locule', 'reproductive structure ', 'synonym', 7),
(4409, 'http://biosemantics.arizona.edu/ontologies/carex#lance_subulate', 'lance_subulate', 'subulate ', 'synonym', 7),
(4410, 'http://biosemantics.arizona.edu/ontologies/carex#black_brown', 'black brown', 'black brown ', 'synonym', 7),
(4411, 'http://biosemantics.arizona.edu/ontologies/carex#bulging', 'bulging', 'shape pubescence ', 'synonym', 7),
(4412, 'http://biosemantics.arizona.edu/ontologies/carex#length_of_perigynium_beak', 'length of perigynium beak', 'perceived length ', 'synonym', 7),
(4413, 'http://biosemantics.arizona.edu/ontologies/carex#awn_shaped', 'awn_shaped', 'shape ', 'synonym', 7),
(4414, 'http://biosemantics.arizona.edu/ontologies/carex#gold_brown', 'gold brown', 'gold brown ', 'synonym', 7),
(4415, 'http://biosemantics.arizona.edu/ontologies/carex#long_pendunculate', 'long_pendunculate', 'architecture ', 'synonym', 7),
(4416, 'http://biosemantics.arizona.edu/ontologies/carex#orbicular_ovate', 'orbicular_ovate', 'ovate ', 'synonym', 7),
(4417, 'http://biosemantics.arizona.edu/ontologies/carex#green_yellow', 'green yellow', 'green yellow ', 'synonym', 7),
(4418, 'http://biosemantics.arizona.edu/ontologies/carex#subtruncate', 'subtruncate', 'truncate ', 'synonym', 7),
(4419, 'http://biosemantics.arizona.edu/ontologies/carex#narrowly_oblong', 'narrowly oblong', 'oblong ', 'synonym', 7),
(4420, 'http://biosemantics.arizona.edu/ontologies/carex#racemose', 'racemose', 'arrangement ', 'synonym', 7),
(4421, 'http://biosemantics.arizona.edu/ontologies/carex#scabrous_ciliate', 'scabrous_ciliate', 'ciliate ', 'synonym', 7),
(4422, 'http://biosemantics.arizona.edu/ontologies/carex#cortex', 'cortex', 'anatomical structure ', 'synonym', 7),
(4423, 'http://biosemantics.arizona.edu/ontologies/carex#lowest', 'lowest', 'low ', 'synonym', 7),
(4424, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_orbicular', 'elliptic_orbicular', 'orbiculate elliptic ', 'synonym', 7),
(4425, 'http://biosemantics.arizona.edu/ontologies/carex#outcurved', 'outcurved', 'shape ', 'synonym', 7),
(4426, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point', 'widest point', 'point ', 'synonym', 7),
(4427, 'http://biosemantics.arizona.edu/ontologies/carex#opposite_margin_of_pistillate_scale', 'opposite margin of pistillate ', 'margin of pistillate scale ', 'synonym', 7),
(4428, 'http://biosemantics.arizona.edu/ontologies/carex#perigynium', 'perigynium', 'prophyll ', 'synonym', 7),
(4429, 'http://biosemantics.arizona.edu/ontologies/carex#nonbasal', 'nonbasal', 'position ', 'synonym', 7),
(4430, 'http://biosemantics.arizona.edu/ontologies/carex#short_cuspidate', 'short_cuspidate', 'cuspidate ', 'synonym', 7),
(4431, 'http://biosemantics.arizona.edu/ontologies/carex#abaxial_bract_blade', 'abaxial bract blade', 'abaxial surface ', 'synonym', 7),
(4432, 'http://biosemantics.arizona.edu/ontologies/carex#shape_in_transverse_section', 'shape in transverse section', 'shape ', 'synonym', 7),
(4433, 'http://biosemantics.arizona.edu/ontologies/carex#rounded_angled', 'rounded_angled', 'angled ', 'synonym', 7),
(4434, 'http://biosemantics.arizona.edu/ontologies/carex#elliptic_oblong', 'elliptic_oblong', 'elliptic oblong ', 'synonym', 7),
(4435, 'http://biosemantics.arizona.edu/ontologies/carex#ensheathed', 'ensheathed', 'toreview ', 'synonym', 7),
(4436, 'http://biosemantics.arizona.edu/ontologies/carex#enveloping', 'enveloping', 'enclosing ', 'synonym', 7),
(4437, 'http://biosemantics.arizona.edu/ontologies/carex#leafless', 'leafless', 'architecture ', 'synonym', 7),
(4438, 'http://biosemantics.arizona.edu/ontologies/carex#terminal_spikelet', 'terminal spikelet', 'spikelet ', 'synonym', 7),
(4439, 'http://biosemantics.arizona.edu/ontologies/carex#carex_standard_character_set', 'carex standard character set', 'character collection ', 'synonym', 7),
(4440, 'http://biosemantics.arizona.edu/ontologies/carex#surface', 'surface', 'anatomical structure ', 'synonym', 7),
(4441, 'http://biosemantics.arizona.edu/ontologies/carex#bractless', 'bractless', 'architecture ', 'synonym', 7),
(4442, 'http://biosemantics.arizona.edu/ontologies/carex#light_olive', 'light olive', 'light green ', 'synonym', 7),
(4443, 'http://biosemantics.arizona.edu/ontologies/carex#edged', 'edged', 'architecture ', 'synonym', 7),
(4444, 'http://biosemantics.arizona.edu/ontologies/carex#brown_stained', 'brown stained', 'stained brown ', 'synonym', 7),
(4445, 'http://biosemantics.arizona.edu/ontologies/carex#fid', 'fid', 'shape ', 'synonym', 7),
(4446, 'http://biosemantics.arizona.edu/ontologies/carex#falling', 'falling', 'life cycle ', 'synonym', 7),
(4447, 'http://biosemantics.arizona.edu/ontologies/carex#ribbed', 'ribbed', 'architecture ', 'synonym', 7),
(4448, 'http://biosemantics.arizona.edu/ontologies/carex#subdistichous', 'subdistichous', 'distichous ', 'synonym', 7),
(4449, 'http://biosemantics.arizona.edu/ontologies/carex#costa', 'costa', 'anatomical structure ', 'synonym', 7),
(4450, 'http://biosemantics.arizona.edu/ontologies/carex#orangebrown', 'orange brown', 'orange brown ', 'synonym', 7),
(4451, 'http://biosemantics.arizona.edu/ontologies/carex#linear_oblanceolate', 'linear_oblanceolate', 'oblanceolate ', 'synonym', 7),
(4452, 'http://biosemantics.arizona.edu/ontologies/carex#short_convex', 'short_convex', 'convex ', 'synonym', 7),
(4453, 'http://biosemantics.arizona.edu/ontologies/carex#adventitious', 'adventitious', 'derivation ', 'synonym', 7),
(4454, 'http://biosemantics.arizona.edu/ontologies/carex#reduced_magnitude', 'reduced magnitude', 'size ', 'synonym', 7),
(4455, 'http://biosemantics.arizona.edu/ontologies/carex#vein_of_staminate_scale', 'vein of staminate scale', 'vein ', 'synonym', 7),
(4456, 'http://biosemantics.arizona.edu/ontologies/carex#widest_point_of_ligule', 'widest point of ligule', 'widest point ', 'synonym', 7),
(4457, 'http://biosemantics.arizona.edu/ontologies/carex#2nd_order_long_branch', '2nd order long branch', 'long branch ', 'synonym', 7),
(4458, 'http://biosemantics.arizona.edu/ontologies/carex#epistomic', 'epistomic', 'architecture ', 'synonym', 7),
(4459, 'http://biosemantics.arizona.edu/ontologies/carex#anatomical_structure', 'anatomical structure', '', 'synonym', 7),
(4460, 'http://biosemantics.arizona.edu/ontologies/carex#stripe', 'stripe', 'multi_colored ', 'synonym', 7),
(4461, 'http://biosemantics.arizona.edu/ontologies/carex#bladed', 'bladed', 'architecture ', 'synonym', 7),
(4462, 'http://biosemantics.arizona.edu/ontologies/carex#spaced', 'spaced', 'arrangement ', 'synonym', 7),
(4463, 'http://biosemantics.arizona.edu/ontologies/carex#mixed', 'mixed', 'toreview ', 'synonym', 7),
(4464, 'http://biosemantics.arizona.edu/ontologies/carex#long_aristate', 'long_aristate', 'aristate ', 'synonym', 7),
(4465, 'http://biosemantics.arizona.edu/ontologies/carex#green_and_white', 'green and white', 'multi_colored ', 'synonym', 7),
(4466, 'http://biosemantics.arizona.edu/ontologies/carex#scale_shaped', 'scale_shaped', 'shape ', 'synonym', 7),
(4467, 'http://biosemantics.arizona.edu/ontologies/carex#needle_shaped', 'needle_shaped', 'shape ', 'synonym', 7),
(4468, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_triangular', 'ovate_triangular', 'triangular ovate ', 'synonym', 7),
(4469, 'http://biosemantics.arizona.edu/ontologies/carex#terminal_portion_of_inflorescence', 'terminal portion of infloresce', 'distal portion ', 'synonym', 7),
(4470, 'http://biosemantics.arizona.edu/ontologies/carex#elongate', 'elongate', 'shape ', 'synonym', 7),
(4471, 'http://biosemantics.arizona.edu/ontologies/carex#mouth', 'mouth', 'anatomical structure ', 'synonym', 7),
(4472, 'http://biosemantics.arizona.edu/ontologies/carex#number_of_stigmas', 'number of stigmas', 'perceived quantity ', 'synonym', 7),
(4473, 'http://biosemantics.arizona.edu/ontologies/carex#base', 'base', 'anatomical structure ', 'synonym', 7),
(4474, 'http://biosemantics.arizona.edu/ontologies/carex#ultimate', 'ultimate', 'toreview ', 'synonym', 7),
(4475, 'http://biosemantics.arizona.edu/ontologies/carex#sheathing', 'sheathing', 'anatomical structure ', 'synonym', 7),
(4476, 'http://biosemantics.arizona.edu/ontologies/carex#short_papillose', 'short_papillose', 'papillose ', 'synonym', 7),
(4477, 'http://biosemantics.arizona.edu/ontologies/carex#node_of_proximal_bract', 'node of proximal bract of infl', 'node ', 'synonym', 7),
(4478, 'http://biosemantics.arizona.edu/ontologies/carex#setulose_serrulate', 'setulose_serrulate', 'serrulate ', 'synonym', 7),
(4479, 'http://biosemantics.arizona.edu/ontologies/carex#apex_of_sheath_inner_band', 'apex of sheath inner band', 'apex ', 'synonym', 7),
(4480, 'http://biosemantics.arizona.edu/ontologies/carex#mitrate', 'mitrate', 'shape ', 'synonym', 7),
(4481, 'http://biosemantics.arizona.edu/ontologies/carex#proximal_lateral_branch', 'proximal lateral branch', 'proximal branch ', 'synonym', 7),
(4482, 'http://biosemantics.arizona.edu/ontologies/carex#thin_margined', 'thin_margined', 'margined ', 'synonym', 7),
(4483, 'http://biosemantics.arizona.edu/ontologies/carex#lacking', 'lacking', 'quantity ', 'synonym', 7),
(4484, 'http://biosemantics.arizona.edu/ontologies/carex#distlmost_lateral_spike', 'distlmost lateral spike', 'spike ', 'synonym', 7),
(4485, 'http://biosemantics.arizona.edu/ontologies/carex#purple_dotted', 'purple dotted', 'dotted purple ', 'synonym', 7),
(4486, 'http://biosemantics.arizona.edu/ontologies/carex#streaked', 'streaked', 'stripe ', 'synonym', 7),
(4487, 'http://biosemantics.arizona.edu/ontologies/carex#distal_portion', 'distal portion', 'portion ', 'synonym', 7),
(4488, 'http://biosemantics.arizona.edu/ontologies/carex#pearlescent', 'pearlescent', 'lustrous ', 'synonym', 7),
(4489, 'http://biosemantics.arizona.edu/ontologies/carex#relative_position_of_pistillate_scale_to_perigynium', 'relative position of pistillat', 'perceived relative position ', 'synonym', 7),
(4490, 'http://biosemantics.arizona.edu/ontologies/carex#hyaline_gold', 'hyaline gold', 'gold ', 'synonym', 7),
(4491, 'http://biosemantics.arizona.edu/ontologies/carex#pale_gold_tinged', 'pale gold tinged', 'pale gold tinged ', 'synonym', 7),
(4492, 'http://biosemantics.arizona.edu/ontologies/carex#shape_of_perigynium_in_transverse_section', 'shape of perigynium in transve', 'perceived shape in transverse section ', 'synonym', 7),
(4493, 'http://biosemantics.arizona.edu/ontologies/carex#subflat', 'subflat', 'flat ', 'synonym', 7),
(4494, 'http://biosemantics.arizona.edu/ontologies/carex#oblong_lanceoloid', 'oblong_lanceoloid', 'lanceoloid ', 'synonym', 7),
(4495, 'http://biosemantics.arizona.edu/ontologies/carex#streak', 'streak', 'stripe ', 'synonym', 7),
(4496, 'http://biosemantics.arizona.edu/ontologies/carex#light_brown', 'light brown', 'light brown ', 'synonym', 7),
(4497, 'http://biosemantics.arizona.edu/ontologies/carex#hair_shaped', 'hair_shaped', 'shape ', 'synonym', 7),
(4498, 'http://biosemantics.arizona.edu/ontologies/carex#bright_yellow', 'bright yellow', 'bright yellow ', 'synonym', 7),
(4499, 'http://biosemantics.arizona.edu/ontologies/carex#drying', 'drying', 'condition ', 'synonym', 7),
(4500, 'http://biosemantics.arizona.edu/ontologies/carex#distal_bract_node', 'distal bract node', 'node ', 'synonym', 7),
(4501, 'http://biosemantics.arizona.edu/ontologies/carex#thick', 'thick', 'depth ', 'synonym', 7),
(4502, 'http://biosemantics.arizona.edu/ontologies/carex#scale', 'scale', 'bract ', 'synonym', 7),
(4503, 'http://biosemantics.arizona.edu/ontologies/carex#loosely_spreading', 'loosely spreading', 'spreading ', 'synonym', 7),
(4504, 'http://biosemantics.arizona.edu/ontologies/carex#distal_end', 'distal end', 'end ', 'synonym', 7),
(4505, 'http://biosemantics.arizona.edu/ontologies/carex#gold_tinged', 'gold tinged', 'tinged gold ', 'synonym', 7),
(4506, 'http://biosemantics.arizona.edu/ontologies/carex#sheath_summits_collar', 'sheath summits collar', 'anatomical structure ', 'synonym', 7),
(4507, 'http://biosemantics.arizona.edu/ontologies/carex#coppery_tinged', 'coppery tinged', 'tinged bronze ', 'synonym', 7),
(4508, 'http://biosemantics.arizona.edu/ontologies/carex#intervenal', 'intervenal', 'position ', 'synonym', 7),
(4509, 'http://biosemantics.arizona.edu/ontologies/carex#perceived_relative_position', 'perceived relative position', 'perceived quality ', 'synonym', 7),
(4510, 'http://biosemantics.arizona.edu/ontologies/carex#ovate_acute', 'ovate_acute', 'acute ', 'synonym', 7),
(4511, 'http://biosemantics.arizona.edu/ontologies/carex#something22', 'something22', 'dsfd', 'addTerm', 10),
(4512, 'http://biosemantics.arizona.edu/ontologies/carex#testtype1_of_testnoun1', 'testtype1 of testnoun1', 'This is test1 of whole character.', 'addTerm', 8),
(4513, 'http://biosemantics.arizona.edu/ontologies/carex#apical_tooth', 'apical tooth', 'Term is unclear but could refer to one of two projections (teeth) that are associaed with the beak of the perigynium or projections along the edge of a perigynium body', 'addTerm', 7),
(4514, 'http://biosemantics.arizona.edu/ontologies/carex#testnoun3', 'testnoun3', 'TestNoun3', 'addTerm', 8),
(4515, 'http://biosemantics.arizona.edu/ontologies/carex#testtype2', 'testtype2', 'This is test2 of type.', 'addTerm', 8),
(4516, 'http://biosemantics.arizona.edu/ontologies/carex#something11', 'something11', 'sf', 'addTerm', 10),
(4517, 'http://biosemantics.arizona.edu/ontologies/carex#something1', 'something1', 'this is a fake character name', 'addTerm', 10),
(4518, 'http://biosemantics.arizona.edu/ontologies/carex#something2', 'something2', 'this is a fake structure', 'addTerm', 10),
(4519, 'http://biosemantics.arizona.edu/ontologies/carex#something1_of_something2', 'something1 of something2', 'this is a fake character hong tested', 'addTerm', 10),
(4520, 'http://biosemantics.arizona.edu/ontologies/carex#something11_of_something22', 'something11 of something22', 'sdfdf', 'addTerm', 10),
(4521, 'http://biosemantics.arizona.edu/ontologies/carex#width_of_testnoun1', 'width_of_testnoun1', 'This is test of width testnoun1.', 'addTerm', 8),
(4522, 'http://biosemantics.arizona.edu/ontologies/carex#testtype1', 'testtype1', 'This is test1 of type.', 'addTerm', 8),
(4523, 'http://biosemantics.arizona.edu/ontologies/carex#testtype2_of_testnoun1', 'testtype2 of testnoun1', 'This is test2 of whole character.', 'addTerm', 8),
(4524, 'http://biosemantics.arizona.edu/ontologies/carex#testtype3', 'testtype3', 'TestTyp3', 'addTerm', 8),
(4525, 'http://biosemantics.arizona.edu/ontologies/carex#testnoun1', 'testnoun1', 'This is test1 of noun.', 'addTerm', 8);

-- --------------------------------------------------------

--
-- Table structure for table `definition`
--

CREATE TABLE `definition` (
  `id` int(11) NOT NULL,
  `definition` varchar(500) NOT NULL,
  `termId` int(11) NOT NULL,
  `expertId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `definition`
--

INSERT INTO `definition` (`id`, `definition`, `termId`, `expertId`) VALUES
(80, 'from [bottom] to [top] include [top] exclude [top] where [top]', 3458, NULL),
(81, 'This is width of testNoun3.', 3458, NULL),
(82, 'from [bottom] to [top] include [bottom] exclude [top] where [top]', 3458, NULL),
(83, 'The disposition of a structure with reference to some non_homologous (dissimilar) structures or larger context. E.g., adaxial, antipetalous, apical, axillary, basal. Differentiate this category from Location.', 3564, NULL),
(84, '\"A spatial quality inhering in a bearer by virtue of the bearer\'s spatial location relative to other objects in the vicinity\"', 3564, NULL),
(85, '\"A morphology quality inhering in a bearer by virtue of the bearer\'s physical magnitude\"', 3591, NULL),
(86, 'Absolute or relative extent in any one dimension or in an area or volume, e.g., big, medium_sized, small.', 3591, NULL),
(87, 'from [edge] to [top] include [top] exclude [top] where [top]', 3608, NULL),
(88, 'from [edge] to [test] include [testInclude] exclude [testExclude] where [testWhere]', 3608, NULL),
(89, 'TestTYpe3_of testnoun3', 3629, NULL),
(90, 'TestType3 of TestNoun3', 3629, NULL),
(91, 'TestType3 of testNoun3', 3629, NULL),
(92, 'AR', 3920, NULL),
(93, 'The widest leaf blade on a plant', 3920, NULL),
(94, 'Usually referring to the stalk attaching the ovary to the receptacle', 3987, NULL),
(95, 'The slender stalk of a structure', 3987, NULL),
(96, '\"A morphological quality inhering in a bearer by virtue of the bearer\'s ratios of distances between its features (points, edges, surfaces and also holes etc)\"', 4019, NULL),
(97, 'Overall two_ or three â€“ dimensional form or aspect thereof, e.g., rounded, spheroid, folded, folding, incurling.', 4019, NULL),
(98, 'AR', 4052, NULL),
(99, 'The lowermost perigynium in a spike', 4052, NULL),
(100, 'AR', 4150, NULL),
(101, 'The surface or side of an organ oriented away from the axis', 4150, NULL),
(102, 'Substantial properties as perceived by visual and tactile senses, e.g. bony, fleshy, leathery, papery, cartilaginous. Differentiate this category from Pubescence, Relief, and Coating.', 4305, NULL),
(103, '\"A morphologic quality inhering in a bearer by virtue of the bearer\'s relative size, organization and distribution of its surface elements or the representation or invention of the appearance of its surface; visual and tactile surface characteristics\"', 4305, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `expertId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`expertId`, `username`, `password`, `firstname`, `lastname`, `email`, `token`) VALUES
(1, 'ermangurses', '827ccb0eea8a706c4c34a16891f84e7b', 'Erman', 'Gurses', 'egurses@email.arizona', 'eIwhDjTeaRo:APA91bHjsrFCeMiHMO211WzWt9lzGUplptRcojS4pCwupp6VJI6Xpzb3ePM7wIrTJKIf7PpyV-BL_p0-qHvpKjbR7MW8b7MKDRP4Z2v_b71hOPrKWtMpcvNLWaCyUMNQpzGjGbONAspy'),
(3, 'hong', 'fd2cc6c54239c40495a0d3a93b6380eb', 'Hong', 'Cui', 'hongcui@email.arizona.edu', 'erIngM8iKK8:APA91bEy69S8WJHG8ZixWn6wdB8lM7RNFSfYOb6hiaeDmXVZTevzLQMO2UNdsI3XUWwbA5kTpCLbqBriHdX69BUuB9oK1H5FzKQYS0TPeWnQRFfYYY4Ut19npmGfoubH0cr-FL0Rsw4o'),
(6, 'test', '827ccb0eea8a706c4c34a16891f84e7b', 'test', 'test', 'test@test.edu', 'eFs49O6iLSo:APA91bHM-PUJ_Q1v63txJU_Ywz4KdIHrsMGrCMt0ytqFD7UQhr0Mq10Is6_p0LLpULRGc41QgVBT4ZjzVklOaVWzGGNMWD2O9YORqs4O_r2Y7PiBhknJbANLexiz8tX3xXHeZXwlDZg2'),
(7, 'test1', '827ccb0eea8a706c4c34a16891f84e7b', 'test1', 'test1', 'test1@test1.edu', 'er9hftWPkLQ:APA91bHJMfFCYSmHK7B0K6X1O2mt5fyo-KkN7DV0ZDDKFd0fSEyntd_5VB6rjMJ0-E99U-KtJEbe1VkNEsMLDCj4l0z3qtVhXwOOY4br_kFV6ci8m0-M75CiC_0xvGmsmTdAmwVc_TIO'),
(10, 'test4', '827ccb0eea8a706c4c34a16891f84e7b', 'test4', 'test4', 'test4@test4.edu', 'fto4uC4Hdwg:APA91bF8YEvYg8Q1VHLEruVhPFqDGPCvOGYvEIA-gkoEBv74C83RonlRmpMHdxflPWiPobHLrL4fcCESFXxS_Inxkj4ZsRQFxTDA94So8jfq12zXuJnuAq8DuCeiikKNiwwW9BvLDXTL'),
(11, 'erm', '827ccb0eea8a706c4c34a16891f84e7b', 'Derman', 'Durses', 'ermangurses@gmail.com', NULL),
(12, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(13, 'heng', '213599ed5ea31f12e2c78bf0c05c2500', 'heng', 'sokom', 'heng@test.com', NULL),
(14, 'riya', '3153be13ca91e847668fbf430757a0b5', 'Riya', 'Shah', 'riyashah@email.arizona.edu', 'fpL8e7nibNo:APA91bF0mRRzUoB9Kgvb1VG8yOFKjOvFdsFxgCQwAwh-lv5zUcSV24_bX1fHDODbjosInwGqjh4Ze8hsyfJo_FHE7fGCHHhYvwOkchn--ANlGQkgYWk95eY00kQqhnsOFfmHsdbfjP1d'),
(15, 'riyashah', '3153be13ca91e847668fbf430757a0b5', 'Riya', 'Shah', 'riyashah@gmail.com', NULL),
(16, 'first', 'fd2cc6c54239c40495a0d3a93b6380eb', 'first', 'test', 'first@email.com', NULL),
(23, 'yu', '385d04e7683a033fcc6c6654529eb7e9', 'yu', 'yu', 'yu', NULL),
(24, 'second', 'fd2cc6c54239c40495a0d3a93b6380eb', 'second', 'test', 'second@test.com', NULL),
(25, 'zzzzz', '453e41d218e071ccfb2d1c99ce23906a', 'zzzzz', 'zzzzz', 'zzzzz', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `j_confusingterm_option`
--

CREATE TABLE `j_confusingterm_option` (
  `id` int(11) NOT NULL,
  `termId` int(11) NOT NULL,
  `optionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_confusingterm_option`
--

INSERT INTO `j_confusingterm_option` (`id`, `termId`, `optionId`) VALUES
(375, 3408, 141),
(376, 3408, 142),
(377, 3409, 143),
(378, 3409, 144),
(379, 3410, 145),
(380, 3410, 146);

-- --------------------------------------------------------

--
-- Table structure for table `option_`
--

CREATE TABLE `option_` (
  `optionId` int(11) NOT NULL,
  `IRI` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `option_` varchar(30) DEFAULT NULL,
  `definition` varchar(200) DEFAULT NULL,
  `image_link` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `option_`
--

INSERT INTO `option_` (`optionId`, `IRI`, `option_`, `definition`, `image_link`) VALUES
(141, 'http://biosemantics.arizona.edu/ontologies/carex#hyaline', 'hyaline', 'thin, membranous and translucent or transparent ', ''),
(142, 'http://biosemantics.arizona.edu/ontologies/carex#pale', 'pale', '\"having color of reduced saturation\" ', ''),
(143, 'http://biosemantics.arizona.edu/ontologies/carex#tinged', 'tinged', '', ''),
(144, 'http://biosemantics.arizona.edu/ontologies/carex#black', 'black', '\"A color that lacks any hues as parts\" ', ''),
(145, 'http://biosemantics.arizona.edu/ontologies/carex#toreview', 'toreview', '', ''),
(146, 'http://biosemantics.arizona.edu/ontologies/carex#shape', 'shape', '\"A morphological quality inhering in a bearer by virtue of the bearer\'s ratios of distances between its features (points, edges, surfaces and also holes etc)\" Overall two_ or three â€“ dimensional for', '');

-- --------------------------------------------------------

--
-- Table structure for table `sentence`
--

CREATE TABLE `sentence` (
  `id` int(11) NOT NULL,
  `sentence` varchar(500) NOT NULL,
  `termId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sentence`
--

INSERT INTO `sentence` (`id`, `sentence`, `termId`) VALUES
(81, 'Spike consisting of slender terminal cone of (1â€“)2â€“4 staminate flowers and (1â€“)2â€“6(â€“7) pistillate flowers, 3â€“10 (often 5â€“8) Ã— 2â€“8 (immature fruit) or to 17 (mature fruit) mm.', 3420),
(82, 'Spike consisting of slender terminal cone of (1â€“)2â€“4 staminate flowers and (1â€“)2â€“6(â€“7) pistillate flowers, 3â€“10 (often 5â€“8) Ã— 2â€“8 (immature fruit) or to 17 (mature fruit) mm.', 3434),
(83, 'tba', 3458),
(84, 'Plants perennial, forming dense clumps', 3601),
(85, 'tba', 3608),
(86, 'inflorescences with proximal spikes Â± strongly separate on slender peduncles , others approximate and short_pedunculate or subsessile , narrowly oblong to cylindric , 1 â€“ 4 cm Ã— 3 . 5 â€“ 5 . 6 mm ;', 3644),
(87, 'bases and remnants of old leaves slightly fibrous .(FNA)', 3651),
(88, 'ligules acute, 5 mm, free limb to 0.5 mm', 3674),
(89, 'inflorescences : longer peduncle of terminal spike 2 â€“ 5 ( â€“ 8 . 5 ) cm ;', 3675),
(90, 'Secondary inflorescences panicles, often modified to corymb, pseudoumbel, cyme (anthela), raceme, spike, or capitulum (head), rarely single spike, usually subtended by foliaceous or, less frequently, glumaceous bracts', 3738),
(91, '\"scales usually all fertile , each subtending a single flower\"', 3814),
(92, 'leaves : proximal sheaths loose , longitudinally green_and_white_striped , green_and_white_mottled , with prominent cross veins on backs , fronts hyaline and transversely rugose ;', 3847),
(93, 'antrorsely scabrous on margins and keel', 3894),
(94, 'culms trigonous , angles obtuse , 4 â€“ 35 cm , scabrous distally .', 3923),
(95, 'cataphylls with concave cells', 3965),
(96, 'achenes stalked to 0.15 mm .', 4129),
(97, 'sheath tight', 4244),
(98, 'Plants not cespitose, some colony forming.', 4248),
(99, 'style tapering from swelling just beyond attachment to achene , bent , ascending through entire orifice (Carex)', 4271),
(100, 'perigynia spreading to reflexed , green , 6 â€“ 13 veined abaxially , ( 0 â€“ ) 1 â€“ 12 veined adaxially over achene , broadly ovate to suborbicular , cuneate or concavely tapered from widest point to beak , 1 . 9 â€“ 3 . 8 Ã— ( 1 . 3 â€“ ) 2 . 1 â€“ 3 mm , 1 . 1 â€“ 1 . 7 ( â€“ 1 . 9 ) times as long as wide ; (FNA)', 4426),
(101, 'ultimate apex rounded', 4474),
(102, 'beak straight , pale green , not strongly 2_edged , 0 . 6 â€“ 1 . 6 mm , ciliate_serrulate , apical teeth 0 . 2 â€“ 0 . 5 mm .', 4513);

-- --------------------------------------------------------

--
-- Table structure for table `synonymsolution`
--

CREATE TABLE `synonymsolution` (
  `id` int(11) NOT NULL,
  `sentenceId` int(11) NOT NULL,
  `definitionId` int(11) NOT NULL,
  `expertId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `synonymsolution`
--

INSERT INTO `synonymsolution` (`id`, `sentenceId`, `definitionId`, `expertId`) VALUES
(4, 85, 87, 23),
(5, 85, 88, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtermsolution`
--
ALTER TABLE `addtermsolution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termId` (`termId`),
  ADD KEY `expertId` (`expertId`);

--
-- Indexes for table `addtermsynonyms`
--
ALTER TABLE `addtermsynonyms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addtermsynonyms_ibfk_1` (`termId`),
  ADD KEY `expertId` (`expertId`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorId`);

--
-- Indexes for table `categorysolution`
--
ALTER TABLE `categorysolution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `confusingtermId` (`termId`),
  ADD KEY `expertId` (`expertId`);

--
-- Indexes for table `confusingterm`
--
ALTER TABLE `confusingterm`
  ADD PRIMARY KEY (`termId`),
  ADD KEY `authorId` (`authorId`);

--
-- Indexes for table `definition`
--
ALTER TABLE `definition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termId` (`termId`),
  ADD KEY `expertId` (`expertId`);

--
-- Indexes for table `expert`
--
ALTER TABLE `expert`
  ADD PRIMARY KEY (`expertId`),
  ADD UNIQUE KEY `tk` (`token`);

--
-- Indexes for table `j_confusingterm_option`
--
ALTER TABLE `j_confusingterm_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionId` (`optionId`),
  ADD KEY `termId` (`termId`);

--
-- Indexes for table `option_`
--
ALTER TABLE `option_`
  ADD PRIMARY KEY (`optionId`);

--
-- Indexes for table `sentence`
--
ALTER TABLE `sentence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termId` (`termId`);

--
-- Indexes for table `synonymsolution`
--
ALTER TABLE `synonymsolution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `definitionId` (`definitionId`),
  ADD KEY `sentenceId` (`sentenceId`),
  ADD KEY `expertId` (`expertId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtermsolution`
--
ALTER TABLE `addtermsolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `addtermsynonyms`
--
ALTER TABLE `addtermsynonyms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `authorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categorysolution`
--
ALTER TABLE `categorysolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confusingterm`
--
ALTER TABLE `confusingterm`
  MODIFY `termId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4526;

--
-- AUTO_INCREMENT for table `definition`
--
ALTER TABLE `definition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `expert`
--
ALTER TABLE `expert`
  MODIFY `expertId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `j_confusingterm_option`
--
ALTER TABLE `j_confusingterm_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `option_`
--
ALTER TABLE `option_`
  MODIFY `optionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `sentence`
--
ALTER TABLE `sentence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `synonymsolution`
--
ALTER TABLE `synonymsolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addtermsolution`
--
ALTER TABLE `addtermsolution`
  ADD CONSTRAINT `addtermsolution_ibfk_1` FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addtermsolution_ibfk_2` FOREIGN KEY (`expertId`) REFERENCES `expert` (`expertId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addtermsynonyms`
--
ALTER TABLE `addtermsynonyms`
  ADD CONSTRAINT `addtermsynonyms_ibfk_1` FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addtermsynonyms_ibfk_2` FOREIGN KEY (`expertId`) REFERENCES `expert` (`expertId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categorysolution`
--
ALTER TABLE `categorysolution`
  ADD CONSTRAINT `categorysolution_ibfk_2` FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categorysolution_ibfk_3` FOREIGN KEY (`expertId`) REFERENCES `expert` (`expertId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `confusingterm`
--
ALTER TABLE `confusingterm`
  ADD CONSTRAINT `confusingterm_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `author` (`authorId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `definition`
--
ALTER TABLE `definition`
  ADD CONSTRAINT `definition_ibfk_1` FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `definition_ibfk_2` FOREIGN KEY (`expertId`) REFERENCES `expert` (`expertId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j_confusingterm_option`
--
ALTER TABLE `j_confusingterm_option`
  ADD CONSTRAINT `j_confusingterm_option_ibfk_1` FOREIGN KEY (`optionId`) REFERENCES `option_` (`optionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j_confusingterm_option_ibfk_2` FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sentence`
--
ALTER TABLE `sentence`
  ADD CONSTRAINT `sentence_ibfk_1` FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `synonymsolution`
--
ALTER TABLE `synonymsolution`
  ADD CONSTRAINT `synonymsolution_ibfk_1` FOREIGN KEY (`definitionId`) REFERENCES `definition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `synonymsolution_ibfk_2` FOREIGN KEY (`sentenceId`) REFERENCES `sentence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `synonymsolution_ibfk_3` FOREIGN KEY (`expertId`) REFERENCES `expert` (`expertId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
