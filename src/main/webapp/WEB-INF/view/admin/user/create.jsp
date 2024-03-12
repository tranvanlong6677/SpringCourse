<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
                </script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <form class="container my-5" method="POST" action="/admin/user/create" modelAttribute="newUser">
                    <div class="row">

                        <h1 class="mx-auto text-center">Create A User</h1>
                        <div
                            class="mx-auto d-flex justify-content-center align-items-center flex-column  col-12 col-md-6">
                            <div class="mb-3 col-12">
                                <label class="form-label">Email</label>
                                <input type="email" class="form-control" name="email">
                            </div>
                            <div class="mb-3 col-12">
                                <label class="form-label">Password</label>
                                <input type="password" class="form-control" name="password">
                            </div>

                            <div class="mb-3 col-12">
                                <label class="form-label">Phone number</label>
                                <input type="text" class="form-control" name="phone">
                            </div>
                            <div class="mb-3 col-12 ">
                                <label class="form-label">Fullname</label>
                                <input type="text" class="form-control" name="fullName">
                            </div>

                            <div class="mb-3 col-12">
                                <label class="form-label"> Address</label>
                                <input type="text" class="form-control" name="address">
                            </div>

                            <button type="submit" class="btn btn-primary col-4">Submit</button>
                        </div>
                    </div>



                </form>
            </body>

            </html>