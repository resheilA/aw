<?php include("includes/sessions.php"); ?>
<?php include("includes/header.php"); ?>
<?php 

function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

?>
<h2> Add a domain name </h2>
<form method="post" action="savepostdata.php">
Enter your domain name
<input type="text" name="name|name">
<input type="hidden" name="name|did" value="<?php echo generateRandomString(); ?>">
<input type="submit" value="GO">
</form>