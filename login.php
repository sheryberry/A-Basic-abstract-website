<?php

session_start();
error_reporting(0);
$myq=mysqli_connect("localhost","root","");
if(!$myq)
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
else{

mysqli_select_db($myq,"office");


if (isset($_POST['submit1']))
{

$username=$_POST['Name'];
$password=$_POST['ID'];
$Table=$_POST['NAME'];
echo $username.$password.$Table
if($Table=='customer' || $Table=='employee')
$sql=mysqli_query($myq,"SELECT * FROM $Table WHERE username='$username' AND password='$password' ");
else {
	<html>
<head>
<title>office</title>
</head>

<center>

<H1><fontsize="7"><font color="#F433FF">Welcome manager </font></font></h1>

<center><fontsize="+2"><a href="rowan.html">Home</a> ||<a href="about.html">about</a>||<a href="contact.html">contact us</a>||<a href="money.html">bugdetdetails</a> ||<a href="money.html">add_delete</a> ||<a href="rowan.html">log_out</a></font></center></br></hr>



<br>
  Enter Project Name: <input type="text" name="project" value=><br>

<table  border="1" align="center">
  <tr>
<td>view feedbacks:feedbacks were :</td>
  </tr>
  <tr>
<td>no of employees attended today : 4 </td>
  </tr>

<br><p>enter tasks</p>
<br>
  Enter employee ID: <input type="text" name="project" value=><br>
<textarea rows="4" cols="50">
</textarea>
<button type="button" onclick="alert('done)">Submit</button></br>
</html>


}


}


?>
