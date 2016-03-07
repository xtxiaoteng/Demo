<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/pages/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>大型门户后台cms</title>
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">    
	<meta name="keywords" content="keyword1,keyword2,keyword3">
	<meta name="description" content="This is my page">
	<%@include file="/WEB-INF/pages/common/common.jsp" %>
	<!-- 分页的js导入 -->
	<script type="text/javascript" src="${basePath}/resources/sg/tz_page.js"></script>

 </head>
 <body>
	 
	<div class="wrap">
<%@include file="/WEB-INF/pages/common/left.jsp"%>
		<div class="content">
		 <%@include file="/WEB-INF/pages/common/header.jsp"%>
			<div class="channel"> 位置 > 内容管理</div>
			<div class="cnt">
				<div class="tabwrap">
					
					<!--表格-->
					<table class="tztab">
						<caption>
							CMS大型门户后台内容管理模块
							<div class="fr sbtn">
								<input type="text" id="keywords" class="fl" placeholder="搜索的关键字..."/><a href="javascript:void(0)" onclick="xtAdmin.search();" class="fl"><i class="fa fa-search "></i></a>
							</div>
						</caption>

						<thead>
							<tr>
								<th>标题 <span class="up"></span> <span class="down"></span></th>	
								<th>栏目</th>	
								<th>作者</th>	
								<th>创建时间</th>	
								<th>是否置顶</th>
								<th>是否评论</th>	
								<th>是否发布</th>	
								<th>是否精华</th>
								<th>是否删除</th>
								<th>操作</th>
							</tr>
						</thead>
						<!--身体部-->
						<tbody id="tbody" data-model="content">
						</tbody>
					</table>
					 <div id="myfenye"></div>
				</div>
				
			</div>

		</div>
	
	</div>



	<script type="text/javascript">
		$(function() {
				//进入主页第一次初始化数据
				xtAdmin.loadData(0, 10,function(itemCount){
					xtAdmin.initPage(itemCount);
				});
				 
			
			$(".nav").find("li.items").find("a").click(
						function() {
							var len = $(this).next().length;
							if (len > 0) {
								$(this).next().stop(true, true).slideToggle().end()
										.parents("li").addClass("active")
										.siblings().removeClass("active")
										.find("ul").slideUp("slow");
							}
						});
		});
	</script>
 </body>
</html>