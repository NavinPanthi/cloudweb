<?php
include('includes/header.php');
error_reporting(E_ALL);
ini_set('display_errors', 'On');
?>

<section class="posts_area">
    <div class="container">
        <div class="row">
        <?php include("includes/admin_menus.php");?>
            <div class="col-md-9 col-sm-9 col-xs-12">
                <div class="post_content">
                    <h2>View All Posts</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Post ID</th>
                                <th>Category ID</th>
                                <th>Title</th>
                                <th>Date</th>
                                <th>Image</th>
                                <th>Author</th>
                                <th>Keywords</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            // Assuming you have a database connection named $con
                            $query = "SELECT * FROM posts";
                            $result = mysqli_query($con, $query);

                            // Fetching and displaying posts
                            while($row = mysqli_fetch_assoc($result)) {
                                $post_id = $row['post_id'];
                                $cat_id = $row['cat_id'];
                                $post_title = $row['post_title'];
                                $post_date = $row['post_date'];
                                $post_image = $row['post_image'];
                                $post_author = $row['post_author'];
                                $post_keywords = $row['post_keywords'];
                            ?>
                            <tr>
                                <td><?php echo $post_id; ?></td>
                                <td><?php echo $cat_id; ?></td>
                                <td><?php echo $post_title; ?></td>
                                <td><?php echo $post_date; ?></td>
                                <td><img src="<?php echo $post_image; ?>" alt="Post Image" width="100"></td>
                                <td><?php echo $post_author; ?></td>
                                <td><?php echo $post_keywords; ?></td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<?php include("includes/footer.php");?>
