      
      <!-- Slideshow -->
        <div id="slideshow" class="carousel slide wow fadeInDown"  data-wow-duration="3s" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#slideshow" data-slide-to="0" class="active"></li>
            <li data-target="#slideshow" data-slide-to="1"></li>
            <li data-target="#slideshow" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
          <div class="item active">
                <img src="<?php echo assets('blog/images/slides/AdobeStock_542915248-scaled-1-2000x889.jpg'); ?>" alt="...">
            </div>
            <div class="item">
                <img src="<?php echo assets('blog/images/slides/picasso-guernica.jpg'); ?>" alt="...">
            </div>
            <div class="item">
                <img src="<?php echo assets('blog/images/slides/vikings.jpg'); ?>" alt="...">
            </div>
          </div>

          <!-- Controls -->
          <a class="left carousel-control" href="#slideshow" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#slideshow" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <!--/ Slideshow -->
        <!-- Main Content -->
        

        <div class="search-container d-flex justify-content-center align-items-center mrg">
    <div class="active-pink-3 active-pink-4 mb-4 mx-3">
        <input type="text" class="form-control search-input" id="searchInput" onkeyup="filterPosts()" placeholder="Search by name...">
    </div>
</div>

<br>
<!-- Main Content -->
<div class="col-sm-9 col-xs-12" id="main-content">
    <?php foreach ($posts as $post) { ?>
        <div class="post-box">
            <?php echo $post_box($post); ?>
        </div>
    <?php } ?>
</div>


<!--/ Main Content -->

<script>
    function filterPosts() {
        // Get the input value and convert it to lowercase for case-insensitive matching
        var searchValue = document.getElementById('searchInput').value.toLowerCase();

        // Get all post elements
        var posts = document.querySelectorAll('.post-box');

        // Loop through each post and toggle visibility based on the search value
        posts.forEach(function(post) {
            var postContent = post.textContent.toLowerCase();

            // Toggle visibility based on the search value
            post.style.display = postContent.includes(searchValue) ? 'block' : 'none';
        });
    }
</script>


