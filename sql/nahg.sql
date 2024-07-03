-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 03:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nahg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'admin1', 'password123', 'youssefelsabbahy12@gmail.com', '2024-06-29 12:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `azkar`
--

CREATE TABLE `azkar` (
  `id` int(11) NOT NULL,
  `zikr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `azkar`
--

INSERT INTO `azkar` (`id`, `zikr`) VALUES
(1, 'أَذْكَرُ الصَّبَاحِ: أَصْبَحْنَا وَأَصْبَحَ المُلْكُ للهِ، وَالحَمْدُ للهِ، لا إِلَـٰهَ إِلاَّ اللهُ وَحْدَهُ لا شَرِيكَ لَهُ، لَهُ المُلْكُ وَلَهُ الحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ.'),
(2, 'أَذْكَرُ المَسَاءِ: أَمْسَيْنَا وَأَمْسَىٰ المُلْكُ للهِ، وَالحَمْدُ للهِ، لا إِلَـٰهَ إِلاَّ اللهُ وَحْدَهُ لا شَرِيكَ لَهُ، لَهُ المُلْكُ وَلَهُ الحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ.'),
(3, 'سُبْحَانَ اللهِ وَبِحَمْدِهِ، سُبْحَانَ اللهِ العَظِيمِ.'),
(4, 'اللّهُـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُكَ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ مَا اسْتَطَعْـتُ، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَعْـتُ، أَبـوءُ لَكَ بِنِعْمَتِـكَ عَلَـيَّ، وَأَبـوءُ لَكَ بِذَنْـبي فَاغْفِرْ لي، فَإِنَّهُ لا يَغْفِرُ الذُّنـوبَ إِلاّ أَنْتَ.'),
(5, 'رَضيـتُ بِاللهِ رَبَّـاً، وَبِالإِسْلامِ ديـناً، وَبِمُحَـمَّدٍ صلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيَّـاً.'),
(6, 'اللّهُـمَّ إِنِّي أَصْبَـحْتُ أُشْـهِدُكَ وَأُشْـهِدُ حَمَـلَةَ عَـرْشِـكَ، وَمَلائِكَتَكَ، وَجَمِيعَ خَلْـقِكَ، أَنَّكَ أَنْـتَ اللهُ لا إلهَ إِلاّ أَنْتَ وَحْـدَكَ لا شَـرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْـدُكَ وَرَسـولُـكَ.'),
(7, 'اللّهُـمَّ إِنِّي أَمسَيْتُ أُشْـهِدُكَ وَأُشْـهِدُ حَمَـلَةَ عَـرْشِـكَ، وَمَلائِكَتَكَ، وَجَمِيعَ خَلْـقِكَ، أَنَّكَ أَنْـتَ اللهُ لا إلهَ إِلاّ أَنْتَ وَحْـدَكَ لا شَـرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْـدُكَ وَرَسـولُـكَ.'),
(8, 'اللّهُـمَّ إِنِّي أَصْبَـحْتُ أُشْـهِدُكَ وَأُشْـهِدُ حَمَـلَةَ عَـرْشِـكَ، وَمَلائِكَتَكَ، وَجَمِيعَ خَلْـقِكَ، أَنَّكَ أَنْـتَ اللهُ لا إلهَ إِلاّ أَنْتَ وَحْـدَكَ لا شَـرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْـدُكَ وَرَسـولُـكَ.'),
(9, 'اللّهُـمَّ إِنِّي أَمسَيْتُ أُشْـهِدُكَ وَأُشْـهِدُ حَمَـلَةَ عَـرْشِـكَ، وَمَلائِكَتَكَ، وَجَمِيعَ خَلْـقِكَ، أَنَّكَ أَنْـتَ اللهُ لا إلهَ إِلاّ أَنْتَ وَحْـدَكَ لا شَـرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْـدُكَ وَرَسـولُـكَ.'),
(10, 'اللّهُـمَّ إِنِّي أَصْبَـحْتُ أُشْـهِدُكَ وَأُشْـهِدُ حَمَـلَةَ عَـرْشِـكَ، وَمَلائِكَتَكَ، وَجَمِيعَ خَلْـقِكَ، أَنَّكَ أَنْـتَ اللهُ لا إلهَ إِلاّ أَنْتَ وَحْـدَكَ لا شَـرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْـدُكَ وَرَسـولُـكَ.'),
(11, 'اللّهُـمَّ إِنِّي أَمسَيْتُ أُشْـهِدُكَ وَأُشْـهِدُ حَمَـلَةَ عَـرْشِـكَ، وَمَلائِكَتَكَ، وَجَمِيعَ خَلْـقِكَ، أَنَّكَ أَنْـتَ اللهُ لا إلهَ إِلاّ أَنْتَ وَحْـدَكَ لا شَـرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْـدُكَ وَرَسـولُـكَ.'),
(12, 'اللّهُـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُكَ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ مَا اسْتَطَعْـتُ، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَعْـتُ، أَبـوءُ لَكَ بِنِعْمَتِـكَ عَلَـيَّ، وَأَبـوءُ لَكَ بِذَنْـبي فَاغْفِرْ لي، فَإِنَّهُ لا يَغْفِرُ الذُّنـوبَ إِلاّ أَنْتَ.'),
(13, 'رَضيـتُ بِاللهِ رَبَّـاً، وَبِالإِسْلامِ ديـناً، وَبِمُحَـمَّدٍ صلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيَّـاً.'),
(14, 'سُبْحَانَ اللهِ وَبِحَمْدِهِ، عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ، وَمِدَادَ كَلِمَاتِهِ.'),
(15, 'اللّهُـمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ، وَتَحَوُّلِ عَافِيَتِكَ، وَفُجَاءَةِ نِقْمَتِكَ، وَجَمِيعِ سَخَطِكَ.'),
(16, 'اللّهُـمَّ إِنِّي أَعُوذُ بِكَ مِنَ الهَمِّ وَالحَزَنِ، وَأَعُوذُ بِكَ مِنَ العَجْزِ وَالكَسَلِ، وَأَعُوذُ بِكَ مِنَ الجُبْنِ وَالبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ وَقَهْرِ الرِّجَالِ.'),
(17, 'اللّهُـمَّ إِنِّي أَسْأَلُكَ العَفْوَ وَالعَافِيَةَ، فِي الدُّنْيَا وَالآخِرَةِ. اللّهُـمَّ إِنِّي أَسْأَلُكَ العَفْوَ وَالعَافِيَةَ، فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي. اللّهُـمَّ اسْتُرْ عَوْرَاتِي، وَآمِنْ رَوْعَاتِي. اللّهُـمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ وَمِنْ خَلْفِي وَعَنْ يَمِينِي وَعَنْ شِمَالِي، وَمِنْ فَوْقِي، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي.'),
(18, 'اللّهُـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُكَ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ مَا اسْتَطَعْـتُ، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَعْـتُ، أَبـوءُ لَكَ بِنِعْمَتِـكَ عَلَـيَّ، وَأَبـوءُ لَكَ بِذَنْـبي فَاغْفِرْ لي، فَإِنَّهُ لا يَغْفِرُ الذُّنـوبَ إِلاّ أَنْتَ.');

-- --------------------------------------------------------

--
-- Table structure for table `daily_verses`
--

CREATE TABLE `daily_verses` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_verses`
--

INSERT INTO `daily_verses` (`id`, `content`) VALUES
(1, 'الذكر أو الآية الأولى'),
(2, 'الذكر أو الآية الثانية'),
(3, 'الذكر أو الآية الثالثة');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'youssef', 'youssef@gmail.com', '01121668871', 'hellooooooo');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`id`, `name`, `image`) VALUES
(1, 'وعي', 'https://i.ytimg.com/pl_c/PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr/studio_square_thumbnail.jpg?sqp=CKPghLQG-oaymwEKCKAEEKAEIABIWg&rs=AMzJL3nxmHy8ipDVGSeAZ7g8xh-bLcSq3w'),
(2, 'خطوة', 'https://i.ytimg.com/pl_c/PLQEt0FQkwbwGmC_Vd8jLE3Nv1wnooUC3w/studio_square_thumbnail.jpg?sqp=COXghLQG-oaymwEKCKAEEKAEIABIWg&rs=AMzJL3loAef3j0PxwZtTgH2R461D1J6N9Q'),
(3, 'مجالس', 'https://i.ytimg.com/pl_c/PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv/studio_square_thumbnail.jpg?sqp=CP3ghLQG-oaymwEKCKAEEKAEIABIWg&rs=AMzJL3lYeMHnmSx2FNiusf-APAAWIhnGpQ'),
(4, 'صحابة', 'https://i.ytimg.com/pl_c/PLO-qKNquWhEllYfTQ3tCByFMWbnt7WL-s/studio_square_thumbnail.jpg?sqp=CJ3hhLQG-oaymwEKCKAEEKAEIABIWg&rs=AMzJL3mk5zi7-84hAr2d6z2_Rew9zELG1Q'),
(5, 'فنجان', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSExIWFhUWGBcWGRcXGBkXGRsXFxgYFhcZGxcYHSkgGB8mHhgWITEiJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGxAQGy0mICUtNS0tLS8tLS0vLS0vLS0tLi0vLS0tLS0tLTAtLS0vLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/'),
(8, 'هدوء', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFRUVFRUVFRUVFRUVFRUVFRUXFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFRAPFy0dHR0tLy0rLS0tLi03LSstKy4tLTArLS8tKy4tLy0tLS0rMC0tKy0tLS0tLSstKy0rKy0tLf/AABEIAOEA4QMBIgACEQEDEQH/');

-- --------------------------------------------------------

--
-- Table structure for table `podcast_episodes`
--

CREATE TABLE `podcast_episodes` (
  `id` int(11) NOT NULL,
  `podcast_id` int(11) NOT NULL,
  `episode_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `video_iframe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `podcast_episodes`
--

INSERT INTO `podcast_episodes` (`id`, `podcast_id`, `episode_name`, `description`, `image`, `release_date`, `video_iframe`) VALUES
(1, 1, 'بودكاست وعي 1 || سيطرة مواقع التواصل الإجتماعي على الإنسان || مع اسماعيل تمر و مهاب أيوب\r\n', '( بودكاست وعي 1 )\r\nموضوع الحلقة يناقش مشكلة سيطرة مواقع التواصل الأجتماعي على حياتنا وانعكاسه على الجيل الجديد\r\n\r\nلا تنسى الاشتراك في القناة و تفعيل الجرس ليصلك كل جديد!\r\n', 'https://i.ytimg.com/vi/ew1HK70yBq4/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA2mkkTdA77ea0NYQPnruVwHujIkw', '2024-03-11', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ew1HK70yBq4\" title=\"بودكاست وعي 1 || سيطرة مواقع التواصل الإجتماعي على الإنسان || مع اسماعيل تمر و مهاب أيوب\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(2, 1, 'بودكاست وعي 2 || لا تكن عشوائي للنهوض من جديد || مع اسماعيل تمر و مهاب أيوب\r\n', '( بودكاست وعي 2 )\r\nموضوع الحلقة يناقش كتاب اسماعيل تمر الأول \r\nبعنوان ( لا تكن عشوائي ) \r\nالذي يرسم خطة للنهوض من جديد بعد مرحلة\r\nالتشتت و الضياع والكآبة و فقدان الشغف \r\nو يعيد للانسان ترتيب ذاته والبحث في دواخله \r\nللوصول إلى إنسان قوي وصلب غير عشوائي \r\n—\r\nلا تنسى الاشتراك في القناة و تفعيل الجرس ليصلك كل جديد !\r\n', 'https://i.ytimg.com/vi/gzwJ8vQRetc/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAN76AC4k9aVmXMXt_7doW9BGZ5aw', '2024-03-17', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/gzwJ8vQRetc\" title=\"بودكاست وعي 2 || لا تكن عشوائي للنهوض من جديد || مع اسماعيل تمر و مهاب أيوب\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(3, 1, 'بودكاست وعي 3 || المرأة و المساواة || مع اسماعيل تمر و مهاب أيوب', '( بودكاست وعي 3 )\r\nموضوع الحلقة يناقش\r\nفكرة المساواة الحقيقية بين الرجل والمرأة\r\nو ضرورة فهم الرجل ما هية المرأة \r\nو بالمقابل معرفة المرأة طبيعة الرجل\r\nلبناء مجتمع متماسك و أسرة وجيل متماسكين\r\n \r\n—\r\nلا تنسى الاشتراك في القناة و تفعيل الجرس ليصلك كل جديد !\r\n', 'https://i.ytimg.com/vi/Xk_OpC9Gpe8/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBp6oa-UQD_VnddrEWPN0sveynkYw', '2024-03-23', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/Xk_OpC9Gpe8\" title=\"بودكاست وعي 3 || المرأة و المساواة  || مع اسماعيل تمر و مهاب أيوب\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(5, 1, 'وعي ٤ | الصلاة وأهميتها وارتباطها الواقعي بحياتنا وكيفية المواظبة عليها\r\n', 'بودكاست وعي مع أحمد عامر وحازم الصديق.\r\n\r\nأهمية الصلاة وارتباطها الواقعي بحياتنا وطرق فعالة تخليك تواظب على الصلاة، ومحاولة لفهم الصلاة من كذا بعد وتأثيرها الإيجابي والملموس علينا.\r\n', 'https://i.ytimg.com/vi/M6AIuNtxMrY/hqdefault.jpg?sqp=-oaymwEbCMQBEG5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBmz9N4wTla2GBGf5PPWCeAWwjaxg', '2021-02-27', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/M6AIuNtxMrY\" title=\"وعي ٤ | الصلاة وأهميتها وارتباطها الواقعي بحياتنا وكيفية المواظبة عليها\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(6, 1, 'وعي ٥ | كلام عن العلم والعلماء ونسأل مين ونرجع لمين\r\n', 'بودكاست وعي مع أحمد عامر وحازم الصديق', 'https://i.ytimg.com/vi/dkzOzXTQfHo/hqdefault.jpg?sqp=-oaymwE1CMQBEG5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AHUBoAC4AOKAgwIABABGGwgbChsMA8=&rs=AOn4CLBo0HApv3z-NIsb9lhND3PhtWE0qg', '2021-03-27', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/dkzOzXTQfHo?list=PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr\" title=\"وعي ٥ | كلام عن العلم والعلماء ونسأل مين ونرجع لمين\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(7, 2, '(١) لماذا الحديث عن ابن تيمية؟ | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الأولى\r\n', 'نتحاور في هذه الحلقة من سلسلة ابن تيميَّة رحمه الله مع الشيخ ناصر الحميد وياسر الحزيمي عن شيخ الإسلام ابن تيميَّة، وشخصيته، وعلامات النُّبوغ العلمي منذ الصِّغر، وكيف اصطفاه الله بالحفظ والفهم والبيان، وصفاته، وأخلاقه، وتجاوزه مع خصومه.\r\n', 'https://i.ytimg.com/vi/WOxpgh6r6B8/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCOPRuqauHTmTcQwL35p78yvFzE_g', '2023-11-05', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/WOxpgh6r6B8?list=PLQEt0FQkwbwHWObikETzgD2T8rwNpulLl\" title=\"(١) لماذا الحديث عن ابن تيمية؟ | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الأولى\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(8, 2, '(٢) التوازن بين العلم والعطاء | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الثانية\r\n', 'نتحاور في هذه الحلقة من سلسلة ابن تيميَّة رحمه الله مع الشيخ ناصر الحميد وياسر الحزيمي عن قُدرة الإمام ابن تيميَّة على الموازنة بين انشغاله بالعلم وعطائه للنَّاس، وكيف تعامل مع طلابه، وهل بالفعل أنَّ مجموع العلوم عند ابن تيميَّة بالكاد اليوم تحملها أجهزة الحاسوب؟\r\n', 'https://i.ytimg.com/vi/Kadjbg3TPqg/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCGWPcihJxh2SEllREGoYxOGhakVw', '2023-12-05', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/Kadjbg3TPqg?list=PLQEt0FQkwbwHWObikETzgD2T8rwNpulLl\" title=\"(٢) التوازن بين العلم والعطاء | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الثانية\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(9, 2, '(٣) القوة العلمية عند ابن تيمية | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الثالثة\r\n', 'نتحاور في هذه الحلقة من سلسلة ابن تيمية رحمه الله مع الشيخ ناصر الحميد وياسر الحزيمي عن القوة العلميَّة والمعرفيَّة عند الإمام ابن تيميَّة، وقُدْرته على استخراج المعاني والاستنباط، وإجلاله علم الصحابة وتقديرهم.. ولماذا صرَّح في نهاية عمره بندمه وتركه للقرآن.. فما القصة؟!\r\n', 'https://i.ytimg.com/vi/BppyUt9kyVg/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLC7iHjtgoDoFn64bwr5NDy3Wg2sDA', '2023-09-04', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/BppyUt9kyVg?list=PLQEt0FQkwbwHWObikETzgD2T8rwNpulLl\" title=\"(٣) القوة العلمية عند ابن تيمية | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الثالثة\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(10, 2, '(٤) ابن تيمية العالم والعابد | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الرابعة\r\n', 'نتحاور في هذه الحلقة من سلسلة ابن تيميَّة رحمه الله مع الشيخ ناصر الحميد وياسر الحزيمي عن الإمام ابن تيميَّة العالم والعابد وعلوم الدُّنيا الأخرى، مثل: الطب، والهندسة في حياته، ولماذا لم يتزوج ابن تيميَّة؟ ومشهد النِّهاية في حياته.\r\n', 'https://i.ytimg.com/vi/9zbKmnFKve8/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLARXLfoxCTS2HY0mWhUYq99e2u5fA', '2023-08-08', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/9zbKmnFKve8?list=PLQEt0FQkwbwHWObikETzgD2T8rwNpulLl\" title=\"(٤) ابن تيمية العالم والعابد | مع الشيخ ناصر الحميد و ياسر الحزيمي | الحلقة الرابعة\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(11, 3, 'هل سيُعوض الذكاء الإصطناعي مهام الطبيب؟ | نهضة الأمة الإسلامية | مع د. أحمد الفارسي 🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا أحمد الفارسي دكتور في الطب و ناشط على وسائل التواصل الإجتماعي.\r\n ', 'https://i.ytimg.com/vi/Fp-Os6dKa7s/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBqA1kZiid51MnzmWuwl4yJ3C4-sA', '2024-06-22', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/Fp-Os6dKa7s?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"هل سيُعوض الذكاء الإصطناعي مهام الطبيب؟ | نهضة الأمة الإسلامية | مع د. أحمد الفارسي 🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(12, 3, 'من الولادة إلى المراهقة : دليلك الشامل لتربية ناجحة لأبنائك | مع ذ. محمد كويا 🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا المرشد التربوي و الأسري محمد كويا وتكلمنا معه في موضوع تربية الأبناء من الولادة إلى المراهقة وكيف أن التربية اليوم أصبحت من أصعب الأمور كأنها سباحة ضد التيار كما تكلمنا على مدونة الأسرة ومواضيع أخرى متعددة.\r\n ', 'https://i.ytimg.com/vi/k1TeYpDt48w/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCxYtzRmrp4AfrcCsS1zZmErkJBXg', '2024-06-14', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/k1TeYpDt48w?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"من الولادة إلى المراهقة : دليلك الشامل لتربية ناجحة لأبنائك | مع ذ. محمد كويا 🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(13, 3, 'يا شَباب المُسلمين ألا تتزوَّجُون؟! | كيف نُربي أبنائنا على البِر؟ | مع يوسف إمسفوان 🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا يوسف إمسفوان من شباب الدعوة وتكلمنا معه في موضوع بر الأبناء للآباء وتربيتهم على الأخلاق و الدين، تكلمنا على معايير إختيار الزوجة وأم أبناء المستقبل وكيف يجب على المتطلقين أن يتعاملوا مع أبنائهم بعد حصول الطلاق كما تكلمنا على مدونة الأسرة ومواضيع أخرى متعددة.\r\n ', 'https://i.ytimg.com/vi/wsmCwWIEeXg/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAG1Kc2ah1ZryCUNGZRcFTBGKX2Gg', '2024-05-05', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/wsmCwWIEeXg?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"يا شَباب المُسلمين ألا تتزوَّجُون؟! | كيف نُربي أبنائنا على البِر؟ | مع يوسف إمسفوان 🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(14, 3, 'سوء الأخلاق سبب الطلاق | تربية الأبناء على الأخلاق | مع الكوتش شعيب صبوري🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا المدرب والخبير في تطوير الذات و العلاقات شعيب صبوري و تكلمنا معه على الأخلاق،  ومواضيع أخرى متعددة.\r\n ', 'https://i.ytimg.com/vi/l7-kZXxJ0qc/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDlCYeToKJW4dFyslMMKrtsmIsMhQ', '2024-05-16', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/l7-kZXxJ0qc?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"سوء الأخلاق سبب الطلاق | تربية الأبناء على الأخلاق | مع الكوتش شعيب صبوري🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(15, 3, 'لهذه الأسباب سقطت الأمة الإسلامية في التخلف و الانحطاط | مع ذ. مصطفى شنهور🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا الأستاذ مصطفى شنهور وتكلمنا معه في موضوع ماذا خسر العالم بانحطاط المسلمين، تكلمنا عن وضع العالم والبشرية قبل بعثة النبي محمد صلى الله عليه وسلم وكيف تغير الحال بعد البعثة وكيف أن المسلمون بنوا حضارة وشهد العالم في حكمهم الإزدهار والرقي والعدل وكيف أن العالم يتخبط الآن في العديد من المشاكل بسبب ضعف المسلمين وانحطاطهم.\r\n ', 'https://i.ytimg.com/vi/X_OrQIRQELM/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLB1N6K0_lqLE152l6qgm_z9EkX1KA', '2024-05-02', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/X_OrQIRQELM?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"لهذه الأسباب سقطت الأمة الإسلامية في التخلف و الانحطاط | مع ذ. مصطفى شنهور🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(16, 3, 'هل السلفية هي الفرقة الناجية؟ | الأشعرية، المذهبية، التصوف | الشيخ عبد الصمد كروم 🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا الشيخ عبد الصمد كروم وتكلمنا معه عن السلفية وما يثار حولها من اتهامات بالتشدد في الدين، تكلمنا على علاقة السلفية بإبن تيمية ومحمد ابن عبد الوهاب، تكلمنا على الفرق العقدية كالأشعرية، على المذهبية وعلى التصوف وتكلمنا في مواضيع أخرى متعددة.\r\n', 'https://www.youtube.com/watch?v=49w6TNcnxqk&list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv&index=6&pp=iAQB', '2024-04-24', 'https://www.youtube.com/watch?v=49w6TNcnxqk&list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv&index=6&pp=iAQB'),
(17, 3, 'د.حمزة الخالدي: احترق بيتي وفقدت كل أموالي وبدأت من الصفر |محمد الفايد وإلياس المالكي🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا الدكتور حمزة الخالدي وتكلمنا معه عن دور العلماء والدعاة ولماذا يتم منع البعض منهم من المحاضرات، تكلمنا على فتاوى الشيخ مولود السريري التي تثير الجدل، تكلمنا على العديد من قضايا الشباب، تكلمنا على رحلة حمزة الخالدي مع التجارة والأعمال وتكلمنا في مواضيع أخرى متعددة.\r\n', 'https://i.ytimg.com/vi/iG5vVXL1jfU/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDyiTpBe1s67MoVCGNbu3PiCL5OHQ', '2024-04-14', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/iG5vVXL1jfU?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"د.حمزة الخالدي: احترق بيتي وفقدت كل أموالي وبدأت من الصفر |محمد الفايد وإلياس المالكي🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(18, 3, 'شهادات لشباب دمروا حياتهم بسبب الخمر و الزنا | الأمهات العازبات | محمد أبو هارون وهود🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا تحدثنا مع محمد الكادي المعروف بمحمد أبو هارون وهود، ممرض متخصص في التخذير والإنعاش عن مجال الدعوة إلى الله و عن فضل القرآن الكريم، تكلمنا عن شهادات لشباب ضيعوا حياتهم بسبب الخمور و المخذرات والزنا وتكلمنا في مواضيع أخرى متعددة.\r\n', 'https://i.ytimg.com/vi/FsqIyf-lvn4/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLACapVzt1FEuPfJ1T5g7XtyeAumCw', '2024-03-24', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/FsqIyf-lvn4?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"شهادات لشباب دمروا حياتهم بسبب الخمر و الزنا | الأمهات العازبات | محمد أبو هارون وهود🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(19, 3, 'علاش السكايرية كيحبسو الخمر 40 يوم قبل رمضان؟ | مسلسلات شياطين الإنس| د. رشيد الهلالي🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا الشيخ الدكتور رشيد الهلالي و تكلمنا معه عن  فضل شهر رمضان و كيف نكون فيه من الفائزين، تكلمنا عن بعض الظواهر السلبية المشاهدة في رمضان و كيف نتجنبها كما تكلمنا في مواضيع أخرى متعددة.\r\n', 'https://i.ytimg.com/vi/juTLKsD4RiY/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAL74HpJQvEL1Txf4PvnCMbdgTGRQ', '2024-03-24', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/juTLKsD4RiY?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"علاش السكايرية كيحبسو الخمر 40 يوم قبل رمضان؟ | مسلسلات شياطين الإنس| د. رشيد الهلالي🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(20, 3, 'لا نجاة لنا إلا بالعودة إلى القرآن الكريم | المسح على التقاشير| المذهبية |محمد بن عزي🎙️بودكاست مجالس\r\n', 'في هذا الحلقة من برنامج بودكاست مجالس على قناة إسلامولوجيا استضفنا الشيخ محمد بن عزي تلميذ الشيخ مولود السريري وتكلمنا معه على القرآن الكريم  وفضله وتأثيره على صاحبه، تكلمنا عن رحلته في طلب العلم في مدرسة تنكرت العتيقة، تكلمنا عن فتوى الشيخ مولود السريري المتعلقة بالمسح على التقاشير وعن المذهبية ومواضيع أخرى متعددة.\r\n', 'https://i.ytimg.com/vi/md_j8duR7IY/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAOyZP-xVsiljPKcU33bT679lMs_A', '2024-02-24', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/md_j8duR7IY?list=PLOLN2qKydrFESJN1E0VWl_1QbVhxF8JQv\" title=\"لا نجاة لنا إلا بالعودة إلى القرآن الكريم | المسح على التقاشير| المذهبية |محمد بن عزي🎙️بودكاست مجالس\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(21, 4, 'قلق مفرط\r\n', 'في الحلقة الخامسة من بودكاست صَحْب، واللي تمّت بالتزامن مع اليوم العالمي للصحة النفسية، حكيت لكم عن القلق وعرفته، وحكيت عن الامور اللي ممكن لو تعززها عندك تدفع بالقلق جانبًا،\r\n', 'https://i.ytimg.com/vi/bEZl-RQUQ1o/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AH-CYAC0AWKAgwIABABGGUgZShlMA8=&rs=AOn4CLCnytZhQ8uaevqmali8ld0sxpY5YA', '2022-10-22', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/bEZl-RQUQ1o?list=PL4YviBhRq-2CD_k74IA1uWNC1O_ShNu4o\" title=\"قلق مفرط\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(22, 4, 'الهزيمة هزيمة ..\r\n', 'في الحلقة العاشرة من بودكاست صَحْب حكيت لكم الهزيمة وانها لا يجب ان تسمّى بمسميات اخرى، ومتى نكون اشخاص انهزاميين؟\r\n', 'https://i.ytimg.com/vi/WMtkjYXDExw/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AHUBoACrAOKAgwIABABGEogXChlMA8=&rs=AOn4CLD7RmWY-nZDtWb4u5UAL4VOHtD-JA', NULL, '<iframe width=\"758\" height=\"380\" src=\"https://www.youtube.com/embed/WMtkjYXDExw?list=PL4YviBhRq-2CD_k74IA1uWNC1O_ShNu4o\" title=\"الهزيمة هزيمة ..\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(23, 4, 'يقظة\r\n', 'في الحلقة الثانية عشر من بودكاست صَحْب حكيت لكم عن اليقظة الذهنية، وأهميتها، ولما تمر فترة من حياتنا بدون مانحس فيها واننا عشناها .. اتمنى تعجبكم \r\n', 'https://i.ytimg.com/vi/ZciARWrdt-c/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AHUBoACrAOKAgwIABABGDEgVih_MA8=&rs=AOn4CLCglHvRfWE5e_Wt6yfQDeEyyibd7g', '2023-08-06', '<iframe width=\"758\" height=\"380\" src=\"https://www.youtube.com/embed/ZciARWrdt-c?list=PL4YviBhRq-2CD_k74IA1uWNC1O_ShNu4o\" title=\"يقظة\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(24, 4, 'خذلان', 'في الحلقة الثالثة عشر من بودكاست صَحْب حكيت لكم عن الخذلان، في الاحلام والعلاقات، وقد ايش ممكن يستنزف من صحتك ونفسيتك، اتمنى تعجبكم يا رفاق  \r\n', 'https://i.ytimg.com/vi/X-FBjcsZJjQ/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AHUBoACrAOKAgwIABABGEsgXShlMA8=&rs=AOn4CLBqbP_EJexYcnX2HAT51G0GTO6tZw', '2023-09-11', '<iframe width=\"758\" height=\"380\" src=\"https://www.youtube.com/embed/X-FBjcsZJjQ?list=PL4YviBhRq-2CD_k74IA1uWNC1O_ShNu4o\" title=\"خذلان\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(25, 4, 'التعلق، نتيجة طفولة؟\r\n', 'في الحلقة الرابعة عشر من برودكاست صَحْب حكيت لكم عن شعور التعّلق، والآلام اللي يسببها، وهل هو نتيجة طفولة بائسة؟ حلقة دسمة جدًا، اتمنى تعجبكم يا رفاق  \r\n', 'https://i.ytimg.com/vi/I9ToKZd3CMk/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AH-CYAC0AWKAgwIABABGFsgWyhbMA8=&rs=AOn4CLCsb8FEdySy2Deezfm7-9Nj8HTPxg', '2023-11-16', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/I9ToKZd3CMk?list=PL4YviBhRq-2CD_k74IA1uWNC1O_ShNu4o\" title=\"التعلق، نتيجة طفولة؟\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(26, 4, 'نفخر بها\r\n', 'في الحلقة الخامسة عشر، نحتفي باليوم العالمي للغتنا العربية، حكيت عن اهمية اللغة وثقلها العالمي، ومساعي مجمع الملك السلمان العالمي لتعزيز انتشار اللغة، وحمايتها.. \r\n', 'https://i.ytimg.com/vi/TxuZBkGHUTw/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AH-CYAC0AWKAgwIABABGGUgVCg-MA8=&rs=AOn4CLAleyKCv7hj486wdI3SnmrqIvcegQ', '2023-12-11', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/TxuZBkGHUTw?list=PL4YviBhRq-2CD_k74IA1uWNC1O_ShNu4o\" title=\"نفخر بها\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(27, 1, 'وعي مع الجمهور ٦ | حقيقة الذنوب ولماذا نذنب وفهم النفس في التعامل مع الذنب\r\n', 'بودكاست وعي مع أحمد عامر وحازم الصديق\r\n', 'https://i.ytimg.com/vi/7AWgilk0YMM/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLB80ZBXb7ACVy4hwvTNOfBJumnGXg', '2021-03-07', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/7AWgilk0YMM?list=PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr\" title=\"وعي مع الجمهور ٦ | حقيقة الذنوب ولماذا نذنب وفهم النفس في التعامل مع الذنب\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(28, 1, 'وعي ٧ | أهمية طلب العلم الشرعي وأنواعه وهل هو ضرورة أم اختيار\r\n', '     ', 'https://i.ytimg.com/vi/mhQYHun5lh4/hqdefault.jpg?sqp=-oaymwE1CKgBEF5IVfKriqkDKAgBFQAAiEIYAXABwAEG8AEB-AHUBoAC4AOKAgwIABABGGUgZShlMA8=&rs=AOn4CLDtMj5Q3yYZdIuXe4s7QTHhR6lcGQ', '2021-03-12', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/mhQYHun5lh4?list=PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr\" title=\"وعي ٧ | أهمية طلب العلم الشرعي وأنواعه وهل هو ضرورة أم اختيار\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(29, 1, 'وعي ٨ | معنى البر المفقود ومفهوم جديد لاستيعاب علاقتنا بأهلنا وطرق فعالة لنيل رضاهم\r\n', 'بودكاست وعي مع أحمد عامر وحازم الصديق: \r\nمعنى البر المفقود ومفهوم جديد لاستيعاب علاقتنا بأهلنا وطرق فعالة لنيل رضاهم', 'https://i.ytimg.com/vi/D3gunb0UuVY/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCgr0h9pLeByxUsd8GuT9INEp0jsA', '2023-03-21', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/D3gunb0UuVY?list=PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr\" title=\"وعي ٨ | معنى البر المفقود ومفهوم جديد لاستيعاب علاقتنا بأهلنا وطرق فعالة لنيل رضاهم\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(30, 1, 'وعي ٩ | ماذا يعني رمضان لنا وما الاستعداد الذهني والنفسي له\r\n', 'بودكاست وعي مع احمد عامر وحازم الصديق. كيفية الاستعداد الذهني والنفسي لرمضان وتحديات شخصية\r\n', 'https://i.ytimg.com/vi/OuyAO6Nz9v0/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCmjZ9NufwoZWhUMGqz4r6ezH8H2A', '2021-04-10', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/OuyAO6Nz9v0?list=PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr\" title=\"وعي ٩ | ماذا يعني رمضان لنا وما الاستعداد الذهني والنفسي له\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(31, 1, 'وعي ١٠ | الاستعداد العملي لرمضان بخطة واقعية\r\n', 'بودكاست وعي مع أحمد عامر وحازم الصديق عن الاستعداد لرمضان بخطة عملية.\r\n', 'https://i.ytimg.com/vi/qUtDdVuXayA/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBXbE-uNs2oWXUv9jw7wCAfSS-MMw', '2021-04-08', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/qUtDdVuXayA?list=PLCpK4282MCT-lBXi4Nodjzq1TDZsK9qwr\" title=\"وعي ١٠ | الاستعداد العملي لرمضان بخطة واقعية\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(32, 5, 'كيف ضيّع المسلمون الأندلس | بودكاست فنجان\r\n', 'ما سر ارتباطنا العاطفي بالأندلس، وما سر التسميات الأندلسية مثل شارع غرناطة وحي الحمراء في مدننا حتى اليوم؟\r\n\r\nضيف هذه الحلقة خالد البكر، أستاذ التاريخ الإسلامي في جامعة الملك سعود، يحكي لنا فيها قصة الأندلس وتاريخها منذ فتحها ودخول المسلمين إليها، حتى سقوط ولايتهم فيها. \r\n\r\nلماذا فتح المسلمون الأندلس، وهل هي أرض عربية أساسًا، وكيف كانت الخلافة الإسلامية فيها، وكيف عاش المسلمون حينها؟\r\n\r\nماذا عن رد العباسيين على الوجود السياسي للأمويين في الأندلس، وكيف انقلب حال المسلمين من القوة إلى الضعف فالانهيار ثم انتهاء دولتهم، وما حقيقة محاكم التفتيش، وكيف كانت نهاية الأمويين في الأندلس؟ \r\n\r\n', 'https://i.ytimg.com/vi/hnPVEa6Cweo/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCtZ_2JXmkFguatv29nLY18SXin_Q', '2024-06-26', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/hnPVEa6Cweo?list=PLeNNUmE-BlnEls2kOkiV2CXMezV6oaq8I\" title=\"كيف ضيّع المسلمون الأندلس | بودكاست فنجان\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(33, 5, 'كيف سيتخلى العالم عن النفط | بودكاست فنجان\r\n', 'عند الحديث عن النفط يتوقع العالم انتهاءه خلال السنوات القادمة والكثير من الإحصائيات تدعم هذا الادعاء، لكن هناك ادعاء مخالف، أن النفط مرة بعد الأخرى تزداد قوته والتاريخ وحتى المنطق يدل على ذلك. \r\n\r\nضيفي في هذه الحلقة أنس الحجي الخبير في أسواق الطاقة يدعم الرأي الثاني، ويرى بأن تخلي العالم عن النفط ليست إلا مبالغات إعلامية! وأن التغير المناخي أمر طبيعي! إذن لماذا تدفع الحكومات مبالغ طائلة للحد منه؟\r\n\r\nكما يحدثنا عن حقيقة تاريخ النفط ومستقبله، ويقول إن الشركات النفطية الكبرى نشأت بالصدفة، وإن التاريخ الذي تسرده أمريكا مزيف! كما إن الإعلام يبالغ في ضرورة إيجاد بدائل للنفط.\r\n\r\nفماذا عن السيارات الكهربائية؟ هل تعد حقًا موفرة للطاقة؟ أم تستهلك الطاقة أكثر؟ وما مستقبل الطاقة؟ وهل حقًا علينا إيجاد بدائل للنفط، كالغاز مثلًا؟وما الطاقة الهيدروجينية؟ وما حقيقة الطاقة النووية؟ ', 'https://i.ytimg.com/vi/1I55LHgOkYs/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAHmAXTS4ypURHJFSWo52sakanu_g', '2024-06-19', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/1I55LHgOkYs?list=PLeNNUmE-BlnEls2kOkiV2CXMezV6oaq8I\" title=\"كيف سيتخلى العالم عن النفط | بودكاست فنجان\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(34, 5, 'ظاهرة شباب البومب وفيصل العيسى | بودكاست فنجان\r\n', 'مسلسل شباب البومب ظاهرة لا يمكنك تجاهلها، سواءً أعجبك المسلسل أم لا، هذا موضوع آخر. حقق المسلسل نجاحًا كبيرًا، وأثر في الأطفال والمراهقين، بالإضافة إلى مشاهداته المليونية. \r\n\r\nمنذ بدايته قبل اثنتي عشرة سنة وهو يواجه النقد والهجوم اللاذع، رغم ما حققه من نجاح. قررت استضافة منتجه وممثله فيصل العيسى لنسمع منه عن هذه الظاهرة الغريبة، وكواليس العمل وسر خلطة نجاح شباب البومب.\r\n\r\nما فاجأني شخصيًا أن فيصل يعمل كمعالج فني في مستشفى الأمل (إرادة) للأمراض النفسية ومعالجة الإدمان منذُ خمسة عشر عامًا، لتهيئة المرضى النفسيين والمدمنين لما قبل العلاج. والغريب أن فيصل متمسك بهذه الوظيفة، على الرغم من كل ما حققه.\r\n\r\nكيف كانت بدايات حياة فيصل الفنية قبل شباب البومب؟ تجربته في طاش؟ من أين جاءت فكرة شباب البومب؟ لماذا انتقل المسلسل إلى روتانا بعدما كان يُعرض على التلفزيون السعودي؟ كيف تعامل مع الصورة النمطية عن المسلسل والهجوم الذي طاله؟\r\n\r\nيقول العيسى: شباب البومب عمل يشبه المجتمع السعودي، ولا ألتفت إلى هذه الانتقادات، ما يهمني هو جمهوره ومحبوه، المراهقون من المرحلة الابتدائية وحتى الثانوية، ولا بأس في أن شباب البومب لا يعجبني، المهم أن يُعجب جمهوره؛ فأنا لست فئته المستهدفة.\r\n', 'https://i.ytimg.com/vi/GMyGyYBBM2M/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAvULWjpExVHW_WrVWdmUM--rgP-Q', '2024-06-12', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/GMyGyYBBM2M?list=PLeNNUmE-BlnEls2kOkiV2CXMezV6oaq8I\" title=\"ظاهرة شباب البومب وفيصل العيسى | بودكاست فنجان\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(35, 5, 'كيف تلتزم بالنادي وتتمرن بسهولة | بودكاست فنجان\r\n', 'يقولون: من أهم الأشياء التي تخليك تخسر وزنك أو تزيده التمارين الرياضية، لكنك ستسمع الكثير من «ما عمري رحت النادي واستفدت». هذا غير الذين يسجلون في النادي ولا يذهبون. فما مشكلة النوادي الرياضية، وليش ما نقدر نلتزم؟\r\n\r\nسواءٌ أذهبت أم لا، المشكلة أنك ما تعرف وش الحل وما تعرف هل المشكلة في تمارينك أو مدربك. لذلك استضفت في هذه الحلقة محمود عز أخصائي اللياقة والمدرب شخصي لأكثر من 15 سنة.\r\n\r\nإذا لم يحدث أي تغيير فهل يعني هذا أن هناك خطأ؟ وكيف أعرف المشكلة في تماريني؟ وأسعار المدربين مرتفعة، فهل أتمرن بنفسي أو لا بُد من وجود مدرب؟ \r\n\r\nمن البداية عارض ضيفي فكرة أخذ التمارين من الإنترنت، فهي أشبه بالمقامرة: تصيب مرة وتخيب مرات. ويؤكد أهمية أن يكون لديك مدرب شخصي. فكيف أعرف المدرب الجيّد؟ وكيف أعرف أن هذه التمارين تناسبني؟ \r\n\r\nلدى عز طرائقه الخاصة في جعل الرياضة نمط حياة، والالتزام بالنادي، وبأي التمارين تهتم ومتى؟ وتقوية العضلات، وأي المكملات الغذائية تناسبك؟ وهو يؤكد أهميتها، كما يحذّر من الهرمونات وقدرتها على تدمير صحة الإنسان.\r\n\r\n-', 'https://i.ytimg.com/vi/06ovyUh2iWU/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLD8Xl3DORs8k075XrwVFmFLyH1nSQ', '2024-06-05', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/06ovyUh2iWU?list=PLeNNUmE-BlnEls2kOkiV2CXMezV6oaq8I\" title=\"كيف تلتزم بالنادي وتتمرن بسهولة | بودكاست فنجان\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(36, 8, 'موضة التخلي | بودكاست هدوء\r\n', 'ظهرت بشكل متدرج وسلس، روج لها البعض وتفاخروا بها، واعتقد فيها آخرون وربطوها بالصلابة النفسية والنضج: موضة الوداعات والاستعداد للمغادرة!\r\n', 'https://www.youtube.com/watch?v=38HUDiQ-9pQ&list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1&index=1&pp=iAQB', '2023-12-12', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/38HUDiQ-9pQ?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"موضة التخلي | بودكاست هدوء\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(37, 8, 'الحياة من الشكوك | بودكاست هدوء\r\n', 'حكمة قديمة لأمي قالتها تعقيباً على قصة مأساوية مكتوبة في صحيفة يومية، تكاد لا تفارقني وأنا أفكر في حكاية خالد. المقتات على الشكوك! \r\n', 'https://i.ytimg.com/vi/eXiV9MVkqyg/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCgPHkIHImOZpMDWsclm0A4QRLUNA', '2023-10-01', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/eXiV9MVkqyg?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"الحياة من الشكوك | بودكاست هدوء\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(38, 8, 'فخ التعايش | بودكاست هدوء\r\n', 'وُجدت رسالة من دون عنوان ولا تاريخ في حقيبته، يقول فيها: أسوأ ما قد نكتسبه من طباع هو التعايش! فأي تعايش يقصد؟\r\n', 'https://i.ytimg.com/vi/IIDE7WkxxxY/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCpwNUXGV7o6eQrDZHjhJrG3vpJ4w', '2023-09-11', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/IIDE7WkxxxY?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"فخ التعايش | بودكاست هدوء\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(39, 8, 'مُحترف الخسارة | بودكاست هدوء\r\n', 'بين خسارات صغيرة أنساها في يومها التالي وخسارات كبيرة سببتها مغامراتي وبرعت في استقبالها، أطلقت على نفسي: محترف الخسارة!\r\n', 'https://i.ytimg.com/vi/tLlybpymato/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLA2ktDvSq5fQS5vKACyylx7IcugHQ', '2023-09-03', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/tLlybpymato?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"مُحترف الخسارة | بودكاست هدوء\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(40, 8, 'تكافؤ | بودكاست هدوء\r\n', 'قانون ومبدأ وددت لو أدركته قديماً، قبل أن أفيض شعوراً و تودداً وقبل أن أغرق في الأسئلة عن ما بدواخل الآخرين.\r\n', 'https://i.ytimg.com/vi/GW8KM7T3yi8/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBu4aMajOUaTbu9a-U4Ypop7UBj8w', '2023-08-14', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/GW8KM7T3yi8?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"تكافؤ | بودكاست هدوء\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(41, 8, 'معنى |بودكاست_هدوء مع عمال كمال\r\n', 'يقال أن السعيد في حياته هو من وجد فيها المعنى، لكن كيف نميز بين المعاني ثم نأَلَفها بعد ذلك؟\r\n', 'https://i.ytimg.com/vi/mXgavT4tc5g/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAwfsd2oxinoeqg29wf8jW-9o-Ttg', '2023-07-23', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/mXgavT4tc5g?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"معنى | #بودكاست_هدوء مع عمال كمال\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(42, 8, 'الطريق | #بودكاست_هدوء مع عمار كمال\r\n', 'دروب الحياة متشابكة، متشابهة، مربكة أحياناً.. كيف نختار طريقنا ومع من؟\r\n', 'https://i.ytimg.com/vi/lsOcygYf6bE/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBw1ZFqpDSCd6YAr0BCNoyZP3YsLg', '2023-07-09', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/lsOcygYf6bE?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"الطريق | #بودكاست_هدوء  مع عمار كمال\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(43, 8, 'ردّة فعل | بودكاست هدوء مع عمار كمال\r\n', 'حين تقابلنا المواقف الاعتيادية ونجابهها بدواخلنا المتقدة أو ماضينا المؤثر أو صمتنا غير المفهوم.. نكون في خانة ردة الفعل التي نحاول تفسيرها في مساحتنا بشيء من الفلسفة\r\n', 'https://i.ytimg.com/vi/cw-JuX5p2Pw/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDMfiFK3jhFUivNQavi33Md47doRA', '2023-06-11', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/cw-JuX5p2Pw?list=PLdDw-NyVFhQN1J5UgLDklr0pbOHalIGS1\" title=\"ردّة فعل | بودكاست هدوء مع عمار كمال\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `quran_verses`
--

CREATE TABLE `quran_verses` (
  `id` int(11) NOT NULL,
  `verse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quran_verses`
--

INSERT INTO `quran_verses` (`id`, `verse`) VALUES
(1, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ ﴾ ﴿ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ﴾ ﴿ مَـٰلِكِ يَوْمِ ٱلدِّينِ ﴾ ﴿ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴾ ﴿ ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ ﴾ ﴿ صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ ﴾ (الفاتحة)'),
(2, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ قُلْ هُوَ ٱللَّهُ أَحَدٌ ﴾ ﴿ ٱللَّهُ ٱلصَّمَدُ ﴾ ﴿ لَمْ يَلِدْ وَلَمْ يُولَدْ ﴾ ﴿ وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌ ﴾ (الإخلاص)'),
(3, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ ﴾ ﴿ مِن شَرِّ مَا خَلَقَ ﴾ ﴿ وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ ﴾ ﴿ وَمِن شَرِّ ٱلنَّفَّـٰثَـٰتِ فِى ٱلْعُقَدِ ﴾ ﴿ وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ ﴾ (الفلق)'),
(4, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ ﴾ ﴿ مَلِكِ ٱلنَّاسِ ﴾ ﴿ إِلَـٰهِ ٱلنَّاسِ ﴾ ﴿ مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ ﴾ ﴿ ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ ﴾ ﴿ مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ ﴾ (الناس)'),
(5, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ تَبَّتْ يَدَآ أَبِى لَهَبٍ وَتَبَّ ﴾ ﴿ مَآ أَغْنَىٰ عَنْهُ مَالُهُۥ وَمَا كَسَبَ ﴾ ﴿ سَيَصْلَىٰ نَارًا ذَاتَ لَهَبٍ ﴾ ﴿ وَٱمْرَأَتُهُۥ حَمَّالَةَ ٱلْحَطَبِ ﴾ ﴿ فِى جِيدِهَا حَبْلٌۭ مِّن مَّسَدٍۭ ﴾ (المسد)'),
(6, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ إِنَّآ أَعْطَيْنَـٰكَ ٱلْكَوْثَرَ ﴾ ﴿ فَصَلِّ لِرَبِّكَ وَٱنْحَرْ ﴾ ﴿ إِنَّ شَانِئَكَ هُوَ ٱلْأَبْتَرُ ﴾ (الكوثر)'),
(7, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ قُلْ يَـٰٓأَيُّهَا ٱلْكَـٰفِرُونَ ﴾ ﴿ لَآ أَعْبُدُ مَا تَعْبُدُونَ ﴾ ﴿ وَلَآ أَنتُمْ عَـٰبِدُونَ مَآ أَعْبُدُ ﴾ ﴿ وَلَآ أَنَا۠ عَابِدٌۭ مَّا عَبَدتُّمْ ﴾ ﴿ وَلَآ أَنتُمْ عَـٰبِدُونَ مَآ أَعْبُدُ ﴾ ﴿ لَكُمْ دِينُكُمْ وَلِىَ دِينِ ﴾ (الكافرون)'),
(8, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ الٓمٓ ﴾ ﴿ ذَٰلِكَ ٱلْكِتَـٰبُ لَا رَيْبَ ۛ فِيهِ ۛ هُدًۭى لِّلْمُتَّقِينَ ﴾ ﴿ ٱلَّذِينَ يُؤْمِنُونَ بِٱلْغَيْبِ وَيُقِيمُونَ ٱلصَّلَوٰةَ وَمِمَّا رَزَقْنَـٰهُمْ يُنفِقُونَ ﴾ ﴿ وَٱلَّذِينَ يُؤْمِنُونَ بِمَآ أُنزِلَ إِلَيْكَ وَمَآ أُنزِلَ مِن قَبْلِكَ وَبِٱلْـَٔاخِرَةِ هُمْ يُوقِنُونَ ﴾ ﴿ أُو۟لَـٰٓئِكَ عَلَىٰ هُدًۭى مِّن رَّبِّهِمْ ۖ وَأُو۟لَـٰٓئِكَ هُمُ ٱلْمُفْلِحُونَ ﴾ ﴿ إِنَّ ٱلَّذِينَ كَفَرُواْ سَوَآءٌ عَلَيْهِمْ ءَأَنذَرْتَهُمْ أَمْ لَمْ تُنذِرْهُمْ لَا يُؤْمِنُونَ ﴾ ﴿ خَتَمَ ٱللَّهُ عَلَىٰ قُلُوبِهِمْ وَعَلَىٰ سَمْعِهِمْ ۖ وَعَلَىٰٓ أَبْصَـٰرِهِمْ غِشَـٰوَةٌۭ ۖ وَلَهُمْ عَذَابٌ عَظِيمٌ ﴾ ﴿ وَمِنَ ٱلنَّاسِ مَن يَقُولُ ءَامَنَّا بِٱللَّهِ وَبِٱلْيَوْمِ ٱلْـَٔاخِرِ وَمَا هُم بِمُؤْمِنِينَ ﴾ (البقرة: 1-8)'),
(9, '﴿ يُخَـٰدِعُونَ ٱللَّهَ وَٱلَّذِينَ ءَامَنُواْ وَمَا يَخْدَعُونَ إِلَّآ أَنفُسَهُمْ وَمَا يَشْعُرُونَ ﴾ ﴿ فِى قُلُوبِهِم مَّرَضٌۭ فَزَادَهُمُ ٱللَّهُ مَرَضًۭا ۖ وَلَهُمْ عَذَابٌ أَلِيمٌۢ بِمَا كَانُواْ يَكْذِبُونَ ﴾ ﴿ وَإِذَا قِيلَ لَهُمْ لَا تُفْسِدُواْ فِى ٱلْأَرْضِ قَالُوٓاْ إِنَّمَا نَحْنُ مُصْلِحُونَ ﴾ ﴿ أَلَآ إِنَّهُمْ هُمُ ٱلْمُفْسِدُونَ وَلَـٰكِن لَّا يَشْعُرُونَ ﴾ ﴿ وَإِذَا قِيلَ لَهُمْ ءَامِنُواْ كَمَآ ءَامَنَ ٱلنَّاسُ قَالُوٓاْ أَنُؤْمِنُ كَمَآ ءَامَنَ ٱلسُّفَهَآءُ ۗ أَلَآ إِنَّهُمْ هُمُ ٱلسُّفَهَآءُ وَلَـٰكِن لَّا يَعْلَمُونَ ﴾ ﴿ وَإِذَا لَقُواْ ٱلَّذِينَ ءَامَنُواْ قَالُوٓاْ ءَامَنَّا وَإِذَا خَلَوْاْ إِلَىٰ شَيَـٰطِينِهِمْ قَالُوٓاْ إِنَّا مَعَكُمْ إِنَّمَا نَحْنُ مُسْتَهْزِءُونَ ﴾ ﴿ ٱللَّهُ يَسْتَهْزِئُ بِهِمْ وَيَمُدُّهُمْ فِى طُغْيَـٰنِهِمْ يَعْمَهُونَ ﴾ ﴿ أُو۟لَـٰٓئِكَ ٱلَّذِينَ ٱشْتَرَوُاْ ٱلضَّلَـٰلَةَ بِٱلْهُدَىٰ فَمَا رَبِحَت تِّجَـٰرَتُهُمْ وَمَا كَانُواْ مُهْتَدِينَ ﴾ (البقرة: 9-16)'),
(10, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ طسٓٓ ۚ تِلْكَ ءَايَـٰتُ ٱلْقُرْءَانِ وَكِتَابٍۢ مُّبِينٍۢ ﴾ ﴿ هُدًۭى وَبُشْرَىٰ لِلْمُؤْمِنِينَ ﴾ ﴿ ٱلَّذِينَ يُقِيمُونَ ٱلصَّلَوٰةَ وَيُؤْتُونَ ٱلزَّكَوٰةَ وَهُم بِٱلْـَٔاخِرَةِ هُمْ يُوقِنُونَ ﴾ ﴿ إِنَّ ٱلَّذِينَ لَا يُؤْمِنُونَ بِٱلْـَٔاخِرَةِ زَيَّنَّا لَهُمْ أَعْمَـٰلَهُمْ فَهُمْ يَعْمَهُونَ ﴾ ﴿ أُو۟لَـٰٓئِكَ ٱلَّذِينَ لَهُمْ سُوٓءُ ٱلْعَذَابِ وَهُمْ فِى ٱلْـَٔاخِرَةِ هُمُ ٱلْأَخْسَرُونَ ﴾ ﴿ وَإِنَّكَ لَتُلَقَّى ٱلْقُرْءَانَ مِن لَّدُنْ حَكِيمٍ عَلِيمٍ ﴾ ﴿ إِذْ قَالَ مُوسَىٰ لِأَهْلِهِۦٓ إِنِّىٓ ءَانَسْتُ نَارًۭا سَـَٔاتِيكُم مِّنْهَا بِخَبَرٍ أَوْ ءَاتِيكُم بِشِهَابٍۢ قَبَسٍۢ لَّعَلَّكُمْ تَصْطَلُونَ ﴾ ﴿ فَلَمَّا جَآءَهَا نُودِىَ أَنۢ بُورِكَ مَن فِى ٱلنَّارِ وَمَنْ حَوْلَهَا وَسُبْحَـٰنَ ٱللَّهِ رَبِّ ٱلْعَـٰلَمِينَ ﴾ ﴿ يَـٰمُوسَىٰٓ إِنَّهُۥٓ أَنَا ٱللَّهُ ٱلْعَزِيزُ ٱلْحَكِيمُ ﴾ ﴿ وَأَلْقِ عَصَاكَ ۚ فَلَمَّا رَءَاهَا تَهْتَزُّ كَأَنَّهَا جَآنٌّۭ وَلَّىٰ مُدْبِرًۭا وَلَمْ يُعَقِّبْ ۚ يَـٰمُوسَىٰ لَا تَخَفْ إِنِّى لَا يَخَافُ لَدَىَّ ٱلْمُرْسَلُونَ ﴾ ﴿ إِلَّا مَن ظَلَمَ ثُمَّ بَدَّلَ حُسْنًۭا بَعْدَ سُوٓءٍۢ فَإِنِّى غَفُورٌۭ رَّحِيمٌۭ ﴾ (النمل: 1-11)');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `topic`) VALUES
(113, 34, 'الأدعية والأذكار'),
(114, 34, 'الورد اليومي من القرآن'),
(115, 35, 'الأدعية والأذكار'),
(116, 35, 'الورد اليومي من القرآن');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `subscribed_at`) VALUES
(34, 'youssefelsabbahy12@gmail.com', '2024-06-29 11:51:39'),
(35, 'tasneemahmed2112005@gmail.com', '2024-06-29 11:52:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `azkar`
--
ALTER TABLE `azkar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_verses`
--
ALTER TABLE `daily_verses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podcast_episodes`
--
ALTER TABLE `podcast_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `podcast_id` (`podcast_id`);

--
-- Indexes for table `quran_verses`
--
ALTER TABLE `quran_verses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `azkar`
--
ALTER TABLE `azkar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `daily_verses`
--
ALTER TABLE `daily_verses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `podcast_episodes`
--
ALTER TABLE `podcast_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `quran_verses`
--
ALTER TABLE `quran_verses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `podcast_episodes`
--
ALTER TABLE `podcast_episodes`
  ADD CONSTRAINT `podcast_episodes_ibfk_1` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
