<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>board_main</title>
<style>
      div.row {
        width: 100%;
        display: flex;
        border: 1px solid #003458;
      }
      div.left {
        width: 30%;
        float: left;
        box-sizing: border-box;
        background: #8977ad;
      }
      div.right {
        width: 70%;
        float: right;
        box-sizing: border-box;
        background: #ece6cc;
      }
    </style>
</head>
<body>
   
   <div class="row">
   <div class="left">
   </div>
   <div class="right">
      <table >
         <h1>게시판</h1>
            <thead>
               <tr>
                  <th>No.</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성시간</th>
                  <th>조회수</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="vo" items="${list }"> 
               <tr>
                  <td>${vo.num}</td>
                  <td>${vo.title}</td>
                  <td>${vo.writer}</td>
                  <td>${vo.regdate}</td>
                  <td>${vo.hit}</td>
               </tr>
               </c:forEach>
            </tbody>
            <tbody>
               <!-- 작성글 검색 및 글작성하기 메뉴 -->
               <tr>
                  <td colspan="5" align="right">
                     <form action="" class="form-inline">
                        <div class="form-group">
                           <input type="text" name="search" placeholder="제목검색" class="">
                           <input type="submit" value="검색" class="">
                           <input type="button" value="글 작성" class="" onclick="">
                        </div>
                     </form>
                  </td>
               </tr>
            </tbody>
      </table>
   </div>
   </div>
   
   
   
   
</body>
</html>