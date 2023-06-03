<?php
session_start();

if (isset($_POST['update-profile']))
{
    
    require 'dbh.inc.php';
    
    
    $email = $_POST['email'];
    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $headline = $_POST['headline'];
    $bio = $_POST['bio'];
    
    
    if (empty($email))
    {
        header("Location: ../edit-profile.php?error=emptyemail");
        exit();
    }
    else if (!filter_var($email, FILTER_VALIDATE_EMAIL))
    {
        header("Location: ../edit-profile.php?error=invalidmail");
        exit();
    }
    else
    {
        $sql = "SELECT * FROM users WHERE uidUsers=?;";
        $stmt = mysqli_stmt_init($conn);
        
        if (!mysqli_stmt_prepare($stmt, $sql))
        {
            header("Location: ../edit-profile.php?error=sqlerror");
            exit();
        }
        else
        {
            mysqli_stmt_bind_param($stmt, "s", $_SESSION['userUid']);
            mysqli_stmt_execute($stmt);
            
            $result = mysqli_stmt_get_result($stmt);
           
            
            if($row = mysqli_fetch_assoc($result))
            {
                
                    

                    $FileNameNew = $_SESSION['userImg'];
                    require 'upload.inc.php';
                    
                    $sql = "UPDATE users "
                            . "SET name=?, "
                            . "emailUsers=?, "
                            . "gender=?, "
                            . "headline=?, "
                            . "bio=?, "
                            . "userImg=? ";
                    
                    $stmt = mysqli_stmt_init($conn);
                    
                    if (!mysqli_stmt_prepare($stmt, $sql))
                    {
                        header("Location: ../edit-profile.php?error=sqlerror");
                        exit();
                    }
                    
                                                
                        mysqli_stmt_execute($stmt);
                        mysqli_stmt_store_result($stmt);
                        
                        $_SESSION['emailUsers'] = $email;
                        $_SESSION['name'] = $name;
                        $_SESSION['gender'] = $gender;
                        $_SESSION['headline'] = $headline;
                        $_SESSION['bio'] = $bio;
                        $_SESSION['userImg'] = $FileNameNew;

                        header("Location: ../edit-profile.php?edit=success");
                        exit();
            }
                
            
            
                header("Location: ../edit-profile.php?error=sqlerror");
                exit();
            }
        }
    }
    
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
{
    header("Location: ../edit-profile.php");
    exit();
}