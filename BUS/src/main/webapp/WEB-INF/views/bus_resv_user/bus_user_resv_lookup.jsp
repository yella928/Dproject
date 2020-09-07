<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file="../top.jsp"%>

<div align="center">
	<form action="bus_resv_user_dispatch.do">
	<div style="border:1px solid gray; width:50%; float:left;">
		
		<table	border="1">
			<tr align="left">
				<td colspan="4" width="400">
					<input type="radio" name="mode" value="oneway" checked>☞편도
				</td>
			</tr>
			<tr align="left">
				<td colspan="2">
					
					<a href="bus_resv_user_arrival.do">
						출발지
					</a>
				</td>
				<td colspan="2">
					
					<a href="bus_resv_user_departure.do">
						도착지
					</a>
				</td>
			</tr>
			<tr>
			
				<td colspan="2"><c:if test="${not empty arr_dto.station_name}"><input type="hidden" name="arrival" value="${arrnoDTO.station_no}">${arr_dto.station_name}</c:if></td>
				<td colspan="2"><c:if test="${not empty dep_dto.station_name}"><input type="hidden" name="departure" value="${depnoDTO.station_no}">${dep_dto.station_name}</c:if></td>
			</tr>
			<tr>
				<td colspan="4" width="50%">편도날짜:<input id="onedate"type="text" name="one_date"></td>
			</tr>
			<tr align="left">
				<td>등급</td>
				<td><input type="radio" name="grade" value="전체" >전체</td>
				<td><input type="radio" name="grade" value="우등">우등</td>
				<td><input type="radio" name="grade" value="일반">일반</td>
			</tr>
		</table>
	</div>
	<div style="border:1px solid gray; width:50%; float:left;">
			<table	border="1">
			<tr align="left">
				<td colspan="4" width="400">
					<input type="radio" name="mode" value="twoway">☞☜왕복
				</td>
			</tr>
			<tr>
				<td colspan="2" width="50%">가는날</td>
				<td colspan="2" width="50%">오는날</td>
			</tr>
			<tr>
				<td colspan="2" width="50%"><input type="text" id="arr_date" name="arr_date"></td>
				<td colspan="2" width="50%"><input type="text" id="dep_date" name="dep_date"></td>
			</tr>
			<tr align="right">
				<td colspan="4">
					<input type="submit" value="조회 하기" >
				</td>
			</tr>
		</table>
		
	</div>
</form>
</div>


<%@ include file="../bottom.jsp"%>