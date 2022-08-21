
<%
String message = (String) session.getAttribute("failedMsg");
if (message != null) {
%>
<div class="alert alert-success text-center" role="alert"><%=message %></div>

<%
session.removeAttribute("failedMsg");
}
%>