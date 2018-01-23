<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>个人简历</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!-- stylesheet css -->
    <link rel="stylesheet" href="/views/css/bootstrap.min.css">
    <link rel="stylesheet" href="/views/css/font-awesome.min.css">
    <link rel="stylesheet" href="/views/css/templatemo-blue.css">
</head>
<body data-spy="scroll" data-target=".navbar-collapse">

<!-- preloader section -->
<div class="preloader">
    <div class="sk-spinner sk-spinner-wordpress">
        <span class="sk-inner-circle"></span>
    </div>
</div>

<!-- header section -->
<header>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <img id="img" src="/views/images/tm-easy-profile.jpg" onclick="getElementById('file').click()"
                     style="cursor:pointer;" title="点击添加图片" class="img-responsive img-circle tm-border"
                     alt="templatemo easy profile">
                <hr>
                <input type="file" name="file" id="file" style="display: none"/>
                <input type="button" class="fileButton" value="点击头像选择上传文件" onclick="upload()"/>
                <h1 class="tm-title bold shadow"><spring:message code="name"/></h1>
                <h1 class="white bold shadow"><spring:message code="job"/></h1>
            </div>
        </div>
    </div>
</header>

<!-- about and skills section -->
<section class="container">
    <div class="row">
        <div class="col-md-6 col-sm-12">
            <div class="about">
                <h3 class="accent"><spring:message code="brief"/></h3>
                <h2>Bootstrap v3.3.5</h2>
                <p>This easy HTML profile is brought to you by templatemo website. There are 4 color themes, <a
                        href="index-green.html">Green</a>, <a href="index.html">Blue</a>, <a
                        href="index-gray.html">Gray</a>, and <a href="index-orange.html">Orange</a>. Sed vitae dui in
                    neque elementum tempor eu id risus. Phasellus sed facilisis lacus, et venenatis augue.</p>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="skills">
                <h2 class="white"><spring:message code="Skill"/></h2>
                <strong>PHP MySQL</strong>
                <span class="pull-right">70%</span>
                <div class="progress">
                    <div class="progress-bar progress-bar-primary" role="progressbar"
                         aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;"></div>
                </div>
                <strong>UI/UX Design</strong>
                <span class="pull-right">85%</span>
                <div class="progress">
                    <div class="progress-bar progress-bar-primary" role="progressbar"
                         aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;"></div>
                </div>
                <strong>Bootstrap</strong>
                <span class="pull-right">95%</span>
                <div class="progress">
                    <div class="progress-bar progress-bar-primary" role="progressbar"
                         aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%;"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="copyrights">Collect from <a href="#">个人简历</a></div>

<section class="container">
    <div class="row">
        <div class="col-md-8 col-sm-12">
            <div class="education">
                <h2 class="white"><spring:message code="Education"/></h2>
                <div class="education-content">
                    <h4 class="education-title accent"><spring:message code="studycontent"/></h4>
                    <div class="education-school">
                        <h5><spring:message code="school"/></h5><span></span>
                        <h5><spring:message code="studytime"/></h5>
                    </div>
                    <p class="education-description">In lacinia leo sed quam feugiat, ac efficitur dui tristique. Ut
                        venenatis, odio quis cursus egestas, nulla sem volutpat diam, ac dapibus nisl ipsum ut ipsum.
                        Nunc tincidunt libero non magna placerat elementum.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="languages">
                <h2><spring:message code="Languages"/></h2>
                <ul>
                    <li><a href="?lang=zh_CN">中文 </a></li>
                    <li><a href="?lang=en_US">English</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- contact and experience -->
<section class="container">
    <div class="row">
        <div class="col-md-4 col-sm-12">
            <div class="contact">
                <h2><spring:message code="Contact"/></h2>
                <p><i class="fa fa-map-marker"></i> 123 Rama IX Road, Bangkok</p>
                <p><i class="fa fa-phone"></i> 18383398524</p>
                <p><i class="fa fa-envelope"></i> 848257135@qq.com</p>
                <p><i class="fa fa-globe"></i> www.github.com/chineseluo</p>
            </div>
        </div>
        <div class="col-md-8 col-sm-12">
            <div class="experience">
                <h2 class="white"><spring:message code="Experiences"/></h2>
                <div class="experience-content">
                    <h4 class="experience-title accent"><spring:message code="workEsperiences"/></h4>
                    <h5><spring:message code="workcompany"/></h5><span></span>
                    <h5><spring:message code="worktime"/></h5>
                    <p class="education-description">Cras porta tincidunt sem, in sollicitudin lorem efficitur ut. Lorem
                        ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                        laoreet.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="experience">
                <h2 class="white">联系我</h2>
                <div class="experience-content">
                    <form method="post" action="/index/savepersonal">
                        <p>
                        <div class="input-group input-group-lg">
                            <input type="text" name="lookerName" class="form-control input-xxlarge" placeholder="您的姓名" aria-describedby="sizing-addon2"
                                  required>
                        </div>
                        </p>
                        <p>
                        <div class="input-group input-group-lg">
                            <input name="lookerEmail" type="email" class="form-control" placeholder="您的邮箱账号"
                                   aria-describedby="sizing-addon2"  required>
                        </div>
                        </p>
                        <P>
                        <div class="form-group">
                            <textarea name="lookerMessage" class="form-control" rows="6" style="overflow: hidden" placeholder="消息" required></textarea>
                        </div>
                        </P>
                        <p>
                            <button type="submit" class="btn btn-default" >提交</button>
                        </p>
                    </form>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- footer section -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <p>Copyright &copy; 2084 Your Easy Profile. More Templates</p>
                <ul class="social-icons">
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-google-plus"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-dribbble"></a></li>
                    <li><a href="#" class="fa fa-github"></a></li>
                    <li><a href="#" class="fa fa-behance"></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<!-- javascript js -->
<script src="/views/js/jquery.js"></script>
<script src="/views/js/bootstrap.min.js"></script>
<script src="/views/js/jquery.backstretch.min.js"></script>
<script src="/views/js/custom.js"></script>
<script type="text/javascript">
    function upload() {
        //js file 对象
        var file = $("#file")[0].files[0];

        //js form
        var form = new FormData();
        form.append("file", file);

        //jquery ajax
        var opt = {
            url: "/index/do_upload",
            type: "post",
            contentType: false,
            processData: false,
            data: form,
            success: function (data) {
                var json = eval("(" + data + ")");
                $("#img").css({
                    width: "250px",
                    height: "250px"
                })
                $("#img").attr("src", "/upload/" + json.url);
            }
        };
        $.ajax(opt);
    }

</script>
</body>
</html>
