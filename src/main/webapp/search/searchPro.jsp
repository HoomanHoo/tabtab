<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="search.SearchDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}script_search.js"></script>


<h2> ${page_search} </h2>

<c:if test="${result eq -1 }">
   	<script type="text/javascript">
   	     //<!--
   	     erroralert( searcherror );   
   	     -->
   	</script>
</c:if>
<c:if test="${result eq 0 }">   	
    <script type="text/javascript">
    //<!--
    erroralert( keyworderror ); 
    -->
    </script>
</c:if>        
<c:if test="${result eq 1}">
    ${sessionScope.keyword = requestScope.keyword}
    <c:redirect url="searchsearch.net"/>
</c:if>
<c:if test="${resultCheck eq 0}">
   	<script type="text/javascript">
   	    //<!--
   	    erroralert( medi_nameerror );
   	    -->
   	</script>
</c:if>
<c:if test="${resultCheck eq 0}">
   	<script type="text/javascript">
   	    //<!--
   	    erroralert( chief_ingreerror );
   	    -->
   	</script>
</c:if>
