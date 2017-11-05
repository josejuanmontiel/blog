<#include "header.ftl">

	<#include "menu.ftl">
	<div id="main">
		<#assign post = content />
		<#assign titleH1 = true />

		<#assign indexEs = content.uri?index_of(".es.html") />
		<#assign lengthUri = content.uri?length />

		<#if (post??) >
			<#include "post/content-single.ftl">
		</#if>

		<!-- #include "post/prev-next-post.ftl" -->

		<#include "commons/disqus.ftl">
    </div>

	<#include "commons/sidebar.ftl">
<#include "footer.ftl">
