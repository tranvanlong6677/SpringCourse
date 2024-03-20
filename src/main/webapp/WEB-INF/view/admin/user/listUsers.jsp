<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="container mt-5">
      <div class="header-container d-flex justify-content-between">
        <h1>Table users</h1>

        <a
          href="/admin/user/create"
          style="color: #fff; text-decoration: underline; display: block"
        >
          <button class="btn btn-primary" style="padding: 12px">
            Create new user
          </button>
        </a>
      </div>

      <table class="table">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Fullname</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="user" items="${listUsers}">
            <tr>
              <td>${user.id}</td>
              <td>${user.email}</td>
              <td style="text-align: center">${user.fullName}</td>
              <td>
                <a href="user/detail/${user.id}" class="btn btn-success"
                  >View</a
                >
                <a href="user/update/${user.id}" class="btn btn-warning"
                  >Update</a
                >
                <button class="btn btn-danger">Delete</button>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
