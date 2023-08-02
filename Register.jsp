
<%
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
  <title>Medisearch Registration</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    .error-message {
      color: red;
      margin-top: 10px;
    }

    .container {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .form-container {
      max-width: 400px;
      width: 100%;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .logo-container {
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 20px;
    }

    .logo {
      width: 40px;
      height: 40px;
      margin-right: 10px;
      background-color: #333;
      color: #fff;
      text-align: center;
      line-height: 40px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    .form-group input {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .form-group input[type="submit"] {
      background-color: #333;
      color: #fff;
      cursor: pointer;
    }

    .links-container {
      text-align: center;
    }

    .links-container a {
      margin-right: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="form-container">
      <div class="logo-container">
        <div class="logo">M</div>
        <h2>Medisearch Registration</h2>
      </div>
      <form action="/set-user" method="POST">
        <div class="form-group">
          <label for="username">Username:</label>
          <input type="text" id="username" name="userName" required>
        </div>

        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" id="password" name="password1" required>
        </div>
        <div class="form-group">
            <label for="password">Confirm Password:</label>
            <input type="password" id="password" name="password2" required>
          </div>
  
        

        <div class="form-group">
          <input type="submit" value="Register">
        </div>
      </form>

      <div class="links-container">
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
      </div>
      <% if (error != null && !error.isEmpty()) { %>
        <p class="error-message"><%= error %></p>
    <% } %>
    </div>
    
  </div>
</body>
</html>
