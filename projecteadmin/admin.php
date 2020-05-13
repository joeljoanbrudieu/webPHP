<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
<head>
<style>
    table {
    border-collapse: collapse;
    width: 100%;
    color: #588c7e;
    font-family: monospace;
    font-size: 25px;
    text-align: left;
    }
    th {
    background-color: #588c7e;
    color: white;
    }
    tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
 
<body>


    <table width="280" cellspacing="1" cellpadding="3" border="0" bgcolor="#1E679A">
       
        <td>
        </td>

    </table>

    <table>
        <tr>
            <th>ID Message</th>
            <th>name</th>
            <th>email</th>
            <th>subject</th>
            <th>content</th>
        </tr>

    <?php
        $conn = mysqli_connect("localhost", "root", "", "miniprojecte2") or die("Connection Error: " . mysqli_error($conn));
        $sql = "SELECT * FROM tblcontact";
        $result = $conn-> query($sql);

        if($result-> num_rows > 0 ) {
            while($row = $result-> fetch_assoc()){
                echo "<tr><td>".$row["IDMsg"]."</td><td>".$row["name"]."</td><td>".$row["email"]."</td><td>".$row["subject"]."</td><td>".$row["content"]."</td></tr>";
            }
            echo "</table>";
        
        }else {
            echo "0 result";
        }

        $conn-> close();
    ?>

</body>
</html>