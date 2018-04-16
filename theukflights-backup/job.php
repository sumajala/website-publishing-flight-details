<?php
$to = "veera@asmbpo.com, sales@asmbpo.com" ;
$from = $_POST['email'];
$subject = "ASM - Query";
$from = $_POST['email'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['email'];
$telephone = $_POST['telephone'];
$url = $_POST['url'];
$comments = $_POST['comments'];
$headers = "From:" .$_POST['email'];

$message = "We have a query " ."\n\n" ."First-Name: " .$first_name ."\n"."Last-Name: " .$last_name ."\n" ."query-mail: " .$email ."\n" ."Phone: " .$telephone ."\n" ."Website: " .$url ."\n" ."Comment: " .$comments;
if( filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) )
{
if (mail($to, $subject, $message, $headers))
{
echo '
<h4 style="text-shadow: none; border: none; bacground: #fff; color: green; padding: 10px; text-align: center; margin-top: 10px; font-size: 26px;">Thanks for contacting us</h4>
<h5 style="; color: darkred; padding: 10px; text-align: center; margin-top: 10px; font-size: 18px;">We will Get back to you soon</h5><meta http-equiv="refresh" content="5; URL=http://www.asmbpo.com">
';
}
else
{
echo 'There was a problem with your e-mail (' . $_POST['email'] . ')';
}
}
else
{
}
?>
