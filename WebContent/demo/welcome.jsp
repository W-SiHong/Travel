<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>欢迎页面</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<div class="layui-row layui-col-space10 my-index-main">
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md3">
        <div class="my-nav-btn layui-clear" data-href="./CheackAllServlet">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-icon">&#xe715;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">总览表单</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md3">
        <div class="my-nav-btn layui-clear" data-href="./demo/map.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-btn-warm layui-icon">&#xe756;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">详细图表</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md3">
        <div class="my-nav-btn layui-clear" data-href="./rule.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-btn-normal layui-icon">&#xe705;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">薪资制度</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md3">
        <div class="my-nav-btn layui-clear" data-href="./help.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-bg-cyan layui-icon">&#xe6b2;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">查看帮助</p>
            </div>
        </div>
    </div>
    

    <div class="layui-col-xs12 layui-col-sm6 layui-col-md12">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">出差项目完成进度</h2>
                <div class="layui-colla-content layui-show">
                          
                    <div>何明</div>
                    <div class="layui-progress layui-progress-big" lay-showPercent="true">
                        <div class="layui-progress-bar layui-bg-red" lay-percent="41.5%"></div>
                    </div>
                    <div>严排</div>
                    <div class="layui-progress layui-progress-big" lay-showPercent="true">
                        <div class="layui-progress-bar layui-bg-yellow" lay-percent="83.7%"></div>
                    </div>
                    <div>顾青青</div>
                    <div class="layui-progress layui-progress-big" lay-showPercent="true">
                        <div class="layui-progress-bar layui-bg-green" lay-percent="62%"></div>
                    </div>
                    <div>周一</div>
                    <div class="layui-progress layui-progress-big" lay-showPercent="true">
                        <div class="layui-progress-bar layui-bg-orange" lay-percent="93.5%"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
  

    <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">公司新闻</h2>
                <div class="layui-colla-content layui-show">

                    <ul class="layui-timeline max-auto">
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年7月6日</h3>
                                <p>
                                    素质出差启动“马来西亚周”　助力马来西亚中小企业寻找中国商机
                                </p>
                                <ul>
                                  
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年7月4日</h3>
                                <p>素质出差推动时尚零售智能化</p>
                                
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年7月2日</h3>
                                <p>素质云推出EMEA伙伴计划（英文版）</p>
                                
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年6月27日</h3>
                                <p>素质出差倡议成立开放研究平台“伏虎堂”（英文版）</p>
                                
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年6月18日</h3>
                                <p>素质出差在马来西亚开设办公室</p>
                                
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年6月13日</h3>
                                <p>天猫将618年中大促拓展到更多亚太区市场（英文版）</p>
                               
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年6月7日</h3>
                                <p>素质云于上海云栖大会推出ET农业大脑</p>
                                
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年6月6日</h3>
                                <p>火鸡领衔合资公司将于香港国际机场打造全新物流枢纽</p>
                               
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年6月6日</h3>
                                <p>素质出差、火鸡与中通达成战略入股协议　共同探索新物流机遇</p>
                               
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年5月29日</h3>
                                <p>天猫新零售技术正式应用于INTERSPORT</p>
                               
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">2018年5月29日</h3>
                                <p>素质出差集团宣布将健康医疗类目整合至阿里健康</p>
                               
                            </div>
                        </li>
                        
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <div class="layui-timeline-title">2018年4月19日</div>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
<div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">出差图表</h2>
                <div class="layui-colla-content layui-show">

                    <div id="main-line" style="height: 450px;"></div>

                </div>
            </div>
        </div>
    </div>
<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript" src="../frame/echarts/echarts.min.js"></script>
<script type="text/javascript">
    layui.use(['element', 'form', 'table', 'layer', 'vip_tab'], function () {
        var form = layui.form
                , table = layui.table
                , layer = layui.layer
                , vipTab = layui.vip_tab
                , element = layui.element
                , $ = layui.jquery;

        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main-line'));

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption({
            title: {
                text: '出差次数图表'
            },
            tooltip: {},
            legend: {
                data: ['出差次数图表/年']
            },
            xAxis: {
                data: ["张三", "李四", "王五", "毛五", "张一", "韩墨"]
            },
            yAxis: {},
            series: [{
                name: '出差次数图表/年',
                type: 'bar',
                data: [10, 20, 30, 10, 10, 20]
            }]
        });

        // 打开选项卡
        $('.my-nav-btn').on('click', function(){
            if($(this).attr('data-href')){
                //vipTab.add('','标题','路径');
                vipTab.add($(this),'<i class="layui-icon">'+$(this).find("button").html()+'</i>'+$(this).find('p:last-child').html(),$(this).attr('data-href'));
            }
        });

        // you code ...


    });
</script>
</body>
</html>