<?php
require_once '../vendor/autoload.php';

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

include ("../config/db.php");


session_start();

// Function to get a random Quran verse
function getRandomQuranVerse($conn)
{
    $result = $conn->query("SELECT verse FROM quran_verses ORDER BY RAND() LIMIT 1");
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row['verse'];
    } else {
        return "No Quranic verses found in the database.";
    }
}

// Function to get a random Zikr
function getRandomZikr($conn)
{
    $result = $conn->query("SELECT zikr FROM azkar ORDER BY RAND() LIMIT 1");
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row['zikr'];
    } else {
        return "No Azkar found in the database.";
    }
}

// Function to load HTML template
function loadTemplate($templateFile, $vars = [])
{
    if (file_exists($templateFile)) {
        $templateContent = file_get_contents($templateFile);
        foreach ($vars as $key => $value) {
            $templateContent = str_replace('{{' . $key . '}}', $value, $templateContent);
        }
        return $templateContent;
    } else {
        return '';
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $topics = isset($_POST['topics']) ? $_POST['topics'] : [];

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $_SESSION['error'] = 'تنسيق الإيميل غير صالح';
        header("location: ../index.php");
        exit();
    }

    if (empty($topics)) {
        $_SESSION['error'] = 'يرجى اختيار موضوع واحد على الأقل';
        header("location: ../index.php");
        exit();
    }

    // Check if email already exists
    $stmt = $conn->prepare("SELECT id FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows > 0) {
        $_SESSION['error'] = 'الإيميل مشترك بالفعل';
        $stmt->close();
        header("location: ../index.php");
        exit();
    }
    $stmt->close();

    // Insert email into database
    $stmt = $conn->prepare("INSERT INTO users (email) VALUES (?)");
    if (!$stmt) {
        $_SESSION['error'] = 'خطأ في تحضير استعلام الإدخال: ' . $conn->error;
        header("location: ../index.php");
        exit();
    }
    $stmt->bind_param("s", $email);
    $stmt->execute();
    if ($stmt->error) {
        $_SESSION['error'] = 'خطأ في إدخال البريد الإلكتروني: ' . $stmt->error;
        header("location: ../index.php");
        exit();
    }
    $user_id = $stmt->insert_id;
    $stmt->close();

    // Insert topics into database for the user
    foreach ($topics as $topic) {
        $stmt = $conn->prepare("INSERT INTO topics (user_id, topic) VALUES (?, ?)");
        if (!$stmt) {
            $_SESSION['error'] = 'خطأ في تحضير استعلام الإدخال: ' . $conn->error;
            header("location: ../index.php");
            exit();
        }
        $stmt->bind_param("is", $user_id, $topic);
        $stmt->execute();
        if ($stmt->error) {
            $_SESSION['error'] = 'خطأ في إدخال المواضيع: ' . $stmt->error;
            header("location: ../index.php");
            exit();
        }
        $stmt->close();
    }

    // Send confirmation email
    try {
        $mail = new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'capital.crest.trading@gmail.com';
        $mail->Password = 'wteb gsuq stub mktp';
        $mail->setFrom('Nahg@Eslam.com', 'Youssef El-Sabbahi');
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;
        $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true,
            ),
        );
        $mail->CharSet = 'UTF-8';
        $mail->addAddress($email);
        $mail->isHTML(true);
        $mail->Subject = 'تأكيد الاشتراك';
        $mail->Body = 'تم تأكيد اشتراكك في المواضيع التالية: ' . implode(', ', $topics);
        $mail->send();
        $_SESSION['success'] = 'تم إرسال رسالة التأكيد بنجاح';
    } catch (Exception $e) {
        $_SESSION['error'] = "لم يتم إرسال رسالة التأكيد. خطأ البريد: {$mail->ErrorInfo}";
    }

    // Send daily email with Quran verse and Zikr
    try {
        $mail = new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'capital.crest.trading@gmail.com';
        $mail->Password = 'wteb gsuq stub mktp';
        $mail->setFrom('Nahg@Eslam.com', 'Youssef El-Sabbahi');
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;
        $mail->CharSet = 'UTF-8';
        $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true,
            ),
        );
        
        $mail->addAddress($email);
        $mail->isHTML(true);
        $mail->Subject = 'الورد اليومي من القرآن والأذكار';

        // Get random Quran verse and Zikr
        $quran_verse = getRandomQuranVerse($conn);
        $zikr = getRandomZikr($conn);

        // Load HTML template
        $htmlTemplate = file_get_contents('template.html');
        $htmlTemplate = str_replace('{QURAN_VERSE}', $quran_verse, $htmlTemplate);
        $htmlTemplate = str_replace('{ZIKR}', $zikr, $htmlTemplate);

        $mail->Body = $htmlTemplate;

        // Send daily verse and zikr email
        $mail->send();

        $_SESSION['success'] =  'تم إرسال رسالة التأكيد بنجاح';
    } catch (Exception $e) {
        $_SESSION['error'] = "لم يتم إرسال رسالة الورد والذكر اليومي. خطأ البريد: {$mail->ErrorInfo}";
    }

    header("location: ../index.php");
    exit();
}

$conn->close();
