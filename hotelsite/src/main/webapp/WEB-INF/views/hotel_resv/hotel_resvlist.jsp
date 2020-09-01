<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
  $.datepicker.setDefaults({
    dateFormat: 'yy.mm.dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
  });

  $(function() {
    $("#start_resv_date, #end_resv_date").datepicker();
  });

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty sedto}">
			<input type="button" value="로그인"
				onClick="location.href='memberlogin'" />
		</c:when>
		<c:otherwise>
			<input type="button" value="로그아웃"
				onClick="location.href = 'memberlogout'" />
		</c:otherwise>
	</c:choose>
	<div>
	<div algin="left">
		<form action="hotel_resvlist">
			<table border="1">
				<tr>
					<th><label>지역</label></th>
					<td><select name="address">
							<option value="%서울%" selected>서울</option>
							<option value="%경기%">경기</option>
							<option value="%대전%">대전</option>
							<option value="%대구%">대구</option>
							<option value="%부산%">부산</option>
							<option value="%울산%">울산</option>
							<option value="%강원%">강원</option>
							<option value="%인천%">인천</option>
					</select></td>
				</tr>
				<tr>
					<th><label>체크 인</label></th>
					<td><input type="text" name="start_resv_date"
						id="start_resv_date"></td>
					<th><label>체크 아웃</label></th>
					<td><input type="text" name="end_resv_date" id="end_resv_date">
					</td>
				</tr>
				<tr>
					<th><label>객실</label></th>
					<td><select name="roomsu">
							<option value="1" selected>1개</option>
							<option value="2">2개</option>
							<option value="3">3개</option>
							<option value="4">4개</option>
							<option value="5">5개</option>
							<option value="6">6개</option>
							<option value="7">7개</option>
							<option value="8">8개</option>
							<option value="9">9개</option>
							<option value="10">10개</option>
					</select></td>
					<th><label>성인</label></th>
					<td><select name="adult">
							<option value="1">1명</option>
							<option value="2" selected>2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
							<option value="9">9명</option>
							<option value="10">10명</option>
					</select></td>
					<th><label>아동</label></th>
					<td><select name="children">
							<option value="0" selected>0명</option>
							<option value="1">1명</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
							<option value="9">9명</option>
					</select></td>
				<tr>
					<th><label>&nbsp;</label></th>
					<td>
						<button type="submit">검색</button>
					</td>
				</tr>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<table border="1" width="800">
			<tr bgcolor="green">
				<th>사진</th>
				<th width="40%">호텔이름</th>
				<th>주소</th>
				<th>연락처</th>
				<th>성급</th>
				<th>파일</th>
			</tr>
			<c:if test="${empty hotelList}">
				<tr>
					<td colspan="7">등록된 게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${hotelList}">
				<tr>
					<td><img width="100px" height="70px"
						src="c:/hotelimg/${dto.filename}" /></td>
					<td><a href="hotel_resvcontent?hotel_no=${dto.hotel_no}">
							${dto.name} </a></td>
					<td>${dto.address}</td>
					<td>${dto.hp1}-${dto.hp2}-${dto.hp3}</td>
					<td>${dto.star}</td>
					<td><a href="hotel_resvcontent?hotel_no=${dto.hotel_no}">
							<input type="button" value="객실선택">
					</a></td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
</body>
</html>