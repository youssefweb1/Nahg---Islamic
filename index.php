<?php
session_start();

$logfile = 'logs/access.log';

if ($handle = fopen($logfile, 'a'))  {
    $timestamp = date("Y-m-d H:i:s");
    fwrite($handle, "$timestamp - زيارة جديدة\n");
    fclose($handle);
} else {
    echo "لم يتمكن من فتح الملف للكتابة.";
}

include 'inc/header.php';

?>

<!-- main -->
<main>

    <div class="container-fluid px-4">
        <?php if (isset($_SESSION['error'])): ?>
        <div id="error-alert" class="alert alert-danger" role="alert">
            <?php echo $_SESSION['error']; ?>
        </div>
        <script>
            // حذف رسالة الخطأ بعد دقيقتين (2000 مللي ثانية)
            setTimeout(function() {
                var errorAlert = document.getElementById('error-alert');
                if (errorAlert) {
                    errorAlert.remove();
                }
            }, 2000);
        </script>
        <?php unset($_SESSION['error']);?>
        <?php endif;?>

        <?php if (isset($_SESSION['success'])): ?>
        <div id="success-alert" class="alert alert-success" role="alert">
            <?php echo $_SESSION['success']; ?>
        </div>
        <script>
            // حذف رسالة النجاح بعد دقيقتين (120000 مللي ثانية)
            setTimeout(function() {
                var successAlert = document.getElementById('success-alert');
                if (successAlert) {
                    successAlert.remove();
                }
            }, 2000);
        </script>
        <?php unset($_SESSION['success']);?>
        <?php endif;?>
    </div>

    <!-- sec1 -->
    <section>

        <div
            class="container-fluid  px-4 d-flex flex-column-reverse flex-md-row align-items-center justify-content-between">

            <div class="d-flex flex-column mt-10 gap-5 ">
                <h2>
                تعلم أمور دينك لضمان سعادة الآخرة
                    <br>
                    <br>

                    الاستفادة من العلماء الذين ينشرون تعاليم النبي وأصحابه
                </h2>

                <div class="InputContainer">
                    <input id="inputElement" type="text" name="text" class="input" id="input"
                        placeholder="أدخل اسم الموضوع او الفيديو">

                    <div class="d-flex align-content-center justify-content-center">
                        <label for="input" class="labelforsearch">
                            <button id="sendValue" class="hidd">
                                <svg type="submit" viewBox="0 0 512 512" class="searchIcon">
                                    <path
                                        d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z">
                                    </path>
                                </svg>
                            </button>
                        </label>
                        <div class="border"></div>
                        <button class="micButton" id="startRecording">
                            <svg viewBox="0 0 384 512" class="micIcon">
                                <path
                                    d="M192 0C139 0 96 43 96 96V256c0 53 43 96 96 96s96-43 96-96V96c0-53-43-96-96-96zM64 216c0-13.3-10.7-24-24-24s-24 10.7-24 24v40c0 89.1 66.2 162.7 152 174.4V464H120c-13.3 0-24 10.7-24 24s10.7 24 24 24h72 72c13.3 0 24-10.7 24-24s-10.7-24-24-24H216V430.4c85.8-11.7 152-85.3 152-174.4V216c0-13.3-10.7-24-24-24s-24 10.7-24 24v40c0 70.7-57.3 128-128 128s-128-57.3-128-128V216z">
                                </path>
                            </svg>
                        </button>
                        <button class="stopicon" id="stopRecording">
                            <i class="fa-regular fa-circle-stop"></i>
                        </button>

                    </div>

                </div>

            </div>

            <div class=" mt-10">
                <img class="img-1sec" src="assets/images/Hero Carousel Desgn.svg" alt="" srcset="">
            </div>

        </div>

    </section>

    <!-- sec 2 -->
    <section>
        <div class="container-fluid mt-5  px-4 d-flex align-items-start " id="box-main-sub">

            <p class="under-me">اختر الموضوع الذي تريد تصفحه </p>

        </div>

        <div class="box-main mt-5 px-4">
            <div class="box-sub" id="fekqh">
                <a href="dist/fekqh.php">
                    <img src="assets/images/feka.png" width="50" height="50" alt="">
                    <p>قسم الفقه</p>
                </a>
            </div>
            <div class="box-sub" id="aqeda">
                <a href="dist/aqeda.php">
                    <img src="assets/images/Akeda.png" width="50" height="50" alt="">
                    <p>قسم العقيدة</p>
                </a>
            </div>
            <div class="box-sub" id="adab">
                <a href="dist/adab.php">
                    <img src="assets/images/adab.png" width="50" height="50" alt="">
                    <p>قسم الأداب</p>
                </a>
            </div>
            <div class="box-sub" id="hadith">
                <a href="dist/hadith.php">
                    <img src="assets/images/hadeeth.png" width="50" height="50" alt="">
                    <p>قسم الحديث</p>
                </a>
            </div>
            <div class="box-sub" id="adea">
                <a href="dist/adea.php">
                    <img src="assets/images/adab.png" width="50" height="50" alt="">
                    <p>قسم الأذكار</p>
                </a>
            </div>
            <div class="box-sub" id="monawat">
                <a href="dist/monawat.php">
                    <img src="assets/images/hadeeth.png" width="50" height="50" alt="">
                    <p>قسم المنوعات</p>
                </a>
            </div>
            <div class="box-sub" id="akhlaq">
                <a href="dist/akhlaq.php">
                    <img src="assets/images/akhlaq.png" width="50" height="50" alt="">
                    <p>قسم الأخلاق</p>
                </a>
            </div>
            <div class="box-sub" id="sera">
                <a href="dist/sera.php">
                    <img src="assets/images/sera.png" width="50" height="50" alt="">
                    <p>قسم السيرة</p>
                </a>
            </div>
        </div>

    </section>

    <!-- sec 3 -->
    <section>
        <div class="container-fluid aqeda  px-4 d-flex flex-column">
            <div class="container-fluid mt-5  d-flex align-items-center justify-content-between">
                <p class="under-me">اكتسب المعرفة العقائدية من خلال القراءة.</p>
                <div class="d-flex align-content-center justify-content-between gap-3 mt-md-4">
                    <div class="btn-container">
                        <a href="#" class="btn-content btn-prev">
                            <span class="icon-arrow">
                                <i class="fa-solid fa-arrow-right text-light"></i>
                            </span>
                        </a>
                    </div>
                    <div class="btn-container">
                        <a href="#" class="btn-content btn-next">
                            <span class="icon-arrow">
                                <i class="fa-solid fa-arrow-left text-light"></i>
                            </span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="box-main-aqeda mt-4 ">
                <div id="books" class="d-flex  gap-3"></div>
            </div>
        </div>
    </section>

    <!-- sec 4 -->
    <section>
        <div class="container-fluid quran  px-4 d-flex flex-column">
            <div class="container-fluid mt-5 mb-5 d-flex align-content-start">
                <p class="under-me"> ما نقدمه للإستمتاع بتلاوة القرآن الكريم </p>

            </div>

            <div
                class="d-flex flex-column-reverse gap-4 flex-sm-column-reverse flex-lg-row align-items-center justify-content-between">
                <div class="right d-flex flex-column align-content-center gap-3 ">
                    <div class="box-quran box1 d-flex align-items-center justify-content-center ">
                        <span> الإستماع للقرآن بأكثر من صوت لأكثر من شيخ </span>
                    </div>

                    <div class="box-quran box2 d-flex align-items-center justify-content-center ">
                        <span>يمكنك تعديل حجم الخط حتي يتناسب معك</span>
                    </div>

                    <div class="box-quran box3 d-flex align-items-center justify-content-center ">
                        <span> ترتيب آيات القران وعرضها بالتشكيل والخط المناسب </span>
                    </div>

                    <div class=" d-flex align-items-center justify-content-center ">
                        <a class="btn-me2 mt-3 text-decoration-none" href="pages/quran.php">
                            الاستماع إلي القرآن
                        </a>
                    </div>

                </div>

                <div class="left">
                    <img src="assets/images/listen.png" alt="" srcset="">
                </div>
            </div>
        </div>
    </section>

    <!-- sec 5 -->
    <section>
        <div class="container-fluid subscribe px-4 d-flex flex-column">
            <div class="container-fluid mt-5 d-flex flex-column align-items-start">
                <p>
                اشترك معنا لتستلم وردك اليومي من القرآن والأذكار عبر البريد الإلكتروني.                </p>
            </div>

            <form class="mt-5" action="subscribe/process_subscription.php" method="post">
                <div class="d-flex flex-wrap gap-4 mt-md-4">
                    <label class="main-check checkedinput">
                        <input checked="checked" type="checkbox"  name="topics[]" value="الأدعية والأذكار">
                        <div class="checkmark"></div>
                        <label for="">الأدعية والأذكار</label>
                    </label>

                    <label class="main-check checkedinput">
                        <input checked="checked" type="checkbox"  name="topics[]"
                            value="الورد اليومي من القرآن">
                        <div class="checkmark"></div>
                        <label for="">الورد القرآني</label>
                    </label>
                </div>

                <div class="input-group mt-5">
                    <input required type="email" class="input2" id="Email" name="email"
                        placeholder="أدخل الايميل الخاص بك" autocomplete="off">
                    <input class="button--submit" value="اشترك" type="submit">
                </div>
            </form>
        </div>
    </section>

    <!-- sec 6 -->
    <section>
        <div class="container-fluid nasiha  px-4 d-flex flex-column mb-5">
            <div class="container-fluid mt-5  d-flex flex-column gap-4 align-items-center justify-content-center">
                <p class="text- fs-3">اعمل بجد للاخرة</p>

                <span class="text-center text-sec width-edit fs-5 ">
                منحنا الله سبحانه وتعالى نعمة الوقت ليكون وسيلة لتحقيق أهداف سامية في حياتنا. استثمار الوقت في الأعمال الصالحة والاستعداد للآخرة هو من أهم القرارات التي يمكننا اتخاذها.
                </span>

                <a class="btn-me2  mt-3 text-center  text-decoration-none" href="http://">
                    ابدأ الآن
                </a>
            </div>
        </div>
    </section>

    <!-- Scroll Up -->
    <div class="scrollBtn active" style="background-color: #425aa1;" href="#">
        <i class="fas fa-angle-double-up" aria-hidden="true"></i>
    </div>

</main>

<?php include 'inc/footer.php';?>

<!-- js files -->
<script src="assets/js/record.js"></script>
<script src="assets/js/buttons.js"></script>
<script src="assets/js/main.js"></script>

<!-- apis -->
<script src="assets/js/api_book.js"></script>

</body>

</html>