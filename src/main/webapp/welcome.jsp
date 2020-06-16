<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="Zh-CN">
<head>
    <meta charset="utf-8">
    <title>12-Water-Ripple</title>
    <base href="<%=request.getContextPath()+(request.getContextPath().equals("/")?"":"/") %>"/>
    <link rel="stylesheet" href="../css/style2.css">
</head>
<body>
<section class="jquery-ripples"><canvas width="1519" height="464" style="position: absolute; inset: 0px; z-index: -1;"></canvas></section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="../js/jquery.ripples-min.js"></script>
<script>
    $(document).ready(function(){
        $('section').ripples({
            //imageURL:null,  //要用作背景的图像的URL。如果没有，插件将尝试使用计算的background-imageCSS属性的值。也接受数据URI。
            dropRadius: 10,		//通过在画布上单击或移动鼠标而产生的拖放的大小（以像素为单位）。
            perturbance: 0.01,	//基本上由波纹引起的折射量。0表示没有折射。
            resolution: 512,	//要呈现的WebGL纹理的宽度和高度。此值越大，渲染越平滑，涟漪传播越慢。
            //interactive: true,//鼠标点击和鼠标移动是否会触发效果。
            //crossOrigin: "",  //用于受影响图像的crossOrigin属性。
        });
    })
</script>
</body>
</html>
