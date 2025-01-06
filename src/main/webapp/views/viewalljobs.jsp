<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.springprojects.JobHunter.model.JobPost" %>
<%@ page import="com.springprojects.JobHunter.repository.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">

    <style>
    .navbar {
        background-color: #F5EBE0;
        border-bottom: 2px solid #1D3557;
    }

    .navbar-brand {
        color: #1D3557;
    }

    .nav-link {
        color: #1D3557;
    }

    .nav-link:hover {
        color: #457B9D;
    }

    .page-title {
        color: #1D3557;
        font-size: 2rem;
        font-weight: 600;
        margin-bottom: 2rem;
    }

    .card {
        background-color: #F5EBE0;
        border: 2px solid #F5EBE0;
        box-shadow: 0 4px 8px rgba(29, 53, 87, 0.2);
        transition: transform 0.3s ease;
        height: 100%;
    }

    .card:hover {
        transform: translateY(-5px);
    }

    .card-body {
        padding: 1.5rem;
    }

    .card-title {
        color: #1D3557;
        font-size: 1.3rem;
        margin-bottom: 1.2rem;
        border-bottom: 1px solid #1D3557;
        padding-bottom: 0.5rem;
    }

    .card-text {
        color: #1D3557;
        margin-bottom: 1rem;
        font-size: 0.95rem;
    }

    .card-text strong {
        color: #1D3557;  /* Light blue for emphasis */
        font-weight: 600;
    }

    .card-text ul {
        padding-left: 1.2rem;
        margin-top: 0.5rem;
    }

    .card-text li {
        color: #1D3557;
        margin: 0.2rem 0;
        font-size: 0.9rem;
    }

    .card-footer {
        background-color: #152A45;  /* Slightly lighter dark blue */
        border-top: 1px solid #2A4A73;
    }

    body {
        background-color: #1D3557;
    }

    .container {
        padding-top: 2rem;
        padding-bottom: 2rem;
    }

    .row {
        margin-right: -15px;
        margin-left: -15px;
    }

    .col {
        padding: 15px;
    }

    h2.text-center {
        color: #1D3557;
        margin-bottom: 2rem;
    }
    </style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Job Portal Web App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://www.linkedin.com/in/prateek-choudavarpu/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<ab:set var="jobPosts" value="${jobPosts}" />

<div class="container mt-5">
    <h2 class="mb-4 text-center page-title">Job Post List</h2>

    <div class="row row-cols-2">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.getPostProfile()}</h5>
                         <p class="card-text">
                            <strong>Job-Id: </strong>
                            ${jobPost.getPostId()}
                        </p>
                        <p class="card-text">
                            <strong>Description:</strong>
                            ${jobPost.getPostDesc()}
                        </p>
                        <p class="card-text">
                            <strong>Experience Required:</strong>
                            ${jobPost.getReqExperience()} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack Required:</strong>
                            <ul>
                                <ab:forEach var="tech" items="${jobPost.getPostTechStack()}">
                                    <li>${tech}</li>
                                </ab:forEach>
                            </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        <!-- Optional footer content -->
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
