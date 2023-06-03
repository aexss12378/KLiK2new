<?php

session_start();
require 'includes/dbh.inc.php';

define('TITLE', "Forum | KLiK");

if (!isset($_SESSION['userId'])) {
    header("Location: login.php");
    exit();
}

if (isset($_GET['topic'])) {
    $topic = $_GET['topic'];
} else {
    header("Location: index.php");
    exit();
}

include 'includes/HTML-head.php';
?>

<link href="css/forum-styles.css" rel="stylesheet">
</head>

<body>

<?php
include 'includes/navbar.php';

if (isset($_POST['submit-reply'])) {
    $content = $_POST['reply-content'];

    if (!empty($content)) {
        $sql = "INSERT INTO posts (post_content, post_date, post_topic, post_by) "
            . "VALUES (?, NOW(), ?, ?)";
        $stmt = mysqli_stmt_init($conn);

        if (!mysqli_stmt_prepare($stmt, $sql)) {
            die('SQL error');
        } else {
            mysqli_stmt_bind_param($stmt, "sss", $content, $topic, $_SESSION['userId']);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
        }
    }
}

$sql = "SELECT topics.*, categories.*, topics.topic_img AS topic_image 
        FROM topics 
        INNER JOIN categories ON topics.topic_cat = categories.cat_id 
        WHERE topics.topic_id = ?";
$stmt = mysqli_stmt_init($conn);

if (!mysqli_stmt_prepare($stmt, $sql)) {
    die('SQL error');
} else {
    mysqli_stmt_bind_param($stmt, "s", $topic);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (!($forum = mysqli_fetch_assoc($result))) {
        die('SQL error');
    }
}

?>

<br><br>
<div class="container">
    <div class="col-sm-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Forums</a></li>
                <li class="breadcrumb-item"><a href="#"><?php echo ucwords($forum['cat_name']); ?></a></li>
            </ol>
        </nav>
        <div class="card post-header text-center">
            <h1><?php echo ucwords($forum['topic_subject']); ?></h1>
            <img src='uploads/<?php echo $_SESSION["topic_img"] ?>' >
            <?php
            if (!empty($forum['topic_img'])) {
                echo '<img src="' . $forum['topic_img'] . '" alt="Topic Image">';
                
            }            
            ?>
        </div>
    </div>
    <div class="col-sm-12">

        <?php
        $sql = "SELECT * FROM posts p, users u "
            . "WHERE p.post_topic=? AND p.post_by=u.idUsers "
            . "ORDER BY p.post_id";
        $stmt = mysqli_stmt_init($conn);

        if (!mysqli_stmt_prepare($stmt, $sql)) {
            die('SQL error');
        } else {
            mysqli_stmt_bind_param($stmt, "s", $topic);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);

            $i = 1;
            while ($row = mysqli_fetch_assoc($result)) {
                $voted_u = false;
                $voted_d = false;

                $sql = "SELECT votePost, voteBy, vote FROM postvotes "
                    . "WHERE votePost=? AND voteBy=? AND vote=1";
                $stmt = mysqli_stmt_init($conn);

                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    die('SQL error');
                } else {
                    mysqli_stmt_bind_param($stmt, "ss", $row['post_id'], $_SESSION['userId']);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);

                    $resultCheck = mysqli_stmt_num_rows($stmt);

                    if ($resultCheck == 0) {
                        $voted_u = true;
                    }
                }

                $sql = "SELECT votePost, voteBy, vote FROM postvotes "
                    . "WHERE votePost=? AND voteBy=? AND vote=-1";
                $stmt = mysqli_stmt_init($conn);
                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    die('SQL error');
                } else {
                    mysqli_stmt_bind_param($stmt, "ss", $row['post_id'], $_SESSION['userId']);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);

                    $resultCheck = mysqli_stmt_num_rows($stmt);

                    if ($resultCheck == 0) {
                        $voted_d = true;
                    }
                }

                echo '<div class="card post">  
                        <span class="date">' . date("F jS, Y", strtotime($row['post_date'])) . '<span class="span-post-no">#' . $i . '</span> </span>
                        <div class="row">
                            <div class="col-sm-3 user">
                                <div class="text-center">
                                    <img src="uploads/' . $row['userImg'] . '" class="img-fluid center-block user-img">
                                    <h3>' . $row['uidUsers'] . '</h3>
                                    <small class="text-muted">' . $row['headline'] . '</small><br><br>
                                    <table style="width:100%">
                                        <tr>
                                            <th>Joined:</th>
                                            <td>Sep 27, 2021</td>
                                        </tr>
                                        <tr>
                                            <th>Messages:</th>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <th>Likes:</th>
                                            <td>0</td>
                                        </tr>
                                    </table>
                                    <a href="profile.php?id=' . $row['idUsers'] . '">
                                        <i class="fa fa-user fa-2x" aria-hidden="true"></i></a>
                                    <a href="message.php?id=' . $row['idUsers'] . '">
                                        <i class="fa fa-envelope fa-2x" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="col-sm-9 post-content">
                                <p>' . $row['post_content'] . '</p>
                                <div class="vote text-center">';
                if (($row['post_by'] == $_SESSION['userId']) || ($_SESSION['userLevel'] == 1)) {
                    echo '<a href="includes/delete-post.php?topic=' . $topic . '&post=' . $row['post_id'] . '&by=' . $row['post_by'] . '">'
                        . '<i class="fa fa-trash fa-2x" aria-hidden="true"></i></a><br>';
                }
                echo '</div>
                            </div>
                        </div>
                    </div>';

                $i++;
            }
        }
        ?>

    </div>

    <div class="col-sm-12">
        <form method="post" action="">
            <fieldset>
                <div class="form-group">
                    <textarea name="reply-content" class="form-control" id="reply-form" rows="7"></textarea>
                </div>
                <input type="submit" value="Submit reply" class="btn btn-lg btn-dark" name="submit-reply">
            </fieldset>
        </form>
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>

</html>
