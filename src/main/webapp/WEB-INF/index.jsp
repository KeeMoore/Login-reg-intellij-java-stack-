<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- c:out ; c:forEach etc. --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Formatting (dates) --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- form:form --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%-- for rendering errors on PUT routes --%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <title>Login-Reg</title>
</head>
<body>
<main class="container">
  <h1 class="display-1 text-center"> Welcome!</h1>
  <h2 class="display-7 mb-5 text-center">Login or Register for Our Site</h2>
  <div class="row">
    <div class="col">
      <h2 class="display-6 mb-3">Register</h2>
      <div class="card shadow mb-3">
        <div class="card-body">
          <form:form action="/register" method="post" modelAttribute="user">
            <div class="mb-3">
              <form:label class="form-label" path="firstName">First Name:</form:label>
              <form:input cssClass="form-control" path="firstName" />
              <span class="form-text text-warning">
                                    <form:errors path="firstName" />
                                </span>
            </div>
            <div class="mb-3">
              <form:label class="form-label" path="lastName">Last Name:</form:label>
              <form:input cssClass="form-control" path="lastName" />
              <span class="form-text text-warning">
                                    <form:errors path="lastName" />
                                </span>
            </div>
            <div class="mb-3">
              <form:label class="form-label" path="email">Email:</form:label>
              <form:input cssClass="form-control" path="email" />
              <span class="form-text text-warning">
                                    <form:errors path="email" />
                                </span>
            </div>
            <div class="mb-3">
              <form:label class="form-label" path="password">Password:</form:label>
              <form:input type="password" cssClass="form-control" path="password" />
              <span class="form-text text-warning">
                                    <form:errors path="password" />
                                </span>
            </div>
            <div class="mb-3">
              <form:label class="form-label" path="confirm">Confirm Password:</form:label>
              <form:input type="password" cssClass="form-control" path="confirm" />
              <span class="form-text text-warning">
                                    <form:errors path="confirm" />
                                </span>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
          </form:form>
        </div>
      </div>
    </div>
    <div class="col">
      <h2 class="display-6 mb-3">Login</h2>
      <div class="card shadow mb-3">
        <div class="card-body">
          <form:form action="/login" method="post" modelAttribute="loginUser">
            <div class="mb-3">
              <form:label class="form-label" path="loginEmail">Email:</form:label>
              <form:input cssClass="form-control" path="loginEmail" />
              <span class="form-text text-warning">
                                    <form:errors path="loginEmail" />
                                </span>
            </div>
            <div class="mb-3">
              <form:label class="form-label" path="loginPassword">Password:</form:label>
              <form:input type="password" cssClass="form-control" path="loginPassword" />
              <span class="form-text text-warning">
                                    <form:errors path="loginPassword" />
                                </span>
            </div>
            <button type="submit" class="btn btn-primary w-100">Login</button>
          </form:form>
        </div>
      </div>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>