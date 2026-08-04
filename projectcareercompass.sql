-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2026 at 06:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectcareercompass`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `career_name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `eligibility` text NOT NULL,
  `duration` text NOT NULL,
  `future_scope` text NOT NULL,
  `salary` text NOT NULL,
  `skills` text NOT NULL,
  `higher_studies` text NOT NULL,
  `top_colleges` text NOT NULL,
  `entrance_exams` text NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `career_name`, `image`, `description`, `eligibility`, `duration`, `future_scope`, `salary`, `skills`, `higher_studies`, `top_colleges`, `entrance_exams`, `banner_image`) VALUES
(1, 'Science', 'science.png', 'A strong route for medicine, engineering, research and technology.', 'Class 10 pass', '2 Years + Higher Studies', 'Doctor, Engineer, Scientist', '3 LPA - 25+ LPA', 'Analytical Thinking', 'MBBS, B.Tech, B.Sc', 'IIT, AIIMS, IISc', 'JEE, NEET', 'science1.png'),
(2, 'Commerce', 'commerce.png', 'Ideal for students interested in business, finance and management.', 'Class 10 Pass', '2 Years', 'CA, CS, Banking, Finance, Business', '3-25 LPA', 'Communication, Accounting', 'B.Com, BBA, CA, CS', 'SRCC, NM College, Symbiosis', 'CUET', 'commerce1.png'),
(3, 'Arts & Humanities', 'arts.png', 'Perfect for students interested in languages, law, design and social sciences.', 'Class 10 Pass', '2 Years', 'Law, Journalism, UPSC, Psychology', '3-20 LPA', 'Creativity, Communication', 'BA, LLB, BJMC, BFA', 'DU, BHU, JNU', 'CUET, CLAT', 'arts1.png'),
(4, 'Diploma Engineering', 'diploma.png', 'Technical education after Class 10 leading to engineering careers.', 'Class 10 Pass', '3 Years', 'Engineering, Manufacturing', '3-15 LPA', 'Technical Skills', 'Lateral Entry B.Tech', 'Government Polytechnic', 'State Polytechnic Admission', 'diploma1.png'),
(5, 'ITI', 'iti.png', 'Job-oriented technical training in various trades.', 'Class 8 or 10 Pass', '1-2 Years', 'Electrician, Fitter, Mechanic', '2-10 LPA', 'Practical Skills', 'Apprenticeship, Diploma', 'Government ITI', 'Merit Based', 'iti1.png'),
(6, 'Skill Courses', 'skillcourses.png', 'Short-term courses to gain practical industry skills.', 'Class 10 Pass', '3-12 Months', 'Freelancing, Jobs, Startups', '2-20 LPA', 'Digital Skills', 'Certification Courses', 'NSDC Institutes', 'No Exam', 'skillcourses1.png'),
(7, 'Vocational Courses', 'vocational.png', 'Career-focused practical education in different industries.', 'Class 10 Pass', '6 Months-2 Years', 'Healthcare, Hospitality, Retail', '2-10 LPA', 'Hands-on Skills', 'Advanced Vocational Diploma', 'Vocational Institutes', 'Merit Based', 'vocational1.png'),
(8, 'Open School', 'openschool.png', 'Flexible education for students unable to attend regular school.', 'Class 10 Pass', 'Flexible', 'Higher Education', 'Depends on Career', 'Self Learning', '12th, Degree', 'NIOS', 'NIOS Exams', 'openschool1.png'),
(9, 'Government Exams', 'government.png', 'Prepare for government jobs after completing higher studies.', 'Class 10 Pass', 'Varies', 'Railway, Police, SSC, Defence', '3-12 LPA', 'Reasoning, Aptitude', 'Graduation Recommended', 'Training Academies', 'SSC, UPSC, State PSC', 'government1.png'),
(10, 'Emerging Careers', 'ai1.png', 'Explore AI, Data Science, Cybersecurity and future technologies.', 'Class 10 Pass', '2-4 Years', 'AI, Robotics, Data Science', '6-40 LPA', 'Programming, Problem Solving', 'B.Tech, BCA, B.Sc CS', 'IITs, NITs, IIITs', 'JEE, CUET', 'ai11.png');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Table structure for table `roadmaps`
--

