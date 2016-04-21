<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!DOCTYPE html>
<!--[if IE 6]><html class="ie6 lte9 lte8 lte7" lang="zh-CN"><![endif]-->
<!--[if IE 8]><html class="ie8 lte9 lte8" lang="zh-CN"><![endif]-->
<!--[if IE 9]><html class="ie9 lte9" lang="zh-CN"><![endif]-->
<!--[if IE 7]><html class="ie7 lte9 lte8 lte7" lang="zh-CN"><![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8) | !(IE 9)  ]><!--><html lang="zh-CN"><!--<![endif]-->
<head>
	<base href="<%=basePath%>" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>新闻添加</title>
	<link rel="stylesheet" type="text/css" href="admin/assets/css/base.css" />
	<link rel="stylesheet" type="text/css" href="admin/assets/css/style.css" />
</head>
<body>
	<div class="container">
		<div class="toolbar">
			<div class="crumbs">
				<a href="#">新闻</a> -&gt; <a href="#">新闻管理</a> -&gt; <span>添加</span>
			</div>
			<div class="action">
				<a href="<%=basePath%>news/v_list.do" class="btn" target="_self">返回列表</a>
			</div>
		</div>
		<div class="mod">
			<div class="bd">
			<form action="news/o_add.do" method="post">
				<table class="ui-table">
					<tbody>
						<tr>
							<th width="120"><label for="title">新闻名:</label></th>
							<td>
								<input type="text" id="title" name="title" maxlength="100"/>
								<span class="required">*</span>
							</td>
						</tr>
						<tr>
							<th><label for="content"></label>文章内容:</th>
							<td colspan="10">
								<textarea maxlength="10000" id="intro" name="content" rows="5" cols="70"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="4" class="tc">
								<button type="submit" class="btn" name="button1" id="button1">提交</button>
								<button type="reset" class="btn" name="button2" id="button2">重置</button>
							</td>
						</tr>
					</tbody>
				</table>
				</form>
			</div>
			<!-- /.mod-bd -->
		</div>
		<!-- /.mod -->
	</div>
	<!-- /.container  -->
</body>
</html>
