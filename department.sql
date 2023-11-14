-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 01:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `department`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add doctor_ depert_name', 7, 'add_doctor_depert_name'),
(26, 'Can change doctor_ depert_name', 7, 'change_doctor_depert_name'),
(27, 'Can delete doctor_ depert_name', 7, 'delete_doctor_depert_name'),
(28, 'Can view doctor_ depert_name', 7, 'view_doctor_depert_name'),
(29, 'Can add sub_ disease', 8, 'add_sub_disease'),
(30, 'Can change sub_ disease', 8, 'change_sub_disease'),
(31, 'Can delete sub_ disease', 8, 'delete_sub_disease'),
(32, 'Can view sub_ disease', 8, 'view_sub_disease'),
(33, 'Can add symptom', 9, 'add_symptom'),
(34, 'Can change symptom', 9, 'change_symptom'),
(35, 'Can delete symptom', 9, 'delete_symptom'),
(36, 'Can view symptom', 9, 'view_symptom');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_from_doctor_depert_name`
--

CREATE TABLE `dashboard_from_doctor_depert_name` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_from_doctor_depert_name`
--

INSERT INTO `dashboard_from_doctor_depert_name` (`id`, `name`) VALUES
(50, 'Cardiology Department'),
(59, 'Cardiology Department or Emergency Medicine'),
(44, 'Dermatology'),
(62, 'Dermatology Department'),
(48, 'Diabetology Department'),
(60, 'Endocrinology Department'),
(45, 'General Surgery'),
(56, 'Hepatology Department'),
(63, 'Infectious Disease '),
(43, 'Infectious Disease Department'),
(47, 'Infectious Disease or HIV/AIDS Clinic/ Virology'),
(66, 'Infectious Disease/Otolaryngology/ENT'),
(57, 'Internal Medicine or Primary Care Department'),
(55, 'Internal Medicine'),
(46, 'Medicine or Allergy and Immunology Department'),
(68, 'Neurology'),
(51, 'Neurology Department'),
(52, 'Neurosurgery Department'),
(54, 'nfectious Disease or Pediatrics Department / Virology'),
(64, 'Obstetrics '),
(65, 'Oncology '),
(67, 'Otolaryngology '),
(49, 'Pulmonology or Respiratory Medicine Department'),
(58, 'Pulmonology/ Risphithory medicine Department'),
(53, 'Pure Medicine Department'),
(61, 'Rheumatology Department or Orthopedics');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_from_sub_disease`
--

CREATE TABLE `dashboard_from_sub_disease` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `dep_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_from_sub_disease`
--

INSERT INTO `dashboard_from_sub_disease` (`id`, `name`, `dep_id_id`) VALUES
(18, 'Fungal infection', 43),
(19, 'Allergy', 44),
(20, 'Chronic cholestasis', 45),
(21, 'Drug Reaction', 46),
(22, 'AIDS', 47),
(23, 'Diabetes', 48),
(24, 'Bronchial Asthma', 49),
(25, 'hypertension', 50),
(26, 'Migraine', 51),
(28, 'Paralysis (brain hemorrhage)', 52),
(29, 'Malaria', 53),
(30, 'Chicken pox', 54),
(31, 'Dengue', 43),
(32, 'Typhoid', 55),
(33, 'hepatitis A', 56),
(34, 'Common Cold', 57),
(35, 'Pneumonia', 58),
(36, 'Heart attack', 59),
(37, 'Hypothyroidism', 60),
(38, 'Hypoglycemia', 48),
(39, 'Arthritis', 61),
(40, 'Acne', 62),
(41, 'COVID', 63),
(42, 'Pregnancy', 64),
(43, 'breast cancer', 65),
(44, 'Throat Fungus', 66),
(45, 'Otitis Media', 67),
(46, 'Acoustic Neuroma', 68),
(47, 'Eustachian Tube Dysfunction', 67),
(48, 'Allergic Rhinitis', 62),
(49, 'Hepatitis B', 56),
(50, 'Hepatitis C', 56),
(51, 'Hepatitis D', 56),
(52, 'Hepatitis E', 56),
(53, 'Alcoholic hepatitis', 56),
(54, 'Hyperthyroidism', 60),
(55, 'Tinnitus', 67),
(56, 'Meniere\'s Disease', 67),
(57, 'Ear Infection', 67),
(58, 'Otosclerosis', 67),
(59, 'Cholesteatoma', 67),
(60, 'Presbycusis', 67),
(61, 'Labyrinthitis', 67),
(62, 'Ear Wax Blockage', 67),
(63, 'Hyperacusis', 67),
(64, 'Swimmer\'s Ear', 67),
(65, 'Ear Polyps', 67),
(66, 'Noise-Induced Hearing Loss', 67),
(67, 'Ear Canal Stenosis', 67),
(68, 'Rhinitis', 67),
(69, 'Sinusitis', 67),
(70, 'Nasal Polyps', 67),
(71, 'Deviated Septum', 67),
(72, 'Nasal Fracture', 67),
(73, 'Nasal Vestibulitis', 67),
(74, 'Rhinophyma', 44),
(75, 'Nasal Dermatitis', 44),
(76, 'Nosebleed (Epistaxis)', 67),
(77, 'Nasal Furuncle (Boil)', 67),
(78, 'Nasal Congestion', 67);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dashboard_from', 'doctor_depert_name'),
(8, 'dashboard_from', 'sub_disease'),
(6, 'sessions', 'session'),
(9, 'symptom', 'symptom');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-06 15:28:19.907876'),
(2, 'auth', '0001_initial', '2023-11-06 15:28:28.877238'),
(3, 'admin', '0001_initial', '2023-11-06 15:28:30.434193'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-06 15:28:30.497607'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-06 15:28:30.539664'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-06 15:28:31.140222'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-06 15:28:32.195038'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-06 15:28:32.401409'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-06 15:28:32.448285'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-06 15:28:33.092499'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-06 15:28:33.139371'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-06 15:28:33.188490'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-06 15:28:33.291147'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-06 15:28:33.432114'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-06 15:28:33.572378'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-06 15:28:33.622062'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-06 15:28:33.715813'),
(18, 'dashboard_from', '0001_initial', '2023-11-06 15:28:33.949515'),
(19, 'dashboard_from', '0002_rename_department_name_doctor_depert_name', '2023-11-06 15:28:34.139272'),
(20, 'dashboard_from', '0003_subdisease', '2023-11-06 15:28:34.946792'),
(21, 'dashboard_from', '0004_rename_subdisease_sub_disease', '2023-11-06 15:28:35.158207'),
(22, 'dashboard_from', '0005_alter_sub_disease_name', '2023-11-06 15:28:35.642261'),
(23, 'dashboard_from', '0006_alter_sub_disease_name', '2023-11-06 15:28:36.145880'),
(24, 'dashboard_from', '0007_alter_sub_disease_dep_id', '2023-11-06 15:28:38.944105'),
(25, 'dashboard_from', '0008_alter_doctor_depert_name_name', '2023-11-06 15:28:39.842412'),
(26, 'sessions', '0001_initial', '2023-11-06 15:28:40.362460'),
(27, 'dashboard_from', '0009_rename_name_sub_disease_nam', '2023-11-06 15:37:39.230719'),
(28, 'dashboard_from', '0010_rename_nam_sub_disease_name', '2023-11-07 13:31:58.082650'),
(29, 'symptom', '0001_initial', '2023-11-08 06:44:39.940475'),
(30, 'symptom', '0002_remove_symptom_symptom1_remove_symptom_symptom2_and_more', '2023-11-08 08:26:15.949427'),
(31, 'symptom', '0003_symptom_symptom10_symptom_symptom11_and_more', '2023-11-12 03:52:52.309528'),
(32, 'symptom', '0004_alter_symptom_symptom1_alter_symptom_symptom10_and_more', '2023-11-12 04:33:55.545311');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `symptom_symptom`
--

CREATE TABLE `symptom_symptom` (
  `id` int(11) NOT NULL,
  `depart_id_id` int(11) DEFAULT NULL,
  `disease_id_id` int(11) DEFAULT NULL,
  `symptom1` varchar(100) DEFAULT NULL,
  `symptom2` varchar(100) DEFAULT NULL,
  `symptom3` varchar(100) DEFAULT NULL,
  `symptom4` varchar(100) DEFAULT NULL,
  `symptom5` varchar(100) DEFAULT NULL,
  `symptom6` varchar(100) DEFAULT NULL,
  `symptom7` varchar(100) DEFAULT NULL,
  `symptom8` varchar(100) DEFAULT NULL,
  `symptom9` varchar(100) DEFAULT NULL,
  `symptom10` varchar(100) DEFAULT NULL,
  `symptom11` varchar(100) DEFAULT NULL,
  `symptom12` varchar(100) DEFAULT NULL,
  `symptom13` varchar(100) DEFAULT NULL,
  `symptom14` varchar(100) DEFAULT NULL,
  `symptom15` varchar(100) DEFAULT NULL,
  `symptom16` varchar(100) DEFAULT NULL,
  `symptom17` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptom_symptom`
