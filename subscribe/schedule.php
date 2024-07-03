<?php
require_once 'vendor/autoload.php';

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

include ("../config/db.php");
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

// Function to send daily email with Quran verse and Zikr
function sendDailyEmail($conn, $email)
{
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
    } catch (Exception $e) {
        // Handle the error appropriately
    }
}

// Fetch all emails from the database
$result = $conn->query("SELECT email FROM users");
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        sendDailyEmail($conn, $row['email']);
    }
}

$conn->close();
