<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<h2>All Employees</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

<%--создаем ссылку на метод updateEmployee в MyController с @RequestMapping("/updateInfo")--%>
        <c:url var="updateButton" value="/updateInfo">
<%--внутри этой ссылки, этого url мы добавим информацию об id работника--%>
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'"/>

                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'"/>
            </td>


        </tr>
    </c:forEach>
</table>
<br>

<input type="button" value="Add"
    onclick="window.location.href = 'addNewEmployee' "/>

</body>
</html>