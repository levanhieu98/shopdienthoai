 <?php 
require_once"class/goc.php";
$dt=new xuly;
$tin=isset($_GET['tin'])?$_GET['tin']:"";
$t=$dt->tinChitiet($tin);  
$tm=$dt->tinM();
?>
 <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="row">
                        <?php while ($row=$t->fetch_assoc()){?>
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <div class="post-block ">
                                <!-- post block -->
                                <div class="post-content">
                                    <h2 class="post-title"><?=$row['tieuDe']?></h2>
                                    <div class="meta">
                                        <span class="meta-date"><?=$row['ngayDang']?></span>
                                        <span>| &nbsp; &nbsp;</span>
                                        <span class="meta-admin">By <a href="#" class="meta-title">Admin</a></span>
                                        <span>|&nbsp; &nbsp;</span>
                                        <span class="meta-comments">comments 04</span>
                                    </div>
                                    <div class="post-img">
                                        <img src="<?=$row['panner']?>" alt="" class="img-responsive">
                                    </div>
                                    <p><?=$row['baiViet']?>
                                        <br>
                                        <br> </p>
                                   
                                </div>
                            </div>
                            <div class="related-post">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 col-md-12 col-sm-12">
                                        <div class="related-head">
                                            <h3 class="related-post-title mb30">Liên quan</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="related-post-block">
                                    <div class="row">
                                         <?php while ($rows=$tm->fetch_assoc()){?>
                                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                                            <div class="related-post-content">
                                                <!-- related post -->
                                                <div class="related-img">
                                                    <a  href="" class="imghover"><img id="img" src="<?=$rows['urlHinh']?>" alt="" class="img-responsive"></a>
                                                </div>
                                                <h4 class="related-title"><a href="?p=tinhot&tin=<?=$rows['idTin']?>" class="title"><?=$rows['tomTat']?></a></h4>
                                                <div class="meta post-meta">in <a href="#" class="">"free template"</a></div>
                                            </div>
                                      
                                        </div>
                                        <?php } ?>
                                        
                                        <!-- /.related post -->
                                    </div>
                                </div>
                            </div>
                            <!-- /.related post block -->
                            <div class="post-navigation">
                                <!-- post navigation -->
                                <div class="row">
                                    <div class="nav-links">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 nopr">
                                            <div class="nav-previous">
                                                <!-- nav previous -->
                                                <div class="prev-link"> <a href="#">previous post</a></div>
                                                <h3 class="previous-next-title"><a href="#" class="title">E-Commerce Free Template</a></h3>
                                            </div>
                                            <!-- /. nav previous -->
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12 nopl">
                                            <div class="nav-next text-right">
                                                <!-- nav next -->
                                                <div class="next-link"><a href="#">next post</a></div>
                                                <h3 class="previous-next-title"><a href="#" class="title">Online Mobile Store</a></h3></div>
                                            <!-- /.nav previous -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /. post navigation -->
                            <div class="author-block">
                                <div class="author-head">
                                    <h3 class="author-title">Author Post</h3>
                                </div>
                                <!-- Post author -->
                                <div class="author-content">
                                    <div class="author-img">
                                        <a href="#"><img src="images/author.jpg" alt=""></a>
                                    </div>
                                    <div class="author-header">
                                        <h4><a href="#">Leonard Thomson</a></h4>
                                    </div>
                                    <p>Vestibulum pellentesque sitamet arcuporttitor maxi hasellus pellentesques turpisat auctor volutporbi nuncaugue suscipit nonest sed ullamcorper porta duaecenas elementum egestas suscipitn elementum.</p>
                                    <a href="#" class="btn btn-primary btn-sm">View All Post</a> </div>
                            </div>
                            <!-- /.post author -->
                            <!--comments start-->
                            <div class="comment-area">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="">
                                            <div class="comment-head">
                                                <h3 class="comment-heading">Comments (03)</h3>
                                            </div>
                                        </div>
                                        <ul class="comment-list">
                                            <li>
                                                <div class="comment-author"> <img src="images/user_img_1.jpg" alt="" class="img-circle"> </div>
                                                <div class="comment-info">
                                                    <div class="comment-header">
                                                        <h5 class="comment-title">Joshua Cuddy</h5>
                                                        <span class="comment-meta-date">20 December, 2020</span>
                                                    </div>
                                                    <div class="comment-content">
                                                        <p>Vestibulum pellentesque sitamet arcuporttitor maxi hasellus pellentesques.</p>
                                                        <a href="#" class="btn-link comment-link">Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="comment-list">
                                            <li>
                                                <div class="comment-author"> <img src="images/user_img_2.jpg" alt="" class="img-circle"> </div>
                                                <div class="comment-info">
                                                    <div class="comment-header">
                                                        <h5 class="comment-title">Murray Thomason</h5>
                                                        <span class="comment-meta-date">20 December, 2020</span>
                                                    </div>
                                                    <div class="comment-content">
                                                        <p>Curabitur hendrerit fringilla enim a accumsan turpis aliquam frinnsequat ac orci.</p>
                                                        <a href="#" class="btn-link comment-link">Reply</a>
                                                    </div>
                                                </div>
                                                <ul class="childern">
                                                    <li>
                                                        <div class="comment-author"> <img src="images/user_img_3.jpg" alt="" class="img-circle"> </div>
                                                        <div class="comment-info">
                                                            <div class="comment-header">
                                                                <h5 class="comment-title">Eric Phelps</h5>
                                                                <span class="comment-meta-date">20 December, 2020</span>
                                                            </div>
                                                            <div class="comment-content">
                                                                <p>Curabitur hendrerit fringilla eilla hendrerit leo eget suscipit consequat ac orci.</p>
                                                                <a href="#" class="btn-link comment-link">Reply</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                        <!--comments close-->
                    </div>
                    <div class="leave-comments">
                        <div class="leave-comments-head">
                            <h3 class="leave-comments-title">Leave a comments</h3>
                        </div>
                        <div class="leave-comments-body">
                            <div class="row">
                                <form>
                                    <div class="col-lg-6 col-md-6 col-md-6 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label required sr-only " for="name"></label>
                                            <input id="name" name="name" type="text" class="form-control" placeholder="Your  Name" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-md-6 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label required  sr-only" for="email"></label>
                                            <input id="email" name="email" type="email" class="form-control" placeholder="Enter Email Address" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label required  sr-only" for="website"></label>
                                            <input id="website" name="website" type="text" class="form-control" placeholder="Enter your Website URL" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="textarea"></label>
                                            <textarea class="form-control" id="textarea" name="textarea" rows="5" placeholder="Comments"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-md-6 col-xs-12">
                                        <div class="form-group">
                                            <button id="singlebutton" name="singlebutton" class="btn btn-primary btn-sm">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <!-- widget-search-start -->
                    <div class="widget widget-search">
                        <div class="widget-body">
                            <form>
                                <div class="search-form">
                                    <input type="text" class="form-control" placeholder="Search Here">
                                    <button type="Submit"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- widget-search-close -->
                    <!-- widget-categories-start -->
                    <div class=" widget widget-categories">
                        <div class="widget-head">
                            <h2 class="widget-title">Categories</h2>
                        </div>
                        <div class="widget-body">
                            <ul class="arrow">
                                <li class="active"><a href="#"> Smartphones (01)</a></li>
                                <li><a href="#">Android Phones (02)</a></li>
                                <li><a href="#">iphone (03)</a></li>
                                <li><a href="#">iphone X (04)</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- widget-categories-close -->
                    <!-- widget-archievs-start -->
                    <div class=" widget widget-categories">
                        <div class="widget-head">
                            <h2 class="widget-title">Archievs</h2>
                        </div>
                        <div class="widget-body">
                            <ul class="arrow">
                                <li class="active"><a href="#">December (2019)</a></li>
                                <li><a href="#">November (2019)</a></li>
                                <li><a href="#">October (2019)</a></li>
                                <li><a href="#">September (2019)</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- widget-archievs-close -->
                    <!-- widget-recent-post-start -->
                    <div class=" widget widget-recent-post">
                        <div class="widget-head">
                            <h2 class="widget-title">Recent Post</h2>
                        </div>
                        <div class="widget-body">
                            <ul>
                                <li>
                                    <div class="recent-post">
                                        <h5 class="recent-title "><a href="#" class="title">Online Mobile Store E-Commerce Free Template</a></h5>
                                        <div class="meta">
                                            <span class="meta-date"> 20 December, 2020</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="recent-post">
                                        <h5 class="recent-title"><a href="#" class="title">Planning for Online Mobile Shopping? Visit us</a></h5>
                                        <div class="meta">
                                            <span class="meta-date"> 19 December, 2020</span> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="recent-post">
                                        <h5 class="recent-title"><a href="#" class="title">Mobile Phones Online Shopping </a></h5>
                                        <div class="meta">
                                            <span class="meta-date">20 December, 2020</span> </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- widget-recent-post-close-->
                    <!-- widget-Tag start -->
                    <div class=" widget widget-tags ">
                        <div class="widget-head">
                            <h2 class=" widget-title">Tags</h2>
                        </div>
                        <div class="widget-body">
                            <a href="#">free template</a><a href="#">template</a><a href="#">responsive Template</a><a href="#">Mobile</a><a href="#">free website template </a><a href="#">E-Commerce</a></div>
                    </div>
                    <!-- widget-Tag close -->
                </div>
            </div>
            <style type="text/css" media="screen">
        #img{
            width: 100px;
            height: 150px;
        }
        
    </style>