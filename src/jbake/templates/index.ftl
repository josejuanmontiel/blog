<#include "header.ftl">

	<#include "menu.ftl">

	<div id="main">
    <#list published_posts as post>
			<#include "post/content-single.ftl">
		</#list>

		<!-- #include "post/prev-next.ftl" -->
	 </div>

	<#include "commons/sidebar.ftl">
<#include "footer.ftl">
