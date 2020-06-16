<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <base href="<%=request.getContextPath()+(request.getContextPath().equals("/")?"":"/") %>"/>
    <title>功能导航</title>
    <link href="https://cdn.bootcss.com/font-awesome/5.8.0/css/all.css" rel="stylesheet"/>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'montserrat', sans-serif;
            box-sizing: border-box;
        }

        .services-section {
            background-image: url(../images/mpvgyk.png);
            background-size: cover;
            padding: 60px 0;
        }

        .inner-width {
            width: 100%;
            max-width: 1200px;
            margin: auto;
            padding: 0 20px;
            overflow: hidden;
        }

        .section-title {
            text-align: center;
            color: #ddd;
            text-transform: uppercase;
            font-size: 30px;
        }

        .border {
            width: 260px;
            height: 2px;
            background: #82ccdd;
            margin: 40px auto;
        }

        .services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .service-box {
            max-width: 33.33%;
            padding: 10px;
            text-align: center;
            color: #ddd;
            cursor: pointer;
        }

        .service-icon {
            display: inline-block;
            width: 70px;
            height: 70px;
            border: 3px solid #82ccdd;
            color: #82ccdd;
            transform: rotate(45deg);
            margin-bottom: 30px;
            margin-top: 16px;
            transition: 0.3s linear;
        }

        .service-icon i {
            line-height: 70px;
            transform: rotate(-45deg);
            font-size: 26px;
        }

        .service-box:hover .service-icon {
            background: #82ccdd;
            color: #ddd;
        }

        .service-title {
            font-size: 18px;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .service-desc {
            height: 80px;
            width: 360px;
            font-size: 14px;
        }

        @media screen and (max-width: 960px) {
            .service-box {
                max-width: 45%;
            }
        }

        @media screen and (max-width: 768px) {
            .service-box {
                max-width: 50%;
            }
        }

        @media screen and (max-width: 480px) {
            .service-box {
                max-width: 100%;
            }
        }
    </style>

</head>
<body>
<div class="services-section">
    <div class="inner-width">
        <h1 class="section-title">Welcome to sign in</h1>
        <div class="border"></div>
        <div class="services-container">
            <div class="service-box">
                <a href="dormanger/dorm_manage.jsp">
                    <div class="service-icon">
                        <i class="fas fa-paint-brush"></i>
                    </div>
                </a>
                <div class="service-title">宿舍管理员管理</div>
                <div class="service-desc">
                </div>
            </div>
            <div class="service-box">
                <a href="student/stu_index.jsp">
                    <div class="service-icon">
                        <i class="fas fa-brush"></i>
                    </div>
                </a>
                <div class="service-title">学生管理</div>
                <div class="service-desc">
                </div>
            </div>
            <div class="service-box">
                <div class="service-icon">
                    <i class="fas fa-object-ungroup"></i>
                </div>
                <div class="service-title">宿舍楼管理</div>
                <div class="service-desc">
                </div>
            </div>
            <div class="service-box">
                <div class="service-icon">
                    <i class="fas fa-paint-brush"></i>
                </div>
                <div class="service-title">缺勤记录</div>
                <div class="service-desc">
                </div>
            </div>
            <div class="service-box">
                <div class="service-icon">
                    <i class="fas fa-database"></i>
                </div>
                <div class="service-title">修改密码</div>
                <div class="service-desc">
                </div>
            </div>
            <div class="service-box">
                <a href="../login.jsp">
                    <div class="service-icon">
                        <i class="fab fa-android"></i>
                    </div></a>
                <div class="service-title">退出系统</div>
                <div class="service-desc">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>