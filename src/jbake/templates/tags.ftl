<#include "header.ftl">

	<#include "menu.ftl">

    <div id="main">
        <h1>Tag: ${tag}</h1>

        <#list tag_posts as post>
					<#if post.lang = "en">
        		<#include "post/content-list.ftl">
        	</#if>
        </#list>
    </div>

	<#include "commons/sidebar.ftl">
<#include "footer.ftl">
