<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/include/header.jsp" %>
	<section>
		<div align="center">
			<form>
				<h2>게시판 글내용 보기</h2>
				<hr>
				<table border="1" width="500">
					<tr>
						<td width="20%">글번호</td>
						<td width="30%">${vo.num }</td>
						<td width="20%">조회수</td>
						<td width="30%">${vo.hit }</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>${vo.regdate }</td>
						<td>작성자</td>
						<td>${vo.writer }</td>
					</tr>
					<tr>
						<td>제목</td>
						<td colspan="3">${vo.title }</td>
						
					</tr>
					<tr>
						<td>글내용</td>
						<td colspan="3"><pre>${vo.content }</pre></td>
					</tr>
					<tr>
						<!-- 글 등록 메뉴 -->
						<td colspan="2" align="center">
							<input type="button" value="목록" onclick="location.href='list?pageNum=${param.pageNum}'">
							<input type="button" value="수정" onclick="location.href='modify?num=${vo.num}&pageNum=${param.pageNum}'">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
		  
<%@ include file="/resources/include/footer.jsp" %>