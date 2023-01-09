<?php
include("connect_db.php");
?>
<?php
    $query="SELECT * FROM tb_bio ORDER BY id DESC";
    $hasil=mysqli_query($con,$query);
    $data=mysqli_fetch_array($hasil);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Candidates Website</title>
    <link rel='stylesheet' type='text/css' media='screen' href='stylecss/main.css'>
</head>
<body>
    <div id="wrapper-main">
        <div class="wrapper-title">
            <h1>Candidates Website</h1>
        </div>
        <div class="wrapper-pics">
            <?php echo "<img src='image/".$data['image']."'>";?>
        </div>
        <div class="wrapper-table">
            <table>
                <caption>INFORMATION</caption>
                <tr>
                    <th>Name</th>
                    <th>Degree</th>
                    <th>Interest</th>
                    <th>Dream Role</th>
                </tr>
                <tr>
                    <td>
                        <?php echo "".$data['name']."";?>
                    </td>
                    <td>
                        <?php echo "".$data['degree']."";?>
                    </td>
                    <td>
                       <?php echo "".$data['interest']."";?>
                    </td>
                    <td>
                        <?php echo "".$data['dreamrole']."";?>
                    </td>
                </tr>
            </table>    
        </div>
        <div class="wrapper-link">
            <?php echo "<a href='".$data['linkedin']."'>" ?> Visit Me</a>
        </div>  
    </div>
</body>
</html>