<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
   
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>地图插件</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div id="main-line" style="width: 100%;height:400px;"></div>

<div id="main-bing" style="width: 100%;height:400px;"></div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../frame/echarts/echarts.min.js"></script>
<script type="text/javascript">

    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main-line'));

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption({
        title: {
            text: '出差信息图表'
        },
        tooltip: {},
        legend: {
            data:['各部门出差次数/周']
        },
        xAxis: {
            data: ["财务部","研发部","技术部","后勤部","广告部","董事会"]
        },
        yAxis: {},
        series: [{
            name: '各部门出差次数/周',
            type: 'bar',
            data: [11, 21, 27, 13, 48, 5]
        }]
    });

    // 基于准备好的dom，初始化echarts实例
    var chart = echarts.init(document.getElementById('main-bing'));

    // 配置
    chart.setOption({
    	tooltip: {},
        legend: {
            data:['各部门出差比例']
        },
        series : [
            {
                name: '各职位出差比例',
                type: 'pie',
                radius: '55%',
                data:[
                    {value:400, name:'普通员工'},
                    {value:335, name:'部门经理'},
                    {value:310, name:'成本控制专员'},
                    {value:274, name:'总经理'}
                    
                ]
            }
        ]
    });

    layui.use(['element'], function(){
        var element = layui.element
            ,$      = layui.jquery;

        // you code ...


    });
</script>
</body>
</html>