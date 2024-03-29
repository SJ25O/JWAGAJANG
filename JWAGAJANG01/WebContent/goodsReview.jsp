<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<tr>
	<td class="review_name">${review.user_id}</td>
	<td class="review_rate">${review.review_rate} / 5</td>
	<td class="review_content">${review.review_content}</td>
	<td class="review_date"><fmt:formatDate value="${review.review_regdate}" pattern="yyyy-MM-dd"/></td>
	<c:if test="${sessionScope.id==review.user_id}">
		<td class="review_del">
			<button id="delete" name="${review.review_code}" onclick="del(this)">x</button>
		    </td>
		</c:if>
</tr>
    