CREATE TABLE `roadmaps` (
  `id` int(11) NOT NULL,
  `career_name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `stream` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `eligibility` varchar(255) DEFAULT NULL,
  `roadmap_steps` text DEFAULT NULL,
  `courses` text DEFAULT NULL,
  `entrance_exams` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `top_colleges` text DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `future_scope` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roadmaps`
--

INSERT INTO `roadmaps` (`id`, `career_name`, `slug`, `stream`, `image`, `description`, `eligibility`, `roadmap_steps`, `courses`, `entrance_exams`, `skills`, `top_colleges`, `salary`, `future_scope`) VALUES
(1, 'Doctor', 'doctor', 'SCIENCE', 'doctor.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 (PCB)', 'Class 10,Class 11-12 PCB,NEET,MBBS,Internship,Doctor', 'MBBS, BDS, BAMS', 'NEET', 'Communication, Patience, Biology', 'AIIMS, CMC Vellore, KEM', '₹8-40 LPA', 'Hospitals, Clinics, Research'),
(2, 'Engineer', 'engineer', 'SCIENCE', 'engineer.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 (PCM)', 'Class 10,Class 11-12 PCM,JEE,B.Tech,Internship,Engineer', 'B.Tech, BE', 'JEE Main, JEE Advanced', 'Problem Solving, Mathematics', 'IITs, NITs, COEP', '₹4-30 LPA', 'Software, Core Engineering, Research'),
(3, 'Lawyer', 'lawyer', 'ARTS', 'lawyer.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 Pass', 'Class 10,Class 11-12,CLAT,LLB,Practice,Lawyer', 'LLB, BA LLB', 'CLAT', 'Communication, Reasoning', 'NLSIU, GLC Mumbai', '₹5-25 LPA', 'Courts, Corporate Law, Judiciary'),
(4, 'Pilot', 'pilot', 'SCIENCE', 'pilot.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 (PCM)', 'Class 10,Class 11-12 PCM,Flying School,License,Airline Pilot', 'CPL, Flying Training', 'DGCA Exams', 'Decision Making, Leadership', 'IGRUA, NFTI', '₹12-80 LPA', 'Commercial Airlines, Defence'),
(5, 'Architect', 'architect', 'SCIENCE', 'architect.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 (PCM)', 'Class 10,Class 11-12 PCM,NATA,B.Arch,Architect', 'B.Arch', 'NATA', 'Creativity, Drawing', 'SPA Delhi, CEPT', '₹4-20 LPA', 'Construction, Interior Design'),
(6, 'Chartered Accountant', 'chartered-accountant', 'COMMERCE', 'ca.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 Commerce', 'Class 10,Class 11-12 Commerce,CA Foundation,Intermediate,Articleship,CA', 'CA Course', 'CA Foundation', 'Accounting, Finance', 'ICAI', '₹7-35 LPA', 'Audit, Taxation, Finance'),
(7, 'Cyber Security', 'cyber-security', 'SCIENCE', 'cybersecurity.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 PCM/Computer', 'Class 10,Class 11-12,B.Tech/Certifications,Cyber Security', 'B.Tech, Certifications', 'University Entrance', 'Networking, Security, Linux', 'IITs, IIITs', '₹6-40 LPA', 'Government, IT Companies'),
(8, 'Data Scientist', 'data-scientist', 'SCIENCE', 'datascientist.png', 'Explore courses, skills, scope, salaries, and next steps.', 'Class 12 PCM/Computer', 'Class 10,Class 11-12,B.Tech/Data Science,Projects,Data Scientist', 'B.Tech, B.Sc Data Science', 'University Entrance', 'Python, Statistics, Machine Learning', 'IITs, IIITs', '₹8-45 LPA', 'AI, Analytics, Research');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `stream` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `subjects` text NOT NULL,
  `who_should_choose` text NOT NULL,
  `careers` text NOT NULL,
  `top_colleges` text NOT NULL,
  `future_scope` text NOT NULL,
  `advantages` text NOT NULL,
  `disadvantages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `image`, `stream`, `description`, `subjects`, `who_should_choose`, `careers`, `top_colleges`, `future_scope`, `advantages`, `disadvantages`) VALUES
(1, 'science1.png', 'Science', 'Science develops analytical, experimental, and technical thinking for medicine, engineering, research, and technology.', 'Physics, Chemistry, Mathematics, Biology, Computer Science, English', 'Students who enjoy experiments, logic, mathematics, healthcare, technology, or research.', 'Doctor, engineer, pharmacist, data scientist, pilot, researcher, architect, nurse.', 'IISc, IITs, AIIMS, NITs, IISERs, state engineering and medical colleges.', 'High demand in healthcare, AI, space, climate science, and biotechnology.', 'Many professional options, strong technical foundation, global career paths.', 'Competitive exams and study load can be demanding.'),
(2, 'commerce1.png', 'Commerce', 'Commerce builds understanding of business, economics, accounting, markets, and financial decisions.', 'Accountancy, Business Studies, Economics, Mathematics, Informatics Practices, English', 'Students interested in business, finance, banking, startups, trade, and management.', 'CA, CS, CMA, banker, economist, entrepreneur, analyst, marketing manager.', 'SRCC, Hindu College, Christ University, Loyola College, NM College.', 'Strong demand in finance, taxation, consulting, fintech, and business analytics.', 'Professional certifications and practical business relevance.', 'Top roles require exams, internships, and communication skills.'),
(3, 'arts1.png', 'Arts', 'Arts and humanities focus on people, society, expression, governance, language, and creative careers.', 'History, Political Science, Geography, Psychology, Sociology, Economics, English, Fine Arts', 'Students who like communication, society, law, creativity, public service, media, or design.', 'Lawyer, IAS officer, teacher, psychologist, journalist, designer, social worker.', 'Lady Shri Ram, St. Stephen\'s, Loyola, Fergusson, Jadavpur, state arts colleges.', 'Growing opportunities in policy, media, design, mental health, and civil services.', 'Flexible careers, strong communication skills, creativity, social understanding.', 'Students must build portfolios, internships, or exam preparation for strong outcomes.');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `trend` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `scope` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `image`, `trend`, `description`, `scope`, `salary`) VALUES
(1, 'ai.jpg', 'Artificial Intelligence', 'Build systems that learn, reason, and automate decisions.', 'Excellent', 'INR 6-30 LPA'),
(2, 'machinelearning.jpg', 'Machine Learning', 'Create predictive models from data for apps, finance, health, and industry.', 'Excellent', 'INR 5-25 LPA'),
(3, 'cybersecurity.jpg', 'Cyber Security', 'Protect networks, systems, and data from digital attacks.', 'Excellent', 'INR 4-22 LPA'),
(4, 'cloudcomputing.jpg', 'Cloud Computing', 'Design and manage the scalable online infrastructure.', 'Excellent', 'INR 4-24 LPA'),
(5, 'datascientist.jpg', 'Data Analytics', 'Turn data into decisions through dashboards and insights.', 'Very Good', 'INR 3.5-18 LPA'),
(6, 'blockchain.jpg', 'Blockchain', 'Build decentralized apps and secure transaction systems.', 'Very Good', 'INR 5-20 LPA'),
(7, 'arvr.jpeg', 'AR VR', 'Create immersive learning, gaming, training, and shopping experiences.', 'Very Good', 'INR 4-16 LPA'),
(8, 'digitalmarketing.jpg', 'Digital Marketing', 'Grow brands using search, social media, content, and ads.', 'Very Good', 'INR 2.5-15 LPA'),
(9, 'robotics.png', 'robotics', 'Design intelligent machines for factories, healthcare, and services.', 'Excellent', 'INR 4-18 LPA'),
(10, 'promptengineering.png', 'Prompt Engineering', 'Design effective instructions and workflows for AI tools.', 'Growing', 'INR 4-18 LPA'),
(11, 'drone.png', 'Drone Technology', 'Operate, repair, design, and program drones for many sectors.', 'Very Good', 'INR 3-14 LPA'),
(12, 'influencer.png', 'Content Creator', 'Produce educational, entertainment, and brand content for digital platforms.', 'Growing', 'Variable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roadmaps`
--
ALTER TABLE `roadmaps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roadmaps`
--
ALTER TABLE `roadmaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