--

INSERT INTO `symptom_symptom` (`id`, `depart_id_id`, `disease_id_id`, `symptom1`, `symptom2`, `symptom3`, `symptom4`, `symptom5`, `symptom6`, `symptom7`, `symptom8`, `symptom9`, `symptom10`, `symptom11`, `symptom12`, `symptom13`, `symptom14`, `symptom15`, `symptom16`, `symptom17`) VALUES
(63, 43, 18, 'I have itching', 'I have nodal_skin_eruptions', 'I have dischromic _patches', 'I have skin_rash', 'I don\'t have shivering', 'I don\'t have chills', 'I don\'t have stomach_pain', 'I don\'t have vomiting', 'I don\'t have fatigue', 'I don\'t have lethargy', 'I don\'t have cough', 'I don\'t have congestion', 'I don\'t have back_pain', 'I don\'t have mild_fever', 'I don\'t have phlegm', 'I don\'t have runny_nose', 'I don\'t have neck_pain'),
(64, 44, 19, 'I have continuous_sneezing', 'I have shivering', 'I have chills', 'I have watering_from_eyes', 'I don\'t have cramps', 'I don\'t have obesity', 'I don\'t have brittle_nails', 'I don\'t have knee_pain', 'I don\'t have stiff_neck', 'I don\'t have depression', 'I don\'t have polyuria', 'I don\'t have rusty_sputum', 'I don\'t have palpitations', 'I don\'t have Swelling', 'I don’t have Ear Pain', 'I don\'t have Reduced Hearing', 'I don\'t have Persistent cough'),
(65, 45, 20, 'I have itching', 'I have yellowish_skin', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellowing_of_eyes', 'I don\'t have Blood in urine', 'I don’t have Jaundice', 'I don\'t have Neck lump', 'I don’t have Sinus Pressure', 'I don\'t have Blocked nose', 'I don\'t have wheezing', 'I don\'t have Ear fullness', 'I don\'t have discomfort', 'I don\'t have Bloating', 'I don\'t have fractures', 'I don\'t have sneezing'),
(66, 46, 21, 'I have itching', 'I have skin_rash', 'I have stomach_pain', 'I have burning_micturition', 'I have spotting_ urination', 'I don\'t have Hematuria', 'I don\'t have leg cramps', 'I don\'t have Skin ulcers', 'I don\'t have frequent infections', 'I don\'t have Heaviness', 'I don\'t have Vision problems', 'I don\'t have Headache', 'I don\'t have pain in neck', 'I don\'t have Bruising', 'I don’t have Anxiety', 'I don\'t have dizziness', 'I don\'t have constipation'),
(67, 47, 22, 'I have muscle_wasting', 'I have patches_in_throat', 'I have high_fever', 'I have extra_marital_contacts', 'I don\'t have Bad mouth', 'I don\'t have constipation', 'I don\'t have Soreness', 'I don\'t have ulcers', 'I don’t have dehydration', 'I don\'t have fainting', 'I don\'t have Stress', 'I don\'t have dark urine', 'I don\'t have Numbness', 'I don\'t have weakness', 'I don\'t have irregular heartbeat', 'I don\'t have nervousness', 'I don\'t have eruptions'),
(68, 48, 23, 'I have fatigue', 'I have weight_loss', 'I have restlessness', 'I have lethargy', 'I have irregular_sugar_level', 'I have blurred_and_distorted_vision', 'I have obesity', 'I have excessive_hunger', 'I have increased_appetite', 'I have polyuria', 'I don\'t have urination changes', 'I don\'t have decreased smell', 'I don\'t have seizures', 'I don\'t have hearing difficulties', 'I don\'t have bleeding', 'I don\'t have persistent cough', 'I don\'t have shortness of breath'),
(69, 49, 24, 'I have fatigue', 'I have cough', 'I have high_fever', 'I have breathlessness', 'I have family_history', 'I have mucoid_sputum', 'I don\'t have oily skin', 'I don’t have red scaly patch', 'I don\'t have high blood pressure', 'I don\'t have pale stool', 'I don\'t have regurgitation', 'I don\'t have poor appetite', 'I don\'t have dehydration', 'I don\'t have oral thrush', 'I don\'t have bluish lips', 'I don\'t have spotting', 'I don\'t have enlarged pores'),
(70, 50, 25, 'I have headache', 'I have chest_pain', 'I have dizziness', 'I have loss_of_balance', 'I have lack_of_concentration', 'I don\'t have itchy nose', 'I don\'t have changes in voice', 'I don\'t have difficulty walking', 'I don\'t have muscle aches', 'I don\'t have sunken eyes', 'I don\'t have rash', 'I don\'t have nausea', 'I don’t have short of breath', 'I don\'t have memory problems', 'I don\'t have weight loss', 'I don\'t have fractures', 'I don\'t have skin dimpling'),
(71, 51, 26, 'I have acidity', 'I have indigestion', 'I have headache', 'I have blurred_and_distorted_vision', 'I have excessive_hunger', 'I have stiff_neck', 'I have depression', 'I have irritability', 'I have visual_disturbances', 'I don\'t have blister', 'I don\'t have palpitations', 'I don\'t have stomach bleeding', 'I don\'t have mucoid_sputum', 'I don\'t have belly_pain', 'I don\'t have internal_itching', 'I don\'t have swelling_joints', 'I don\'t have cramps'),
(72, 52, 28, 'I have vomiting', 'I have headache', 'I have weakness_of_one_body_side', 'I have altered_sensorium', 'I don\'t have bruising', 'I don\'t have bladder discomfort', 'I don\'t have irritability', 'I don\'t have rusty_sputum', 'I don\'t have high fever', 'I don\'t have skin changes', 'I don\'t have bone pain', 'I don\'t have nosebleeds', 'I don\'t have thirst', 'I don\'t have facial pain', 'I don\'t have hoarseness', 'I don\'t have sneezing', 'I don\'t have leg cramps'),
(73, 53, 29, 'I have chills', 'I have vomiting', 'I have high_fever', 'I have sweating', 'I have headache', 'I have nausea', 'I have diarrhoea', 'I have muscle_pain', 'I don\'t have urination changes', 'I don\'t have dizziness', 'I don\'t have depression', 'I don\'t have restlessness', 'I don\'t have snoring', 'I don\'t have anxiety', 'I don\'t have metallic taste', 'I don\'t have indigestion', 'I don\'t have peeling'),
(74, 54, 30, 'I have itching', 'I have skin_rash', 'I have fatigue', 'I have lethargy', 'I have high_fever', 'I have headache', 'I have loss_of_appetite', 'I have mild_fever', 'I have swelled_lymph_nodes', 'I have malaise', 'I have red_spots_over_body', 'I don\'t have constipation', 'I don\'t have bleeding', 'I don\'t have blurred vision', 'I don\'t have spotting', 'I don\'t have flaring nostrils', 'I don\'t have stress'),
(75, 55, 32, 'I have chills', 'I have vomiting', 'I have fatigue', 'I have high_fever', 'I have headache', 'I have nausea', 'I have constipation', 'I have abdominal_pain', 'I have diarrhoea', 'I have toxic_look_(typhos)', 'I have belly_pain', 'I don\'t have malaise', 'I don\'t have discomfort', 'I don\'t have reduced urination', 'I don\'t have infections', 'I don\'t have Gynecomastia', 'I don\'t have numbness'),
(76, 56, 33, 'I have vomiting', 'I have yellowish_skin', 'I have dark_urine', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have diarrhoea', 'I have mild_fever', 'I have yellowing_of_eyes', 'I have muscle_pain', 'I don\'t have cramps', 'I don\'t have leg cramps', 'I don\'t have fatigue', 'I don\'t have nervousness', 'I don\'t have depression', 'I don\'t have urinary tract infections', 'I don\'t have tingling'),
(77, 57, 34, 'I have continuous_sneezing', 'I have chills', 'I have fatigue', 'I have cough', 'I have high_fever', 'I have headache', 'I have swelled_lymph_nodes', 'I have malaise', 'I have phlegm', 'I have throat_irritation', 'I have redness_of_eyes', 'I have sinus_pressure', 'I have runny_nose', 'I have congestion', 'I have chest_pain', 'I have loss_of_smell', 'I have muscle_pain'),
(78, 58, 35, 'I have chills', 'I have fatigue', 'I have cough', 'I have high_fever', 'I have breathlessness', 'I have sweating', 'I have malaise', 'I have phlegm', 'I have chest_pain', 'I have fast_heart_rate', 'I have rusty_sputum', 'I don\'t have neck pain', 'I don\'t have ulcers', 'I don\'t have spotting', 'I don\'t have weak urine flow', 'I don\'t have erythema', 'I don\'t have insomnia'),
(79, 59, 36, 'I have chest_pain', 'I have breathlessness', 'I have sweating', 'I have vomiting', 'I don\'t have Bluish lips', 'I don\'t have oral thrush', 'I don\'t have ulcers', 'I don\'t have dehydration', 'I don\'t have poor appetitie', 'I don\'t have head ache', 'I don\'t have soreness', 'I don\'t have bad breath', 'I don\'t have confusion', 'I don\'t have irritability', 'I don\'t have Change in bowel habits', 'I don\'t have numbness', 'I don\'t have balance issues'),
(80, 60, 37, 'I have fatigue', 'I have weight_gain', 'I have cold_hands_and_feets', 'I have mood_swings', 'I have lethargy', 'I have dizziness', 'I have puffy_face_and_eyes', 'I have enlarged_thyroid', 'I have brittle_nails', 'I have swollen_extremeties', 'I have depression', 'I have irritability', 'I have abnormal_menstruation', 'I don\'t have irritability', 'I don\'t have Localized discomfort', 'I don\'t have ulcers', 'I don\'t have cramps'),
(81, 61, 39, 'I have muscle_weakness', 'I have stiff_neck', 'I have swelling_joints', 'I have movement_stiffness', 'I have painful_walking', 'I don\'t have soreness', 'I don\'t have Eruptions', 'I don\'t have watery eyes', 'I don\'t have eye injury', 'I don\'t have Frequent choking', 'I don\'t have Pustules and Pimples', 'I don\'t have congestion', 'I don\'t have Numbness', 'I don\'t have weakness', 'I don\'t have Chills', 'I don\'t have tingling', 'I don\'t have insomnia'),
(82, 62, 40, 'I have skin_rash', 'I have pus_filled_pimples', 'I have blackheads', 'I have scurring', 'I don\'t have itching', 'I don\'t have blurred vision', 'I don\'t have regurgitation', 'I don\'t have weak urine flow', 'I don\'t have eye injury', 'I don\'t have neck pain', 'I don\'t have spotting', 'I don\'t have irritability', 'I don\'t have erythema', 'I don\'t have blurred vision', 'I don\'t have soreness', 'I don\'t have oral thrush', 'I don\'t have eruptions'),
(83, 63, 41, 'I have chills', 'I have Cough', 'I have difficulty breathing', 'I have Fatigue', 'I have body aches', 'I have loss of taste', 'I have Sore throat', 'I have runny nose', 'I have Nausea', 'I don\'t have Frequent choking', 'I don\'t have frequent urination', 'I don\'t have dark urine', 'I don\'t have cloudy urine', 'I don\'t have oily skin', 'I don\'t have red scaly patch', 'I don\'t have low blood pressure', 'I don\'t have eruptions'),
(84, 64, 42, 'I have Missed Period', 'I have Breast Changes', 'I have Nausea', 'I have Fatigue', 'I have Mood Swings', 'I have Constipation', 'I have Dizziness ', 'I have Fainting', 'I have Frequent Fetal Movements', 'I don\'t have Ketoacidosis', 'I don\'t have Leg swelling', 'I don\'t have Numbness', 'I don\'t have metallic tastle', 'I don\'t have sunken eyes', 'I don\'t have pale skin', 'I don\'t have night sweats', 'I don\'t have excessive thrust'),
(85, 65, 43, 'I have Swelling ', 'I have Skin dimpling', 'I have nipple pain', 'I have Nipple retraction', 'I have Nipple discharge', 'I have Swollen lymph nodes', 'I have Breast Discomfort', 'I have Redness', 'I have Breast Lump', 'I don\'t have bloating', 'I don\'t have irregular mole', 'I don\'t have deformity', 'I don’t have bumps', 'I don\'t have bruising', 'I don\'t have burning', 'I don’t have bad breath', 'I don\'t have dry mouth'),
(86, 66, 44, 'I have White Lesions', 'I have Redness ', 'I have irritation', 'I have Loss of Taste', 'I have Sore throat', 'I have Dry Mouth', 'I have Bleeding', 'I have Oral Thrush', 'I have Bad Breath', 'I don\'t have balance issues', 'I don\'t have Mood swings', 'I don\'t have rash', 'I don\'t have rapd heart rate', 'I don\'t have pain in neck', 'I don\'t have skin ulcers', 'I don\'t have nasal discharge', 'I don\'t have burning sensation'),
(87, 67, 45, 'I have Ear Pain', 'I have Fluid Drainage', 'I have Hearing Loss', 'I have Fever', 'I have Irritability', 'I have Difficulty Sleeping', 'I have Poor Appetite', 'I have Balance Problems', 'I have Fatigue', 'I don\'t have bloating', 'I don\'t have enlarged thyroid', 'I don\'t have cramps', 'I don\'t have malaise', 'I don\'t have palpitations', 'I don\'t have heaviness', 'I don\'t have hoarseness', 'I don\'t have belly_pain'),
(88, 68, 46, 'I have Hearing Loss', 'I have Balance Problems', 'I have Tinnitus', 'I have Vertigo', 'I have Headache', 'I have Nausea', 'I have Vomiting', 'I have Facial Weakness', 'I have Numbness', 'I don\'t have hoarseness', 'I don\'t have heaviness', 'I don\'t have depression', 'I don\'t have indigestion', 'I don\'t have shivering', 'I don\'t have altered_sensorium', 'I don\'t have passage_of_gases', 'I don\'t have congestion'),
(89, 67, 47, 'I have Ear Pressure', 'I have Hearing Difficulties', 'I have Pain', 'I have Tinnitus', 'I have Fullness in Ear', 'I have Dizziness', 'I have Balance Issues', 'I have Reduced Hearing', 'I have Headache', 'I don\'t have watering_from_eyes', 'I don\'t have family_history', 'I don\'t have blood clots', 'I don\'t have blood_in_sputum', 'I don\'t have nervousness', 'I don\'t have numbness', 'I don\'t have changes in voice', 'I don’t have tingling'),
(90, 43, 31, 'I have skin_rash', 'I have chills', 'I have joint_pain', 'I have vomiting', 'I have fatigue', 'I have high_fever', 'I have headache', 'I have nausea', 'I have loss_of_appetite', 'I have pain_behind_the_eyes', 'I have back_pain', 'I have malaise', 'I have muscle_pain', 'I have red_spots_over_body', 'I don\'t have Bad Breath', 'I don\'t have nervousness', 'I don\'t have tingling'),
(91, 56, 49, 'I have itching', 'I have fatigue', 'I have lethargy', 'I have yellowish_skin', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellow_urine', 'I have yellowing_of_eyes', 'I have malaise', 'I have receiving_blood_transfusion', 'I have receiving_unsterile_injections', 'I don\'t have watery eyes', 'I don\'t have kidney pain', 'I don\'t have leg swelling', 'I don\'t have insomnia', 'I don\'t have stress', 'I don\'t have tenderness'),
(92, 56, 50, 'I have fatigue', 'I have yellowish_skin', 'I have nausea', 'I have loss_of_appetite', 'I have yellowing_of_eyes', 'I have family_history', 'I don\'t have tenderness', 'I don\'t have fainting', 'I don\'t have erythemia', 'I don\'t have pale stool', 'I don\'t have weight gain', 'I don\'t have blood clots', 'I don\'t have blurred vision', 'I don\'t have localized discomfort', 'I don\'t have indigestion', 'I don\'t have constipation', 'I don\'t have congestion'),
(93, 56, 51, 'I have joint_pain', 'I have vomiting', 'I have fatigue', 'I have yellowish_skin', 'I have dark_urine', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellowing_of_eyes', 'I don\'t have enlarged pores', 'I don\'t have soreness', 'I don\'t have dry mouth', 'I don\'t have slow heartbeat', 'I don\'t have loss of taste ', 'I don\'t have muscle aches', 'I don\'t have decreased mobility', 'I don\'t have sweating'),
(94, 56, 52, 'I have joint_pain', 'I have vomiting', 'I have fatigue', 'I have high_fever', 'I have yellowish_skin', 'I have dark_urine', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellowing_of_eyes', 'I have acute_liver_failure', 'I have coma', 'I have stomach_bleeding', 'I don\'t have decreased mobility', 'I don\'t have confusion', 'I don\'t have sunken eyes', 'I don\'t have indigestion'),
(95, 56, 53, 'I have vomiting', 'I have yellowish_skin', 'I have abdominal_pain', 'I have swelling_of_stomach', 'I have distention_of_abdomen', 'I have history_of_alcohol_consumption', 'I have fluid_overload', 'I don\'t have decreased mobility', 'I don\'t have urinary urgency', 'I don\'t have peeling', 'I don\'t have neck pain', 'I don\'t have blurred vision', 'I don\'t have ulcers', 'I don\'t have Concentration issues', 'I don\'t have Regurgitation', 'I don\'t have Poor Appetite', 'I don\'t have flaring nostrils'),
(96, 60, 54, 'I have fatigue', 'I have mood_swings', 'I have weight_loss', 'I have restlessness', 'I have sweating', 'I have diarrhoea', 'I have fast_heart_rate', 'I have excessive_hunger', 'I have muscle_weakness', 'I have irritability', 'I have abnormal_menstruation', 'I don\'t have pain behind the eyes', 'I don\'t have palpitations', 'I don\'t have bleeding', 'I don\'t have Itchy nose', 'I don\'t have changes in voice', 'I don\'t have painful lump'),
(97, 48, 38, 'I have vomiting', 'I have fatigue', 'I have anxiety', 'I have sweating', 'I have headache', 'I have nausea', 'I have blurred_and_distorted_vision', 'I have excessive_hunger', 'I have drying_and_tingling_lips', 'I have slurred_speech', 'I have irritability', 'I have palpitations', 'I don\'t have neck pain', 'I don\'t have frequent urination', 'I don\'t have watery eyes', 'I don\'t have infections', 'I don\'t have Chills'),
(98, 67, 55, 'I have Ringing in Ears', 'I have Hearing Loss', 'I have Dizziness', 'I have Headache', 'I have Anxiety', 'I have Sleep Disturbance', 'I have Concentration Issues', 'I have Stress', 'I don\'t have itching', 'I don\'t have skin rash', 'I don\'t have irregular mole', 'I don\'t have hoarseness', 'I don\'t have bumps', 'I don\'t have joint pain', 'I don\'t have heaviness', 'I don\'t have bad breath', 'I don\'t have night sweats'),
(99, 67, 56, 'I have Vertigo', 'I have Hearing Loss', 'I have Tinnitus', 'I have Nausea', 'I have Vomiting', 'I have Sweating', 'I have Headache', 'I have Fullness in Ear', 'I have Fatigue', 'I don\'t have shivering', 'I don\'t have chills', 'I don\'t have acidity', 'I don\'t have lethargy', 'I don\'t have dehydration ', 'I don\'t have constipation', 'I don\'t have malaise', 'I don\'t have congestion'),
(100, 67, 57, 'I have Ear Pain', 'I have Discharge', 'I have Hearing Loss', 'I have itching', 'I have Fever', 'I have Dizziness', 'I have Swelling', 'I have Tenderness', 'I have Difficulty Hearing', 'I don\'t have chest_pain', 'I don\'t have redness_of_eyes', 'I don\'t have fast_heart_rate', 'I don\'t have bloody stool', 'I don\'t have Bruising', 'I don\'t have unsteadiness', 'I don\'t have passage_of_gases', 'I don\'t have muscle_pain'),
(101, 67, 58, 'I have Hearing Loss', 'I have Tinnitus', 'I have Dizziness', 'I have Vertigo', 'I have Ear Discharge', 'I have Pain', 'I have Reduced Hearing', 'I have Balance Issues', 'I have Difficulty Hearing', 'I don\'t have polyuria', 'I don\'t have lack_of_concentration', 'I don\'t have blackheads', 'I don\'t have palpitations', 'I don\'t have jaundice', 'I don\'t have flank pain', 'I don\'t have Irritation', 'I don\'t have fractures'),
(102, 67, 59, 'I have Ear Discharge', 'I have Hearing Loss', 'I have Ear Pain', 'I have Tinnitus', 'I have Vertigo', 'I have Headache', 'I have Nausea', 'I have Fever', 'I have Reduced Hearing', 'I don\'t have seizures', 'I don\'t have dizziness', 'I don\'t have scrotal pain', 'I don\'t have night sweats', 'I don\'t have short of breath', 'I don\'t have Anemia', 'I don\'t have dizziness', 'I don\'t have bad breath'),
(103, 67, 60, 'I have Hearing Loss', 'I have Tinnitus', 'I have Reduced Sound Clarity', 'I have Difficulty Hearing', 'I have Difficulty Understanding Speech', 'I have Social Isolation', 'I have Depression', 'I have Anxiety', 'I don\'t have muscle aches', 'I don\'t have constipation', 'I don\'t have oily skin', 'I don\'t have bluish lips', 'I don\'t have dark urine', 'I don\'t have numbness', 'I don\'t have weakness', 'I don\'t have hypertension', 'I don\'t have confusion'),
(104, 67, 61, 'I have Vertigo', 'I have Hearing Loss', 'I have Nausea', 'I have Vomiting', 'I have Tinnitus', 'I have Hearing Difficulties', 'I have Balance Issues', 'I have Ear Pain', 'I have Fatigue', 'I don\'t have pus discharge', 'I don\'t have bleeding sores', 'I don\'t have bumps', 'I don\'t have leg cramps', 'I don\'t have difficulty urinating', 'I don\'t have skin rash', 'I don\'t have Bloating', 'I don\'t have thirst'),
(105, 67, 62, 'I have Reduced Hearing', 'I have Ear Fullness', 'I have Earache', 'I have Tinnitus', 'I have Dizziness', 'I have Vertigo', 'I have Cough', 'I have itching', 'I have Dizziness', 'I don\'t have flank pain', 'I don\'t have bone pain', 'I don\'t have blood in stool', 'I don\'t have white lesions', 'I don\'t have prognosis', 'I don\'t have blister', 'I don\'t have blackheads', 'I don\'t have rusty_sputum'),
(106, 67, 63, 'I have Increased Sensitivity to Noise', 'I have Discomfort', 'I have Ear Pain', 'I have Tinnitus', 'I have Anxiety', 'I have Depression', 'I have Social Isolation', 'I have Insomnia', 'I have Concentration Issues', 'I don\'t have dischromic_patches', 'I don\'t have passage_of_gases', 'I don\'t have stiff_neck', 'I don\'t have swelling_joints', 'I don\'t have neck_pain', 'I don\'t have blister', 'I don\'t have knee_pain', 'I don\'t have brittle_nails'),
(107, 67, 64, 'I have Ear Pain', 'I have itching', 'I have Hearing Loss', 'I have Fluid Drainage', 'I have Discharge', 'I have Fullness in Ear', 'I have Fever', 'I have Tinnitus', 'I have Reduced Hearing', 'I don\'t have cramps', 'I don\'t have obesity', 'I don\'t have phlegm', 'I don\'t have diarrhoea', 'I don\'t have dark_urine', 'I don\'t have sunken_eyes', 'I don\'t have restlessness', 'I don\'t have acidity'),
(108, 67, 65, 'I have Hearing Loss', 'I have Earache', 'I have Tinnitus', 'I have Ear Fullness', 'I have Balance Issues', 'I have Dizziness', 'I have Headache', 'I have Reduced Hearing', 'I have Vertigo', 'I don\'t have sinus pressure', 'I don\'t have belly_pain', 'I don\'t have stomach bleeding', 'I don\'t have abdominal pain', 'I don\'t have lump in testicle', 'I don\'t have pelvic pain', 'I don\'t have proteinuria', 'I don\'t have pale skin'),
(109, 67, 66, 'I have Hearing Loss', 'I have Tinnitus', 'I have Sensitivity to Noise', 'I have Difficulty Hearing', 'I have Social Isolation', 'I have Anxiety', 'I have Depression', 'I have Concentration Issues', 'I have Stress', 'I don\'t have rash', 'I don\'t have confusion', 'I don\'t have soreness', 'I don\'t have peeling', 'I don\'t have blood clots', 'I don\'t have oral thrush', 'I don\'t have insomnia', 'I don\'t have congestion'),
(110, 67, 67, 'I have Reduced Hearing', 'I have Ear Fullness', 'I have Ear Pain', 'I have Tinnitus', 'I have Ear Discharge', 'I have itching', 'I have Vertigo', 'I have Balance Issues', 'I have Headache', 'I don\'t have Gynecomastia', 'I don\'t have reduced urination', 'I don\'t have personality changes', 'I don\'t have eruptions', 'I don\'t have tenderness', 'I don\'t have runny nose', 'I don\'t have spotting', 'I don\'t have peeling'),
(111, 67, 68, 'I have Runny nose', 'I have Sneezing', 'I have Nasal Congestion', 'I have Itchy eyes', 'I have Cough', 'I have Headache', 'I have Sore throat', 'I have Fatigue', 'I have Watery eyes', 'I don\'t have prognosis', 'I don\'t have vomiting', 'I don\'t have palpitations', 'I don\'t have hematuria', 'I don\'t have hoarseness', 'I don\'t have rusty sputum', 'I don\'t have depression ', 'I don\'t have unsteadiness'),
(112, 67, 69, 'I have Sinus pressure', 'I have Facial Pain', 'I have Postnasal drip', 'I have Headache', 'I have Cough', 'I have Fever', 'I have Bad breath', 'I have Fatigue', 'I don\'t have heaviness', 'I don\'t have vision problems', 'I don\'t have skin ulcers', 'I don\'t have hematuria', 'I don\'t have hoarseness', 'I don\'t have fluid_overload', 'I don\'t have flank pain', 'I don\'t have palpitations', 'I don\'t have prognosis'),
(113, 67, 70, 'I have Blocked nose', 'I have Decreased smell', 'I have Sneezing', 'I have Itchy eyes', 'I have Runny nose', 'I have Headache', 'I have Facial Pain', 'I have Snoring', 'I have Difficulty breathing', 'I don\'t have oral thrush', 'I don\'t have head ache', 'I don\'t have erythema', 'I don\'t have pale stool', 'I don\'t have indigestion', 'I don\'t have soreness', 'I don\'t have nausea', 'I don\'t have bumps'),
(114, 67, 71, 'I have Blocked nose', 'I have Nosebleeds', 'I have Difficulty breathing', 'I have Snoring', 'I have Headache', 'I have Facial Pain', 'I have Nasal Congestion', 'I have Sleep apnea', 'I don\'t have anemia', 'I don\'t have change in bowel habits', 'I don\'t have metallic taste', 'I don’t have peeling', 'I don’t have ulcers', 'I don\'t have bluish lips', 'I don\'t have dehydration', 'I don\'t have tenderness', 'I don’t have tingling'),
(115, 67, 72, 'I have Nosebleeds', 'I have Swelling', 'I have Deformity', 'I have Bruising', 'I have Pain', 'I have Difficulty breathing', 'I have Headache', 'I have Eye injury', 'I don\'t have irregular mole', 'I don\'t have fractures', 'I don\'t have scrotal pain', 'I don\'t have painful swallowing', 'I don\'t have loss of taste', 'I don\'t have heaviness', 'I don\'t have chronic cough', 'I don\'t have pale skin', 'I don\'t have balance issues'),
(116, 62, 48, 'I have Runny nose', 'I have Sneezing', 'I have Itchy eyes', 'I have Nasal Congestion', 'I have Fatigue', 'I have Cough', 'I have Sore throat', 'I have Watery eyes', 'I don\'t have Difficulty breathing', 'I don\'t have jaundice', 'I don\'t have leg cramps', 'I don\'t have nosebleeds', 'I don\'t have nausea', 'I don\'t have sunken eyes', 'I don\'t have bruising', 'I don\'t have wheezing', 'I don\'t have body aches'),
(117, 67, 73, 'I have Swelling', 'I have Pain', 'I have Redness', 'I have Pus discharge', 'I have Fever', 'I have Soreness', 'I have ulcers', 'I have itching', 'I have Crusting', 'I don\'t have puffy face and eyes', 'I don\'t have obesity', 'I don\'t have phlegm', 'I don\'t have sinus pressure', 'I don\'t have yellow urine', 'I don\'t have malaise', 'I don\'t have palpitations', 'I don\'t have Vertigo'),
(118, 44, 74, 'I have Enlarged nose', 'I have Redness', 'I have Bumps', 'I have Thickening skin', 'I have Visible Blood Vessels', 'I have Enlarged Pores', 'I have Oily Skin', 'I have Skin Discoloration', 'I have Pustules and Pimples', 'I don\'t have throat irritation', 'I don\'t have swelled_lymph_nodes', 'I don\'t have malaise', 'I don\'t have diarrhoea', 'I don\'t have indigestion', 'I don\'t have unsteadiness', 'I don\'t have ulcers_on_tongue', 'I don\'t have bruising'),
(119, 44, 75, 'I have Redness', 'I have itching', 'I have Crusting', 'I have Swelling', 'I have Burning', 'I have Peeling ', 'I have Erythema', 'I have Eruptions ', 'I have discomfort', 'I don\'t have runny nose', 'I don\'t have malaise', 'I don\'t have constipation', 'I don\'t have dehydration', 'I don\'t have decreased mobility', 'I don\'t have sunken_eyes', 'I don\'t have ulcers_on_tongue', 'I don\'t have bruising'),
(120, 67, 76, 'I have bleeding', 'I have Blood in mucus', 'I have Headache', 'I have Anemia', 'I have High blood pressure', 'I have Blood clotting disorder', 'I have Dizziness ', 'I have Swelling ', 'I have congestion', 'I don\'t have nausea', 'I don\'t have depression', 'I don\'t have soreness', 'I don\'t have unsteadiness', 'I don\'t have knee_pain', 'I don\'t have slurred_speech', 'I don\'t have irritation_in_anus', 'I don\'t have runny_nose'),
(121, 67, 77, 'I have Pain', 'I have Swelling', 'I have Redness', 'I have Pus discharge', 'I have Fever', 'I have Localized discomfort', 'I have Painful lump', 'I don\'t have flank pain', 'I don\'t have ear pressure', 'I don\'t have swollen tonsils', 'I don\'t have prognosis', 'I don\'t have blackheads', 'I don\'t have scurryng', 'I don\'t have fluid_overload', 'I don\'t have dischromic_patches', 'I don\'t have internal_patching', 'I don\'t have unsteadiness'),
(122, 67, 78, 'I have Stuffy nose', 'I have Runny nose', 'I have Sneezing', 'I have Headache', 'I have Postnasal drip', 'I have Itchy nose', 'I have Sore throat', 'I have Fatigue', 'I have Cough', 'I don\'t have dizziness', 'I don\'t have body aches', 'I don\'t have bone pain', 'I don\'t have fractures', 'I don\'t have bloating', 'I don\'t have scrotal pain', 'I don\'t have decreased mobility', 'I don\'t have sinus pressure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_from_doctor_depert_name`
--
ALTER TABLE `dashboard_from_doctor_depert_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `dashboard_from_sub_disease`
--
ALTER TABLE `dashboard_from_sub_disease`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_from_sub_disease_name_5b8f59b4_uniq` (`name`),
  ADD KEY `dashboard_from_sub_d_dep_id_id_3b7624e7_fk_dashboard` (`dep_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `symptom_symptom`
--
ALTER TABLE `symptom_symptom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symptom_symptom_depart_id_id_2572cba8_fk_dashboard` (`depart_id_id`),
  ADD KEY `symptom_symptom_disease_id_id_c5795cfb_fk_dashboard` (`disease_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_from_doctor_depert_name`
--
ALTER TABLE `dashboard_from_doctor_depert_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `dashboard_from_sub_disease`
--
ALTER TABLE `dashboard_from_sub_disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `symptom_symptom`
--
ALTER TABLE `symptom_symptom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_from_sub_disease`
--
ALTER TABLE `dashboard_from_sub_disease`
  ADD CONSTRAINT `dashboard_from_sub_d_dep_id_id_3b7624e7_fk_dashboard` FOREIGN KEY (`dep_id_id`) REFERENCES `dashboard_from_doctor_depert_name` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `symptom_symptom`
--
ALTER TABLE `symptom_symptom`
  ADD CONSTRAINT `symptom_symptom_depart_id_id_2572cba8_fk_dashboard` FOREIGN KEY (`depart_id_id`) REFERENCES `dashboard_from_doctor_depert_name` (`id`),
  ADD CONSTRAINT `symptom_symptom_disease_id_id_c5795cfb_fk_dashboard` FOREIGN KEY (`disease_id_id`) REFERENCES `dashboard_from_sub_disease` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
