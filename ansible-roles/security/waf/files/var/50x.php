<html>
<head>
<meta charset="UTF-8">
<title>WAF Alert</title>

<link rel="stylesheet" type="text/css" href="50x.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
</head>

<body bgcolor="#edeeef">

<br />
<br />

<table style="width: 100%">
<tr>
<td style="width:150;">
<img src="stop.jpg" style="width:100;" >
</td>
<td style="align:left;">
<h1>Sorry, you have been blocked...</h1>
<h2>Please contact Security team for advice.</h2>

</td>
</tr>
</table>

<br />
<br />
<span id="logo"></span>
<div id="colorstrip"/>

<br />

<p>
<?php
echo "<b>Source IP: </b>";
print_r($_SERVER['REMOTE_ADDR']);
if($_SERVER['HTTP_X_FORWARDED_FOR']) {
    echo "<br/><b>Proxied Source IP: </b>";
    print_r($_SERVER['HTTP_X_FORWARDED_FOR']);
} else if($_SERVER['HTTP_X_FORWARDED']) {
    echo "<br/><b>Proxied Source IP: </b>";
    print_r($_SERVER['HTTP_X_FORWARDED']);
} else if($_SERVER['HTTP_FORWARDED_FOR']) {
    echo "<br/><b>Proxied Source IP: </b>";
    print_r($_SERVER['HTTP_FORWARDED_FOR']);
} else if($_SERVER['HTTP_FORWARDED']) {
    echo "<br/><b>Proxied Source IP: </b>";
    print_r($_SERVER['HTTP_FORWARDED']);
} 
?>

<?php
//echo "<br/>Naxsi signature: ";
//print_r($_SERVER['HTTP_X_NAXSI_SIG']);

//echo "<br/>Original URL: ";
//print_r($_SERVER['HTTP_X_ORIG_URL']);

//echo "<br/>Original ARGS: ";
//print_r($_SERVER['HTTP_X_ORIG_ARGS']);
?>

<?php
echo "<br/><b>Target Host: </b>";
print_r($_SERVER['HTTP_HOST']);

echo "<br/><b>Target Server Address: </b>";
print_r($_SERVER['SERVER_ADDR']);

echo "<br/><b>Original Request: </b>";
print_r($_SERVER['REQUEST_URI']);

echo "<br/><b>Timestamp: </b>";
print_r(date('Y-m-d H:i:s', $_SERVER['REQUEST_TIME']));
?>
</p>

</body>

</html>
