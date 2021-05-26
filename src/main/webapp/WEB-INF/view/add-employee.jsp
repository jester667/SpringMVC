<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <body>
        <h3>Employee info</h3>
        <div>
            <form:form action="saveEmployee" modelAttribute="employee">
                <form:hidden path="id"/>
                <div>
                    <div>Name<form:input path="name"/></div>
                    <div><form:errors path="name"/></div>
                </div>
                <div>
                    <div>Surname <form:input path="surname"/></div>
                    <div><form:errors path="surname"/></div>
                </div>
                <div>
                    <div>Department <form:input path="department"/></div>
                    <div><form:errors path="department"/></div>
                </div>
                <div>
                    <div>Salary <form:input path="salary"/></div>
                    <div><form:errors path="salary"/></div>
                </div>



                <div><input type="submit" value="OK"></div>
            </form:form>
        </div>
    </body>
</html>