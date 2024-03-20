<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User detail ${id}</title>
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
        <h1>Detail user with ID = ${id}</h1>
      </div>
      <hr />
      <div class="card" style="width: 70%; margin: 0 auto">
        <div class="card-header">User Information</div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">ID : ${userDataDetail.id}</li>
          <li class="list-group-item">Email : ${userDataDetail.email}</li>
          <li class="list-group-item">Fullname : ${userDataDetail.fullName}</li>
          <li class="list-group-item">Address : ${userDataDetail.address}</li>
        </ul>
      </div>

      <a href="/admin/user" class="btn btn-primary"> Back </a>
    </div>
  </body>
</html>
