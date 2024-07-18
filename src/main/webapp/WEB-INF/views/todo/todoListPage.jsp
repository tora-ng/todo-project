<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html
        lang="ko"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="resources/assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Tables - Basic Tables | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content=""/>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/resources/assets/img/favicon/favicon.ico"/>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/resources/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/resources/assets/js/config.js"></script>
    <script src="../../../resources/libs/fullcalendar/index.global.min.js"></script>
</head>

<style>
    .card {
        width: 450px;
        padding: 10px;
        height: 650px;
    }

    .todo-input {
        margin-left: 5px;
        border-width: 0 0 1px;
        width: 350px;
    }

    input:focus {
        outline: none;
    }

    .btn-class {
        border: 0;
        outline: 0;
        background: transparent;
    }

</style>

<body>




            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y" >
                    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Tables /</span> Basic Tables</h4>
                    <%-- Calandar 부분 --%>
                    <span>
                    <div id="calendar" style="width: 800px; float: left"></div>
                    <div style="display: flex">
                        <div class="card">
                                <h5 class="card-header">✅ Todo List
                                    <button class="btn-class" id="plusBtn" style="width: 50px">➕</button></h5>
                            <div class="table-responsive text-nowrap" style="padding: 1.5rem 1.5rem">
                                <div>
                                    <label>
                                        <input type="checkbox">
                                        <input class="todo-input" type="text">
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox">
                                        <input class="todo-input" type="text">
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox">
                                        <input class="todo-input" type="text">
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox">
                                        <input class="todo-input" type="text">
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox">
                                        <input class="todo-input" type="text">
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                        </span>
                </div>

                <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>
</div>


<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="/resources/assets/vendor/libs/jquery/jquery.js"></script>
<script src="/resources/assets/vendor/libs/popper/popper.js"></script>
<script src="/resources/assets/vendor/js/bootstrap.js"></script>
<script src="/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="/resources/assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="/resources/assets/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth'
        });
        calendar.render();
    });

    const plusBtn = document.getElementById('plusBtn');
    plusBtn.addEventListener('click', e => {
        // 새로운 div 요소 생성
        const newDiv = document.createElement('div');

        // 새로운 label 요소 생성
        var newLabel = document.createElement('label');

        // 새로운 checkbox input 생성
        var newCheckbox = document.createElement('input');
        newCheckbox.type = 'checkbox';

        // 새로운 text input 생성
        var newTextInput = document.createElement('input');
        newTextInput.type = 'text';
        newTextInput.className = 'todo-input';

        // label 안에 checkbox와 text input 추가
        newLabel.appendChild(newCheckbox);
        newLabel.appendChild(newTextInput);

        // label을 div에 추가
        newDiv.appendChild(newLabel);

        // 새로운 div를 table-responsive div의 끝에 추가
        document.querySelector('.table-responsive').appendChild(newDiv);
    })

</script>
</html>
