 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
</head>
<body>
<style>
/* Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Body styling */
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #f4f7f8;
  color: #333;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

/* Login card */
.login-card {
 
  padding: 30px 40px;
  border-radius: 10px;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
  width: 100%;
  max-width: 400px;
  text-align: left;
  /* border: 2px solid red; */
    background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
   
}

/* Heading */
.login-card h2 {
  text-align: center;
  margin-bottom: 25px;
  color: #007acc;
  /* border: 2px solid red; */

}

/* Form group */
.form-group {
  margin-bottom: 20px;
  /* border: 2px solid red; */

}

.form-group label {
  display: block;
  margin-bottom: 6px;
  font-weight: 600;
  /* border: 2px solid red; */

}

.form-group input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  
  font-size: 16px;
  /* border: 2px solid red; */
border:none;
border-bottom: 1px solid black;
background:transparent;
}
.form-group input:focus-visible {
  outline: none;
}

/* Submit button */
.btn-login {
  width: 100%;
  padding: 12px;
  background-color: #007acc;
  color: white;
  border: none;
  border-radius: 6px;
  font-size: 16px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.btn-login:hover {
  background-color: #005f99;
}

/* Error message */
.error-message {
  color: red;
  margin-top: 15px;
  text-align: center;
  font-weight: 500;

}
.main 
{
    width:100%;
    height:100%;
      box-sizing: border-box;
  
  display: flex;
align-items: center;
justify-items: center;
justify-content: center;
position: relative;
  z-index: 1;
  background-color: #333;
 

}
.main::before {
  content: '';
  position: absolute;
  top: 0; left: 0;
  width: 100%;
  height: 100%;
  background-image: url('lp.jpg');
  background-size: cover;
  background-position: center;
  opacity: 0.5;  
  z-index: -1;
}

</style>
 <div class="main">
<div class="login-card">
    <h2>Login</h2>
    <form action="login" method="post">
      <div class="form-group">
        <label>Username</label>
        <input type="text" name="username" required />
      </div>
      <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" required />
      </div>
      <input type="submit" value="Login" class="btn-login">
      
      <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
      </c:if>
    </form>
  </div>
</div>
</body>
</html>
