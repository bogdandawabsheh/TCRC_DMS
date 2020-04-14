-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 01:41 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apollosoftware`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `workEmail` varchar(50) NOT NULL,
  `workPhone` varchar(25) NOT NULL,
  `workLocation` varchar(50) DEFAULT NULL,
  `institutionID` int(11) DEFAULT 0,
  `contactType` varchar(255) NOT NULL,
  `TCRC` varchar(20) NOT NULL,
  `ULINKS` varchar(20) NOT NULL,
  `CLINKS` varchar(20) NOT NULL,
  `showFellow` varchar(20) NOT NULL,
  `fellowType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contactInfo`
--

CREATE TABLE `contactInfo` (
  `contactID` int(11) NOT NULL,
  `personalEmail` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `pcode` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `phoneAlt` varchar(50) NOT NULL,
  `bio` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(100) NOT NULL,
  `institutionName` varchar(50) NOT NULL DEFAULT 'Trent U.',
  `NLA` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facultyDepartment`
--

CREATE TABLE `facultyDepartment` (
  `facultyID` int(11) NOT NULL,
  `departmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_email`
--

CREATE TABLE `group_email` (
  `id` int(4) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `email` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_email`
--

INSERT INTO `group_email` (`id`, `name`, `email`) VALUES
(1, 'Nikhil', 'nikhilpaiganesh@trentu.ca'),
(2, 'Nikhil', 'nikzzz8@gmail.com'),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, '', ''),
(13, '', ''),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, '', ''),
(19, '', ''),
(20, '', ''),
(21, '', ''),
(22, '', ''),
(23, '', ''),
(24, '', ''),
(25, '', ''),
(26, '', ''),
(27, '', ''),
(28, '', ''),
(29, '', ''),
(30, '', ''),
(31, '', ''),
(32, '', ''),
(33, '', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(44, '', ''),
(45, '', ''),
(46, '', ''),
(47, '', ''),
(48, '', ''),
(49, '', ''),
(50, '', ''),
(51, '', ''),
(52, '', ''),
(53, '', ''),
(54, '', ''),
(55, '', ''),
(56, '', ''),
(57, '', ''),
(58, '', ''),
(59, '', ''),
(60, '', ''),
(61, '', ''),
(62, '', ''),
(63, '', ''),
(64, '', ''),
(65, '', ''),
(66, '', ''),
(67, '', ''),
(68, '', ''),
(69, '', ''),
(70, '', ''),
(71, '', ''),
(72, '', ''),
(73, '', ''),
(74, '', ''),
(75, '', ''),
(76, '', ''),
(77, '', ''),
(78, '', ''),
(79, '', ''),
(80, '', ''),
(81, '', ''),
(82, '', ''),
(83, '', ''),
(84, '', ''),
(85, '', ''),
(86, '', ''),
(87, '', ''),
(88, '', ''),
(89, '', ''),
(90, '', ''),
(91, '', ''),
(92, '', ''),
(93, '', ''),
(94, '', ''),
(95, '', ''),
(96, '', ''),
(97, '', ''),
(98, '', ''),
(99, '', ''),
(100, '', ''),
(101, '', ''),
(102, '', ''),
(103, '', ''),
(104, '', ''),
(105, '', ''),
(106, '', ''),
(107, '', ''),
(108, '', ''),
(109, '', ''),
(110, '', ''),
(111, '', ''),
(112, '', ''),
(113, '', ''),
(114, '', ''),
(115, '', ''),
(116, '', ''),
(117, '', ''),
(118, '', ''),
(119, '', ''),
(120, '', ''),
(121, '', ''),
(122, '', ''),
(123, '', ''),
(124, '', ''),
(125, '', ''),
(126, '', ''),
(127, '', ''),
(128, '', ''),
(129, '', ''),
(130, '', ''),
(131, '', ''),
(132, '', ''),
(133, '', ''),
(134, '', ''),
(135, '', ''),
(136, '', ''),
(137, '', ''),
(138, '', ''),
(139, '', ''),
(140, '', ''),
(141, '', ''),
(142, '', ''),
(143, '', ''),
(144, '', ''),
(145, '', ''),
(146, '', ''),
(147, '', ''),
(148, '', ''),
(149, '', ''),
(150, '', ''),
(151, '', ''),
(152, '', ''),
(153, '', ''),
(154, '', ''),
(155, '', ''),
(156, '', ''),
(157, '', ''),
(158, '', ''),
(159, '', ''),
(160, '', ''),
(161, '', ''),
(162, '', ''),
(163, '', ''),
(164, '', ''),
(165, '', ''),
(166, '', ''),
(167, '', ''),
(168, '', ''),
(169, '', ''),
(170, '', ''),
(171, '', ''),
(172, '', ''),
(173, '', ''),
(174, '', ''),
(175, '', ''),
(176, '', ''),
(177, '', ''),
(178, '', ''),
(179, '', ''),
(180, '', ''),
(181, '', ''),
(182, '', ''),
(183, '', ''),
(184, '', ''),
(185, '', ''),
(186, '', ''),
(187, '', ''),
(188, '', ''),
(189, '', ''),
(190, '', ''),
(191, '', ''),
(192, '', ''),
(193, '', ''),
(194, '', ''),
(195, '', ''),
(196, '', ''),
(197, '', ''),
(198, '', ''),
(199, '', ''),
(200, '', ''),
(201, '', ''),
(202, '', ''),
(203, '', ''),
(204, '', ''),
(205, '', ''),
(206, '', ''),
(207, '', ''),
(208, '', ''),
(209, '', ''),
(210, '', ''),
(211, '', ''),
(212, '', ''),
(213, '', ''),
(214, '', ''),
(215, '', ''),
(216, '', ''),
(217, '', ''),
(218, '', ''),
(219, '', ''),
(220, '', ''),
(221, '', ''),
(222, '', ''),
(223, '', ''),
(224, '', ''),
(225, '', ''),
(226, '', ''),
(227, '', ''),
(228, '', ''),
(229, '', ''),
(230, '', ''),
(231, '', ''),
(232, '', ''),
(233, '', ''),
(234, '', ''),
(235, '', ''),
(236, '', ''),
(237, '', ''),
(238, '', ''),
(239, '', ''),
(240, '', ''),
(241, '', ''),
(242, '', ''),
(243, '', ''),
(244, '', ''),
(245, '', ''),
(246, '', ''),
(247, '', ''),
(248, '', ''),
(249, '', ''),
(250, '', ''),
(251, '', ''),
(252, '', ''),
(253, '', ''),
(254, '', ''),
(255, '', ''),
(256, '', ''),
(257, '', ''),
(258, '', ''),
(259, '', ''),
(260, '', ''),
(261, '', ''),
(262, '', ''),
(263, '', ''),
(264, '', ''),
(265, '', ''),
(266, '', ''),
(267, '', ''),
(268, '', ''),
(269, '', ''),
(270, '', ''),
(271, '', ''),
(272, '', ''),
(273, '', ''),
(274, '', ''),
(275, '', ''),
(276, '', ''),
(277, '', ''),
(278, '', ''),
(279, '', ''),
(280, '', ''),
(281, '', ''),
(282, '', ''),
(283, '', ''),
(284, '', ''),
(285, '', ''),
(286, '', ''),
(287, '', ''),
(288, '', ''),
(289, '', ''),
(290, '', ''),
(291, '', ''),
(292, '', ''),
(293, '', ''),
(294, '', ''),
(295, '', ''),
(296, '', ''),
(297, '', ''),
(298, '', ''),
(299, '', ''),
(300, '', ''),
(301, '', ''),
(302, '', ''),
(303, '', ''),
(304, '', ''),
(305, '', ''),
(306, '', ''),
(307, '', ''),
(308, '', ''),
(309, '', ''),
(310, '', ''),
(311, '', ''),
(312, '', ''),
(313, '', ''),
(314, '', ''),
(315, '', ''),
(316, '', ''),
(317, '', ''),
(318, '', ''),
(319, '', ''),
(320, '', ''),
(321, '', ''),
(322, '', ''),
(323, '', ''),
(324, '', ''),
(325, '', ''),
(326, '', ''),
(327, '', ''),
(328, '', ''),
(329, '', ''),
(330, '', ''),
(331, '', ''),
(332, '', ''),
(333, '', ''),
(334, '', ''),
(335, '', ''),
(336, '', ''),
(337, '', ''),
(338, '', ''),
(339, '', ''),
(340, '', ''),
(341, '', ''),
(342, '', ''),
(343, '', ''),
(344, '', ''),
(345, '', ''),
(346, '', ''),
(347, '', ''),
(348, '', ''),
(349, '', ''),
(350, '', ''),
(351, '', ''),
(352, '', ''),
(353, '', ''),
(354, '', ''),
(355, '', ''),
(356, '', ''),
(357, '', ''),
(358, '', ''),
(359, '', ''),
(360, '', ''),
(361, '', ''),
(362, '', ''),
(363, '', ''),
(364, '', ''),
(365, '', ''),
(366, '', ''),
(367, '', ''),
(368, '', ''),
(369, '', ''),
(370, '', ''),
(371, '', ''),
(372, '', ''),
(373, '', ''),
(374, '', ''),
(375, '', ''),
(376, '', ''),
(377, '', ''),
(378, '', ''),
(379, '', ''),
(380, '', ''),
(381, '', ''),
(382, '', ''),
(383, '', ''),
(384, '', ''),
(385, '', ''),
(386, '', ''),
(387, '', ''),
(388, '', ''),
(389, '', ''),
(390, '', ''),
(391, '', ''),
(392, '', ''),
(393, '', ''),
(394, '', ''),
(395, '', ''),
(396, '', ''),
(397, '', ''),
(398, '', ''),
(399, '', ''),
(400, '', ''),
(401, '', ''),
(402, '', ''),
(403, '', ''),
(404, '', ''),
(405, '', ''),
(406, '', ''),
(407, '', ''),
(408, '', ''),
(409, '', ''),
(410, '', ''),
(411, '', ''),
(412, '', ''),
(413, '', ''),
(414, '', ''),
(415, '', ''),
(416, '', ''),
(417, '', ''),
(418, '', ''),
(419, '', ''),
(420, '', ''),
(421, '', ''),
(422, '', ''),
(423, '', ''),
(424, '', ''),
(425, '', ''),
(426, '', ''),
(427, '', ''),
(428, '', ''),
(429, '', ''),
(430, '', ''),
(431, '', ''),
(432, '', ''),
(433, '', ''),
(434, '', ''),
(435, '', ''),
(436, '', ''),
(437, '', ''),
(438, '', ''),
(439, '', ''),
(440, '', ''),
(441, '', ''),
(442, '', ''),
(443, '', ''),
(444, '', ''),
(445, '', ''),
(446, '', ''),
(447, '', ''),
(448, '', ''),
(449, '', ''),
(450, '', ''),
(451, '', ''),
(452, '', ''),
(453, '', ''),
(454, '', ''),
(455, '', ''),
(456, '', ''),
(457, '', ''),
(458, '', ''),
(459, '', ''),
(460, '', ''),
(461, '', ''),
(462, '', ''),
(463, '', ''),
(464, '', ''),
(465, '', ''),
(466, '', ''),
(467, '', ''),
(468, '', ''),
(469, '', ''),
(470, '', ''),
(471, '', ''),
(472, '', ''),
(473, '', ''),
(474, '', ''),
(475, '', ''),
(476, '', ''),
(477, '', ''),
(478, '', ''),
(479, '', ''),
(480, '', ''),
(481, '', ''),
(482, '', ''),
(483, '', ''),
(484, '', ''),
(485, '', ''),
(486, '', ''),
(487, '', ''),
(488, '', ''),
(489, '', ''),
(490, '', ''),
(491, '', ''),
(492, '', ''),
(493, '', ''),
(494, '', ''),
(495, '', ''),
(496, '', ''),
(497, '', ''),
(498, '', ''),
(499, '', ''),
(500, '', ''),
(501, '', ''),
(502, '', ''),
(503, '', ''),
(504, '', ''),
(505, '', ''),
(506, '', ''),
(507, '', ''),
(508, '', ''),
(509, '', ''),
(510, '', ''),
(511, '', ''),
(512, '', ''),
(513, '', ''),
(514, '', ''),
(515, '', ''),
(516, '', ''),
(517, '', ''),
(518, '', ''),
(519, '', ''),
(520, '', ''),
(521, '', ''),
(522, '', ''),
(523, '', ''),
(524, '', ''),
(525, '', ''),
(526, '', ''),
(527, '', ''),
(528, '', ''),
(529, '', ''),
(530, '', ''),
(531, '', ''),
(532, '', ''),
(533, '', ''),
(534, '', ''),
(535, '', ''),
(536, '', ''),
(537, '', ''),
(538, '', ''),
(539, '', ''),
(540, '', ''),
(541, '', ''),
(542, '', ''),
(543, '', ''),
(544, '', ''),
(545, '', ''),
(546, '', ''),
(547, '', ''),
(548, '', ''),
(549, '', ''),
(550, '', ''),
(551, '', ''),
(552, '', ''),
(553, '', ''),
(554, '', ''),
(555, '', ''),
(556, '', ''),
(557, '', ''),
(558, '', ''),
(559, '', ''),
(560, '', ''),
(561, '', ''),
(562, '', ''),
(563, '', ''),
(564, '', ''),
(565, '', ''),
(566, '', ''),
(567, '', ''),
(568, '', ''),
(569, '', ''),
(570, '', ''),
(571, '', ''),
(572, '', ''),
(573, '', ''),
(574, '', ''),
(575, '', ''),
(576, '', ''),
(577, '', ''),
(578, '', ''),
(579, '', ''),
(580, '', ''),
(581, '', ''),
(582, '', ''),
(583, '', ''),
(584, '', ''),
(585, '', ''),
(586, '', ''),
(587, '', ''),
(588, '', ''),
(589, '', ''),
(590, '', ''),
(591, '', ''),
(592, '', ''),
(593, '', ''),
(594, '', ''),
(595, '', ''),
(596, '', ''),
(597, '', ''),
(598, '', ''),
(599, '', ''),
(600, '', ''),
(601, '', ''),
(602, '', ''),
(603, '', ''),
(604, '', ''),
(605, '', ''),
(606, '', ''),
(607, '', ''),
(608, '', ''),
(609, '', ''),
(610, '', ''),
(611, '', ''),
(612, '', ''),
(613, '', ''),
(614, '', ''),
(615, '', ''),
(616, '', ''),
(617, '', ''),
(618, '', ''),
(619, '', ''),
(620, '', ''),
(621, '', ''),
(622, '', ''),
(623, '', ''),
(624, '', ''),
(625, '', ''),
(626, '', ''),
(627, '', ''),
(628, '', ''),
(629, '', ''),
(630, '', ''),
(631, '', ''),
(632, '', ''),
(633, '', ''),
(634, '', ''),
(635, '', ''),
(636, '', ''),
(637, '', ''),
(638, '', ''),
(639, '', ''),
(640, '', ''),
(641, '', ''),
(642, '', ''),
(643, '', ''),
(644, '', ''),
(645, '', ''),
(646, '', ''),
(647, '', ''),
(648, '', ''),
(649, '', ''),
(650, '', ''),
(651, '', ''),
(652, '', ''),
(653, '', ''),
(654, '', ''),
(655, '', ''),
(656, '', ''),
(657, '', ''),
(658, '', ''),
(659, '', ''),
(660, '', ''),
(661, '', ''),
(662, '', ''),
(663, '', ''),
(664, '', ''),
(665, '', ''),
(666, '', ''),
(667, '', ''),
(668, '', ''),
(669, '', ''),
(670, '', ''),
(671, '', ''),
(672, '', ''),
(673, '', ''),
(674, '', ''),
(675, '', ''),
(676, '', ''),
(677, '', ''),
(678, '', ''),
(679, '', ''),
(680, '', ''),
(681, '', ''),
(682, '', ''),
(683, '', ''),
(684, '', ''),
(685, '', ''),
(686, '', ''),
(687, '', ''),
(688, '', ''),
(689, '', ''),
(690, '', ''),
(691, '', ''),
(692, '', ''),
(693, '', ''),
(694, '', ''),
(695, '', ''),
(696, '', ''),
(697, '', ''),
(698, '', ''),
(699, '', ''),
(700, '', ''),
(701, '', ''),
(702, '', ''),
(703, '', ''),
(704, '', ''),
(705, '', ''),
(706, '', ''),
(707, '', ''),
(708, '', ''),
(709, '', ''),
(710, '', ''),
(711, '', ''),
(712, '', ''),
(713, '', ''),
(714, '', ''),
(715, '', ''),
(716, '', ''),
(717, '', ''),
(718, '', ''),
(719, '', ''),
(720, '', ''),
(721, '', ''),
(722, '', ''),
(723, '', ''),
(724, '', ''),
(725, '', ''),
(726, '', ''),
(727, '', ''),
(728, '', ''),
(729, '', ''),
(730, '', ''),
(731, '', ''),
(732, '', ''),
(733, '', ''),
(734, '', ''),
(735, '', ''),
(736, '', ''),
(737, '', ''),
(738, '', ''),
(739, '', ''),
(740, '', ''),
(741, '', ''),
(742, '', ''),
(743, '', ''),
(744, '', ''),
(745, '', ''),
(746, '', ''),
(747, '', ''),
(748, '', ''),
(749, '', ''),
(750, '', ''),
(751, '', ''),
(752, '', ''),
(753, '', ''),
(754, '', ''),
(755, '', ''),
(756, '', ''),
(757, '', ''),
(758, '', ''),
(759, '', ''),
(760, '', ''),
(761, '', ''),
(762, '', ''),
(763, '', ''),
(764, '', ''),
(765, '', ''),
(766, '', ''),
(767, '', ''),
(768, '', ''),
(769, '', ''),
(770, '', ''),
(771, '', ''),
(772, '', ''),
(773, '', ''),
(774, '', ''),
(775, '', ''),
(776, '', ''),
(777, '', ''),
(778, '', ''),
(779, '', ''),
(780, '', ''),
(781, '', ''),
(782, '', ''),
(783, '', ''),
(784, '', ''),
(785, '', ''),
(786, '', ''),
(787, '', ''),
(788, '', ''),
(789, '', ''),
(790, '', ''),
(791, '', ''),
(792, '', ''),
(793, '', ''),
(794, '', ''),
(795, '', ''),
(796, '', ''),
(797, '', ''),
(798, '', ''),
(799, '', ''),
(800, '', ''),
(801, '', ''),
(802, '', ''),
(803, '', ''),
(804, '', ''),
(805, '', ''),
(806, '', ''),
(807, '', ''),
(808, '', ''),
(809, '', ''),
(810, '', ''),
(811, '', ''),
(812, '', ''),
(813, '', ''),
(814, '', ''),
(815, '', ''),
(816, '', ''),
(817, '', ''),
(818, '', ''),
(819, '', ''),
(820, '', ''),
(821, '', ''),
(822, '', ''),
(823, '', ''),
(824, '', ''),
(825, '', ''),
(826, '', ''),
(827, '', ''),
(828, '', ''),
(829, '', ''),
(830, '', ''),
(831, '', ''),
(832, '', ''),
(833, '', ''),
(834, '', ''),
(835, '', ''),
(836, '', ''),
(837, '', ''),
(838, '', ''),
(839, '', ''),
(840, '', ''),
(841, '', ''),
(842, '', ''),
(843, '', ''),
(844, '', ''),
(845, '', ''),
(846, '', ''),
(847, '', ''),
(848, '', ''),
(849, '', ''),
(850, '', ''),
(851, '', ''),
(852, '', ''),
(853, '', ''),
(854, '', ''),
(855, '', ''),
(856, '', ''),
(857, '', ''),
(858, '', ''),
(859, '', ''),
(860, '', ''),
(861, '', ''),
(862, '', ''),
(863, '', ''),
(864, '', ''),
(865, '', ''),
(866, '', ''),
(867, '', ''),
(868, '', ''),
(869, '', ''),
(870, '', ''),
(871, '', ''),
(872, '', ''),
(873, '', ''),
(874, '', ''),
(875, '', ''),
(876, '', ''),
(877, '', ''),
(878, '', ''),
(879, '', ''),
(880, '', ''),
(881, '', ''),
(882, '', ''),
(883, '', ''),
(884, '', ''),
(885, '', ''),
(886, '', ''),
(887, '', ''),
(888, '', ''),
(889, '', ''),
(890, '', ''),
(891, '', ''),
(892, '', ''),
(893, '', ''),
(894, '', ''),
(895, '', ''),
(896, '', ''),
(897, '', ''),
(898, '', ''),
(899, '', ''),
(900, '', ''),
(901, '', ''),
(902, '', ''),
(903, '', ''),
(904, '', ''),
(905, '', ''),
(906, '', ''),
(907, '', ''),
(908, '', ''),
(909, '', ''),
(910, '', ''),
(911, '', ''),
(912, '', ''),
(913, '', ''),
(914, '', ''),
(915, '', ''),
(916, '', ''),
(917, '', ''),
(918, '', ''),
(919, '', ''),
(920, '', ''),
(921, '', ''),
(922, '', ''),
(923, '', ''),
(924, '', ''),
(925, '', ''),
(926, '', ''),
(927, '', ''),
(928, '', ''),
(929, '', ''),
(930, '', ''),
(931, '', ''),
(932, '', ''),
(933, '', ''),
(934, '', ''),
(935, '', ''),
(936, '', ''),
(937, '', ''),
(938, '', ''),
(939, '', ''),
(940, '', ''),
(941, '', ''),
(942, '', ''),
(943, '', ''),
(944, '', ''),
(945, '', ''),
(946, '', ''),
(947, '', ''),
(948, '', ''),
(949, '', ''),
(950, '', ''),
(951, '', ''),
(952, '', ''),
(953, '', ''),
(954, '', ''),
(955, '', ''),
(956, '', ''),
(957, '', ''),
(958, '', ''),
(959, '', ''),
(960, '', ''),
(961, '', ''),
(962, '', ''),
(963, '', ''),
(964, '', ''),
(965, '', ''),
(966, '', ''),
(967, '', ''),
(968, '', ''),
(969, '', ''),
(970, '', ''),
(971, '', ''),
(972, '', ''),
(973, '', ''),
(974, '', ''),
(975, '', ''),
(976, '', ''),
(977, '', ''),
(978, '', ''),
(979, '', ''),
(980, '', ''),
(981, '', ''),
(982, '', ''),
(983, '', ''),
(984, '', ''),
(985, '', ''),
(986, '', ''),
(987, '', ''),
(988, '', ''),
(989, '', ''),
(990, '', ''),
(991, '', ''),
(992, '', ''),
(993, '', ''),
(994, '', ''),
(995, '', ''),
(996, '', ''),
(997, '', ''),
(998, '', ''),
(999, '', ''),
(1000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hostAddress`
--

CREATE TABLE `hostAddress` (
  `organizationID` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `addressALT` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostOrganization`
--

CREATE TABLE `hostOrganization` (
  `id` int(11) NOT NULL,
  `orgName` varchar(100) NOT NULL,
  `orgType` varchar(50) NOT NULL,
  `hostClass` varchar(100) NOT NULL,
  `contactName` varchar(100) NOT NULL,
  `notes` blob DEFAULT NULL,
  `NLA` varchar(3) NOT NULL,
  `departmentID` varchar(11) DEFAULT NULL,
  `WSIB` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `office` varchar(50) DEFAULT NULL,
  `research` varchar(50) DEFAULT NULL,
  `projectTitle` varchar(255) DEFAULT NULL,
  `projectNumber` int(11) DEFAULT NULL,
  `projectDescription` longtext DEFAULT NULL,
  `DepartmentalCode` varchar(255) DEFAULT NULL,
  `deptID` int(11) DEFAULT NULL,
  `dateProposed` varchar(20) DEFAULT NULL,
  `dateReceived` varchar(20) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `signedRPA` tinyint(1) DEFAULT NULL,
  `WEPA` tinyint(1) DEFAULT NULL,
  `dateWithdrawn` varchar(20) DEFAULT NULL,
  `dateCompleted` varchar(20) DEFAULT NULL,
  `HostOrganizationName` varchar(255) DEFAULT NULL,
  `hostOrganizationID` int(11) DEFAULT NULL,
  `courseReq` tinyint(1) DEFAULT NULL,
  `notes` blob DEFAULT NULL,
  `BFUser` varchar(255) DEFAULT NULL,
  `BFActivity` longtext DEFAULT NULL,
  `facultySupervisorID` varchar(255) DEFAULT NULL,
  `BFDateOfNote` varchar(20) DEFAULT NULL,
  `dateProjectMatched` varchar(20) DEFAULT NULL,
  `callNumber` varchar(100) DEFAULT NULL,
  `staffID` int(11) DEFAULT NULL,
  `staffCode` varchar(255) DEFAULT NULL,
  `PClink` varchar(100) DEFAULT NULL,
  `departmentCode` varchar(255) DEFAULT NULL,
  `institutionID` varchar(11) DEFAULT NULL,
  `regionID` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status_percentage` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectForm`
--

CREATE TABLE `projectForm` (
  `id` int(11) NOT NULL,
  `orgName` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logoConsent` int(11) DEFAULT NULL,
  `orgPurpose` varchar(100) DEFAULT NULL,
  `orgYear` int(11) DEFAULT NULL,
  `orgEmployee` int(11) DEFAULT NULL,
  `approved` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `projectScale` varchar(200) DEFAULT NULL,
  `projectTitle` varchar(100) DEFAULT NULL,
  `projectDescription` varchar(200) DEFAULT NULL,
  `projectTask` varchar(200) DEFAULT NULL,
  `projectStartDate` date DEFAULT NULL,
  `projectEndDate` date DEFAULT NULL,
  `researchEthics1` int(11) DEFAULT NULL,
  `researchEthics2` int(11) DEFAULT NULL,
  `researchEthics3` int(11) DEFAULT NULL,
  `projectImplementation` varchar(100) DEFAULT NULL,
  `screeningReq1` int(11) DEFAULT NULL,
  `screeningReq2` int(11) DEFAULT NULL,
  `additionalSkills` varchar(100) DEFAULT NULL,
  `resourcesNeeded` varchar(100) DEFAULT NULL,
  `fundingNeeded` varchar(100) DEFAULT NULL,
  `additionalNotes` varchar(200) DEFAULT NULL,
  `photoLink` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectHost`
--

CREATE TABLE `projectHost` (
  `projectID` int(11) NOT NULL,
  `hostID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectTheme`
--

CREATE TABLE `projectTheme` (
  `projectID` int(11) NOT NULL,
  `researchThemeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `regionName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `research_themes`
--

CREATE TABLE `research_themes` (
  `id` int(11) NOT NULL,
  `themeName` varchar(255) NOT NULL DEFAULT '',
  `parentID` int(32) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `studentNum` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `pcode` varchar(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `notes` blob DEFAULT NULL,
  `leftTrent` tinyint(4) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `credAchieved` tinyint(4) DEFAULT NULL,
  `cumAchieved` tinyint(4) DEFAULT NULL,
  `exempt` tinyint(4) DEFAULT NULL,
  `altAddress` varchar(100) DEFAULT NULL,
  `altEmail` varchar(255) DEFAULT NULL,
  `altPhone` varchar(20) DEFAULT NULL,
  `yearCreated` varchar(4) DEFAULT NULL,
  `institutionID` int(11) DEFAULT NULL,
  `foreignStatus` varchar(255) DEFAULT NULL,
  `showAsFellow` tinyint(1) DEFAULT NULL,
  `fellowType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentForm`
--

CREATE TABLE `studentForm` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `tNumber` varchar(255) DEFAULT NULL,
  `studNumber` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `studentStatus` varchar(30) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mailConsentTCRC` int(11) DEFAULT NULL,
  `mailConsentULinks` int(11) DEFAULT NULL,
  `projectInterestID` int(11) DEFAULT NULL,
  `projectInterestID_2` int(11) NOT NULL,
  `projectInterestID_3` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `facultySupervisor` varchar(255) DEFAULT NULL,
  `CreditAchieved` int(11) DEFAULT NULL,
  `CumulativeAchieved` int(11) DEFAULT NULL,
  `deptPrereq` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentProject`
--

CREATE TABLE `studentProject` (
  `studentID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentSkills`
--

CREATE TABLE `studentSkills` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentStudentSkills`
--

CREATE TABLE `studentStudentSkills` (
  `studentID` int(11) NOT NULL,
  `studentSkillsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Flag` varchar(15) NOT NULL DEFAULT 'C',
  `studentID` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactInfo`
--
ALTER TABLE `contactInfo`
  ADD KEY `contactID` (`contactID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultyDepartment`
--
ALTER TABLE `facultyDepartment`
  ADD KEY `departmentID` (`departmentID`),
  ADD KEY `facultyID` (`facultyID`);

--
-- Indexes for table `hostAddress`
--
ALTER TABLE `hostAddress`
  ADD KEY `organizationID` (`organizationID`);

--
-- Indexes for table `hostOrganization`
--
ALTER TABLE `hostOrganization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectForm`
--
ALTER TABLE `projectForm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_themes`
--
ALTER TABLE `research_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `institutionID` (`institutionID`);

--
-- Indexes for table `studentForm`
--
ALTER TABLE `studentForm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentSkills`
--
ALTER TABLE `studentSkills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentStudentSkills`
--
ALTER TABLE `studentStudentSkills`
  ADD KEY `studentID` (`studentID`),
  ADD KEY `studentSkillsID` (`studentSkillsID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactInfo`
--
ALTER TABLE `contactInfo`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostAddress`
--
ALTER TABLE `hostAddress`
  MODIFY `organizationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostOrganization`
--
ALTER TABLE `hostOrganization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institution`
--
ALTER TABLE `institution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectForm`
--
ALTER TABLE `projectForm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_themes`
--
ALTER TABLE `research_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentForm`
--
ALTER TABLE `studentForm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentSkills`
--
ALTER TABLE `studentSkills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
