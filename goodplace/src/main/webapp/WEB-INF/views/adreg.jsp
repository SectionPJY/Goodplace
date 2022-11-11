<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자페이지</title>
<link
   href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
   rel="stylesheet" />
<link href="resources/css/admin.css" rel="stylesheet" />
<link href="resources/css/adregcon.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
   crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
   <%@include file = "adminheader.jsp" %>
   <%@include file = "sidemenu.jsp" %>

      <div id="layoutSidenav_content">
         <main>
         <div class="container-fluid px-4">
            <h1 class="mt-4">광고등록</h1>
            <hr>
            <div class="main-area">
               회사명 : <input type="text" style="margin-right: 100px; padding: 0;">
               대표명 : <input type="text"> <br>
               <hr>
               상품명 : <input type="text" style="margin-right: 70px"> 회사이메일
               : <input type="text"> <br>
               <hr>
               회사번호 : <input type="text" style="margin-right: 70px"> 회사사이트
               : <input type="text"> <br>
               <hr>

               <div class="area-but">
                  <div class="container" style="float: center">
                     <div class="image-upload" id="contract-upload">
                        <div class="fileContainer">
                           <p style="margin-right: 10px">계약서 파일 첨부 :</p>
                           <div class="fileInput">
                              <p>FILE NAME:</p>
                              <p id="fileName"></p>
                           </div>
                           <form method="post" enctype="multipart/form-data">
                              <div class="button">
                                 <label for="chooseFile2"> 찾기 </label>
                              </div>
                              <input type="file" id="chooseFile2" name="chooseFile2"
                                 accept="image/*" onchange="loadFile(this)">
                           </form>
                        </div>
                     </div>
                     <script src="resources/js/adreg.js"></script>
                     <div class="image-show" id="contract-show"></div>
                  </div>
               </div>
               
               <div class="area-but">
                  <div class="container" style="float: center">
                     <div class="image-upload" id="image-upload">
                        <div class="fileContainer">
                           <p style="margin-right: 10px">이미지 첨부:</p>
                           <div class="fileInput">
                              <p>FILE NAME:</p>
                              <p id="fileName2"></p>
                           </div>
                           <form method="post" enctype="multipart/form-data">
                              <div class="button">
                                 <label for="chooseFile"> 찾기 </label>
                              </div>
                              <input type="file" id="chooseFile" name="chooseFile"
                                 accept="image/*" onchange="loadFile2(this)">
                           </form>
                        </div>
                     </div>
                     <script src="resources/js/adreg.js"></script>
                     <div class="image-show" id="image-show"></div>
                  </div>
               </div>
            </div>
                    <div class="buttonContainer" style="float:right">등록하기</div>
         </main>
         <footer> </footer>
      </div>
   </div>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"></script>
   <script src="resources/js/scripts.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
      crossorigin="anonymous"></script>
   <script src="resources/assets/demo/chart-area-demo.js"></script>
   <script src="resources/assets/demo/chart-bar-demo.js"></script>

   <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
      crossorigin="anonymous"></script>
   <script src="resources/js/datatables-simple-demo.js"></script>
</body>
</html>