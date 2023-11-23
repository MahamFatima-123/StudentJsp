<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.lab10.Student" %>
<%@ page import="com.example.lab10.StudentDAO" %>

<html>
<head>
    <title>View Student</title>
    <link rel="stylesheet" type="text/css" href="resources/css/NavBarStyle.css">
    <link rel="stylesheet" type="text/css" href="resources/css/View.css">
</head>

<body>

<header>
    <div class="bar">
        <nav>
            <div class="logo">
                <img src="resources/pics/logo.png" alt="logo">
            </div>

        </nav>
    </div>
</header>

<main>
    <div class="view">
    <h2>View Student</h2>
    <!-- Your search bar goes here -->
    <form action="ViewStudent.jsp" method="get">
        Search by Name: <input type="text" name="searchName">
        <input type="submit" value="Search">
    </form>
    <!-- Display the student table -->
    <table>
        <tr>
            <th>Student Email</th>
            <th>Student Name</th>
            <th>Password</th>
            <th>Gender</th>
            <th>Join Date</th>
            <th>Age</th>
        </tr>
        <%-- Retrieve and display the students based on the search --%>
        <% List<Student> students = StudentDAO.getStudentsByName(request.getParameter("searchName")); %>
        <% for (Student student : students) { %>
        <tr>
            <td><%= student.getStudentEmail() %></td>
            <td><%= student.getStudentName() %></td>
            <td><%= student.getPassword() %></td>
            <td><%= student.getGender() %></td>
            <td><%= student.getStartDate() %></td>
            <td><%= student.getAge() %></td>
        </tr>
        <% } %>
    </table>
    </div>
</main>

<footer>
    <p>copyright 2023</p>
</footer>
</body>
</html>
