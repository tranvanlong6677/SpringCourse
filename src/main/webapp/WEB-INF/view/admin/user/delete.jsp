<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Delete user with ID = ${id}</title>
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
        <h1>Delete user with ID = ${id}</h1>
      </div>
      <hr />
      <div class="alert alert-danger" role="alert">
        Delete user with ID = ${id}
      </div>
      <form class="" method="POST" action="/admin/user/delete/${id}">
        <a href="/admin/user" class="btn btn-primary"> Back </a>
        <button class="btn btn-danger" type="submit">Confirm</button>
      </form>
    </div>
  </body>
</html>
