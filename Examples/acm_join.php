<xml version="1.0" encoding = "utf-8" >
<html xmlns = "http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content=text/html; charset=windows-1252">
	<title>Thank You for joining the ORU Computer Club</title>
	
	<link rel="stylesheet" href="acm_navstyle.css">
</head>

<body>

<header>

<ul class="topnav">
	<li><a href = 'home.html' id="logo"><img src = "img/acm_logo.png"></a></li>
<div id="nav">
	<li><a href="home.html">Home</a></li>
	<li><a href="acm_events.html">News</a></li>
	<li><a href="acm_join.php">Contact</a></li>
	<li><a href="acm_about_us.html">About</a></li>
	<li class="icon">
		<a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">?</a>
	</li>
</div>
</ul>

<script>
function myFunction() {
    document.getElementsByClassName("topnav")[0].classList.toggle("responsive");
}
</script>

</header>

<div id="wrapper">

<h1> Thank You For Your Interest In Joining Our ACM chapter!!!</h1><br>
<h2> Please fill out the form below </h2>

<?php
 $db = mysql_connect("lxsrv107.oru.edu", "tjones", "tjones");
        if(!$db) 
            echo("ERROR - could not connect to MySQL Database");
        $er = mysql_select_db("tjones");
        
        if(!$er)
            echo("ERROR - could not select tjones DB in MySQL");
        

$lastName = $firstName = $phoneNumber = $email = $classification = $joinedNatiionalACM = "";
$lastNameErr = $firstNameErr = $phoneNumberErr = $emailErr = $classificationErr = $joinedNatiionalACMErr = "";


		if ($_SERVER["REQUEST_METHOD"] == "POST") {

		
		if (empty($_POST["lastName"])){
			$lastNameErr = "Last name is required.";
		} else {
		$lastName = test_input($_POST["lastName"]);
		// check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$lastName)) {
      $lastNameErr = "Only letters and white space allowed"; 
		}
		}
		if (empty($_POST["firstName"])){
			$firstNameErr = "First name is required.";
		} else {
		$firstName = test_input($_POST["firstName"]);
		// check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$firstName)) {
      $lastNameErr = "Only letters and white space allowed"; 
		}
		}
		
		if (empty($_POST["email"])){
			$emailErr = "Email is required."; echo $emailErr;
		} else {
        $email = test_input($_POST["email"]);
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format"; echo $emailErr;
    }
		}
		
		if (empty($_POST["phoneNumber"])){
			$phoneNumberErr = "Phone number is required.";
		} else {
        $phoneNumber = test_input($_POST["phoneNumber"]);
		// check if name only contains letters and whitespace
    if (!preg_match("/^[0-9]*$/",$phoneNumber)) {
      $phoneNumberErr = "Only numbers allowed"; 
		}
		}
		
		if (empty($_POST["classification"])){
			$classificationErr = "Please select a classification.";
		} else {
        $classification = test_input($_POST["classification"]);
		}
		
		if (empty($_POST["joinedNatiionalACM"])){
			$joinedNatiionalACMErr = "Please select Yes or No.";
		} else {
        $joinedNatiionalACM = test_input($_POST["joinedNatiionalACM"]);
		}
		}
   function test_input($data){
	   $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
   }  
?> 
  
<form method="POST" action= "<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" >

<p>Last Name<br><input type="text" name="lastName" value="<?php echo $lastName;?>"align="center">
<span class="error">* <?php echo $lastNameErr;?></span>
<br><br>
</p>

<p>First Name<br><input type="text" name="firstName" value="<?php echo $firstName;?>">
<span class="error">* <?php echo $firstNameErr;?></span>
<br><br>
</p>

<p>Phone Number<br><input type="text" name="phoneNumber" value="<?php echo $phoneNumber;?>">
<span class="error">* <?php echo $phoneNumberErr;?></span>
<br><br>
</p>

<p>Email<br><input type="text" name="email" value="<?php echo $email;?>">
<span class="error">* <?php echo $emailErr;?></span>
<br><br>
</p>

<p>Classification<br><select name="classification" >
<span class="error">* <?php echo $classificationErr;?></span>
<br><br>
<option value="">Please select
<option value="Freshman">Freshman
<option value="Sophmore">Sophomore
<option value="Junior">Junior
<option value="Senior">Senior
<option value="Alumni">Alumni
<option value="Professor">Professor
</select>
</p>

<p>Are you an ACM member?<br>
<select name="joinedNatiionalACM" >
<span class="memberError">* <?php echo $joinedNatiionalACMErr;?></span>
<option value="">Please select
<option value="Yes">Yes
<option value="No">No
</select>
<br><br>
</p>

<input type="submit" name="submit" value = "Submit">
</form>

<?php
 $sql = "insert into ACM_Member (First_Name, Last_Name, Phone, Email, Classification, ACM_Member)
   values('$lastName', '$firstName', '$phoneNumber', '$email', '$classification', '$joinedNatiionalACM');";
   echo "<br>";
   
$query = $sql;
        trim($query);
        $query = stripcslashes($query);
	        
		$result = mysql_query($query);
                
        if(!$result) {
            print "ERROR - the query could not be executed";
            $error = mysql_error();
            print"<p>".$error."</p>";
                exit;
		} else echo "<br><br><h2> Thank You for signing up for our computer club! </h2>"
?>

</div>

<div id="footer">
<center>Copyright 2016 ORU CIT Department - ORU ACM CHAPTER</center>
</div>
</body>
</html>