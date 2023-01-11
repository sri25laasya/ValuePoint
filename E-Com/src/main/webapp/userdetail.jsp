<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t"%>
<!DOCTYPE html>
<html>
<head>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
    crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<table class="table table-bordered">
        <thead>
            <tr>
                
                <th>UserName</th>
                <th>Email</th>
                <th>Password</th>
                
            </tr>
        </thead>
        <tbody>
            `
            <t:forEach items="${​​​​​​userList}​​​​​​" var="user">
                <tr>
                    <td>${​​​​​​user.username}​​​​​​</td>
                    <td>${​​​​​​user.email}​​​​​​</td>
                    <td>${​​​​​​user.password}​​​​​​</td>
                    
                </tr>
            </t:forEach>
        </tbody>
    </table>


    <a href="http://localhost:8080/register" class="btn btn-success">UserRegister</a>
</body>
</html>



