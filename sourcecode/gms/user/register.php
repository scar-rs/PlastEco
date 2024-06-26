<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['submit']))
  {
    $fname=$_POST['fname'];
    $uname=$_POST['uname'];
    $mobno=$_POST['mobno'];
    $email=$_POST['email'];
    $password=md5($_POST['password']);
    $ret="select Email,UserName from tbluser where Email=:email || UserName=:uname";
    $query= $dbh -> prepare($ret);
    $query-> bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':uname',$uname,PDO::PARAM_STR);
    $query-> execute();
    $results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() == 0)
{
$sql="Insert Into tbluser(FullName,UserName,MobileNumber,Email,Password)Values(:fname,:uname,:mobno,:email,:password)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':uname',$uname,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':mobno',$mobno,PDO::PARAM_INT);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{

echo "<script>alert('You have successfully registered with us');</script>";
}
else
{

echo "<script>alert('Something went wrong.Please try again');</script>";
}
}
 else
{

echo "<script>alert('Email-id already exist. Please try again');</script>";
}
}

?>
<!doctype html>
<html lang="en">

<head>
    
    <title>Plastic Waste Management System: Signup</title>
    <link rel="stylesheet" href="../assets/vendor/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="../assets/vendor/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="../assets/css/main.css" type="text/css">
</head>

<body class="theme-indigo">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="m-t-30"><img src="../assets/images/brand/icon_black.svg" width="48" height="48" alt="ArrOw"></div>
            <p>Please wait...</p>
        </div>
    </div>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle auth-main">
				<div class="auth-box">
                    <div class="top">
                       
                        <strong>Plastic Waste</strong> <span>Management System</span>
                    </div>
					<div class="card">
                        <div class="header">
                            <p class="lead">Register with us</p>
                        </div>
                        <div class="body">
                            <form class="form-auth-small" action="" method="post">
                                <div class="form-group">
                                    <label for="signin-email" class="control-label sr-only">Full Name</label>
                                    <input type="text" class="form-control" placeholder="Enter your name" required="true" name="fname" value="" >
                                </div>
                                <div class="form-group">
                                    <label for="signin-email" class="control-label sr-only">User Name</label>
                                    <input type="text" class="form-control" placeholder="Enter user name" required="true" name="uname" value="" >
                                </div>
                                <div class="form-group">
                                    <label for="signin-email" class="control-label sr-only">Mobile Number</label>
                                    <input type="text" class="form-control" placeholder="Enter your Mobile Number" required="true" name="mobno" value="" maxlength="10" pattern="[0-9]{10}">
                                </div>
                                <div class="form-group">
                                    <label for="signin-email" class="control-label sr-only">Email Address</label>
                                   <input type="email" class="form-control" placeholder="Enter your email id" required="true" name="email" value="" >
                                </div>
                                <div class="form-group">
                                    <label for="signin-password" class="control-label sr-only">Password</label>
                                    <input type="password" class="form-control" placeholder="Password" name="password" required="true" value="">
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block" name="submit">Signup</button>
                                <div class="bottom">
                                    <span class="helper-text m-b-10"><i class="fa fa-lock"></i> <a href="login.php">Sign in</a></span>
                                   <a href="../index.php">Back Home!!</a>
                                </div>
                            </form>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</div>
    <!-- END WRAPPER -->
    
<!-- Core -->
<script src="../assets/bundles/libscripts.bundle.js"></script>
<script src="../assets/bundles/vendorscripts.bundle.js"></script>

<script src="../assets/js/theme.js"></script>
</body>
</html>
