<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style id="compiled-css" type="text/css">
    tr, h2 {<!--  w   w  w .   d e  m  o   2s    .  co    m-->
    text-align:center;
    }
    table {
      background-color: #FFFFCC;
    }
    h2 {
      background-color: #FFCCFF;
    }
    div {
      border : 1px solid lightgray;
    }

  </style>
</head>
<!doctype html>
<body>

<h2> All Sections</h2>
<br>

<table>
  <tr>
    <th>Name</th>
  </tr>

  <c:forEach var="sect" items="${allSections}">

    <c:url var="showEmployeesButton" value="/showEmployeesById">
      <c:param name="sectId" value="${sect.id}"/>
    </c:url>

    <tr>
      <td>${sect.nameS}</td>

      <td>
        <input type="button" value="Employees"
               onClick="window.location.href = '${showEmployeesButton}'">
      </td>
    </tr>
  </c:forEach>
</table>
<br><br>
<input type="button" value="Add"
       onclick="window.location.href= 'addNewSection'"/>

</body>
</html>