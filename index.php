<?php

    session_start();
    include_once 'includes/dbh.inc.php';
    define('TITLE',"美食/交友");

    $companyName = "Franklin's Fine Dining";
    
    function strip_bad_chars( $input ){
        $output = preg_replace( "/[^a-zA-Z0-9_-]/", "", $input);
        return $output;
    }
    
    if(!isset($_SESSION['userId']))
    {
        header("Location: login.php");
        exit();
    }
    
    include 'includes/HTML-head.php';
?> 


<link href="css/list-page.css" rel="stylesheet">
<link href="css/loader.css" rel="stylesheet">
    </head>
    
    <body>
        
 
        
            
            <?php include 'includes/navbar.php'; ?> 
            
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-3">

                        <!-- <?php include 'includes/profile-card.php'; ?> -->
                        <br><br><br>
                        <a href="create-topic.php" class="btn btn-warning btn-lg btn-block">分享貼文</a>
                        <a href="categories.php" class="btn btn-warning btn-lg btn-block">查看貼文</a>
                    </div>

                    <div class="col-sm-7" >

                        <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
                            <div class="lh-100">
                                <h1 class="mb-0 text-white lh-100">楠梓區地圖</h1>
                            </div>
                        </div>  
                        <div class="text-center p-3">
                            <img src="img/map.png">
                            <img src="uploads/' . $row['userImg'] . '" class="img-fluid center-block user-img">
                            <img src="uploads/<?php echo $row['userImg']; ?>" class="img-fluid center-block user-img">
                            <img src='uploads/<?php echo $_SESSION["userImg"] ?>' class='card-img-profile'>
                            <img src='uploads/<?php echo $_SESSION["topic_img"] ?>' >
                            <div class="form-row">
                            <div class="form-group col-md-12 align-self-center">
                                <img id="blah" class="rounded" src="#" alt="your image" class="img-responsive rounded"
                                     style="height: 200px; width: 190px; object-fit: cover;">
                                <br><br><label class="btn btn-primary ">
                                    選擇照片以設定頭像(可以之後再設定)<input type="file" id="imgInp" name='dp' hidden>
                              </label>
                            </div>
                        </div>
                            <img src="uploads/<?php echo $row['topic_img'] ?>" class="card-img-left flex-auto d-none d-lg-block blogindex-cover">

                            <br>
                        </div>
                        <br>
                        <br>
                        <br>
                        <div class="tab-content" id="myTabContent">

                            <div class="tab-pane fade show active" id="forum" role="tabpanel" aria-labelledby="forum-tab">

                                <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
                                    <div class="lh-100">
                                        <h1 class="mb-0 text-white lh-100">最新貼文</h1>
                                    </div>
                                </div>  

                                <div class="row mb-2" id="1">
                                    <?php
                                        $sql = "select topic_id, topic_subject, topic_date, topic_cat, topic_by,topic_img, userImg, idUsers, uidUsers, cat_name, (
                                                    select sum(post_votes)
                                                    from posts
                                                    where post_topic = topic_id
                                                    ) as upvotes
                                                from topics, users, categories 
                                                where topics.topic_by = users.idUsers
                                                and topics.topic_cat = categories.cat_id
                                                order by topic_id desc, upvotes asc 
                                                LIMIT 20";
                                        $stmt = mysqli_stmt_init($conn);    

                                        if (!mysqli_stmt_prepare($stmt, $sql))
                                        {
                                            die('SQL error');
                                        }
                                        else
                                        {
                                            mysqli_stmt_execute($stmt);
                                            $result = mysqli_stmt_get_result($stmt);


                                            while ($row = mysqli_fetch_assoc($result))
                                            {
                                                echo '<div class="col-md-6">
                                                        <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                                                        <a href="posts.php?topic='.$row['topic_id'].'">
                                                        <img class="card-img-left flex-auto d-none d-lg-block blogindex-cover" 
                                                                src="img/forum-cover.png" alt="Card image cap">
                                                                </a>
                                                          <div class="card-body d-flex flex-column align-items-start">
                                                            <strong class="d-inline-block mb-2 text-primary text-center  ml-auto">
                                                                <i class="fa fa-chevron-up" aria-hidden="true"></i><br>'.$row['upvotes'].'
                                                            </strong>
                                                            <h6 class="mb-0">
                                                              <a class="text-dark" href="posts.php?topic='.$row['topic_id'].'">'
                                                                .substr(ucwords($row['topic_subject']),0,15).'...</a>
                                                            </h6>
                                                            <small class="mb-1 text-muted">'.date("F jS, Y", strtotime($row['topic_date'])).'</small>
                                                            <small class="card-text mb-auto">Created By: '.ucwords($row['uidUsers']).'</small>
                                                            <a href="posts.php?topic='.$row['topic_id'].'">Go To Forum</a>
                                                          </div>

                                                        </div>
                                                      </div>';
                                            }
                                        }
                                    ?>     
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

        
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js" ></script>
<script>
            $('#blah').attr('src', 'uploads/default.png');
            function readURL(input) {

                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                    }
            }

            $("#imgInp").change(function() {
                readURL(this);
            });
                                  
                                  
        </script>


        
    </body>
</html>   