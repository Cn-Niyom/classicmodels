<%--
  Created by IntelliJ IDEA.
  User: chalu
  Date: 11/7/2022
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="th">
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row bg-primary">
        <h2>Classic Model Offices ::</h2>
    </div>
    <div class="row">
        <c:forEach items="${offices}" var="office">
            <div class="col-2 border border-secondary p-2 m-2 ${office.id == selectedOffice.id ? 'bg-warning' : ''}">
                <div>
                    <a href="office-list?officeCode=${office.id}">
                            ${office.city}</a>, ${office.country}
                </div>
                <div> ${office.phone}</div>
            </div>
        </c:forEach>
    </div>
    <br>
    <div class="row bg-light">
        <strong>Employees ::</strong>
    </div>
    <div class="row">
        <c:forEach items="${selectedOffice.employeeList}" var="employee">
            <div class="col-2 pl-2 m-2 border border-secondary rounded-pill">
                <div> ${employee.firstName}
                        ${employee.lastName} - ${employee.jobTitle}
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>

</html>
