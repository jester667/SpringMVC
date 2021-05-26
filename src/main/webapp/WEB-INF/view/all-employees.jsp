<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h3>All Employees</h3>
<div>
    <table border="1px">
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <input type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <input type="button" value="add" onclick="window.location.href = 'addEmployee'"/>
    </div>
</div>
</body>
</html>