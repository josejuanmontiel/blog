<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
		<h1>Blog</h1>
	</div>
        <#assign lastposts = posts>
	<#list lastposts as post>
  		<#if (post.status == "published" && post.lang = "en")>
  			<a href="/blog/${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
			<p><em>Tags: </em><#list post.tags as tag>
		<a href="/blog/tags/${tag?trim?replace(' ','-')}.html">${tag}</a> 
	</#list></p>
			<a href="https://twitter.com/share" class="twitter-share-button" data-text="${post.title}" data-url="http://josejuanmontiel.github.io/blog/${post.uri}" data-via="accreativos" data-lang="fr">Tweeter</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
			<div class="g-plusone" data-size="medium" data-href="http://josejuanmontiel.github.io/blog/${post.uri}"></div>
			<script type="IN/Share" data-url="http://josejuanmontiel.github.io/blog/${post.uri}" data-counter="right"></script>
			<div class="fb-like" data-href="http://josejuanmontiel.github.io/blog/${post.uri}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>

  			<p>${post.body}</p>
			<p><a href="/blog/${post.uri}#disqus_thread">Comments</a></p>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="/blog/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
