<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../top.jsp" %>
	<div align="center">
		<form action="ADhotel_update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="member_num" value="0">
		<input type="hidden" name="hotel_no" value="${dto.hotel_no}">
		<table width="100%">
			<tr>
				<td>호텔이름 : <input type="text" name="name" value="${dto.name}"></td>
			</tr>
			<tr>
				<td>호텔주소 : <input type="text" name="address" value="${dto.address}"></td>
			</tr>
			<tr>
				<td>전화번호 : <input type="text" name="hp1" value="${dto.hp1}"> - <input
					type="text" name="hp2" value="${dto.hp2}"> - <input type="text" name="hp3" value="${dto.hp3}">
				</td>
			</tr>
			<tr>
				<td>호텔 소개 : <input type="text" name="hotel_info" value="${dto.hotel_info}"></td>
			</tr>
			<tr>
				<td>호텔 성급 : <select name="star">
						<option value="2">2성급</option>
						<option value="3">3성급</option>
						<option value="4">4성급</option>
						<option value="5">5성급</option>
						<option value="6">6성급</option>
						<option value="7">7성급</option>
				</select></td>
			</tr>
			<tr>
				<td>호텔이미지 : <input type="file" name="filename" size="30" value="${dto.filename}"></td>
			</tr>
			<tr>
				<td><input type="submit" value="추가"></td>
			</tr>
		</table>
	</form>
	</div>

<%@ include file="../bottom.jsp" %> 