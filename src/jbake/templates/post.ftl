<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<#assign indexEs = content.uri?index_of(".es.html") />
		<#assign lengthUri = content.uri?length />

		<#if (indexEs == (lengthUri-8))>
			<h1>${content.title} <a href="${"/blog/"+content.uri?substring(0,lengthUri-8)+".html"}">(English version)</a></h1>
		<#else>
			<h1>${content.title} <a href="${"/blog/"+content.uri?substring(0,lengthUri-5)+".es.html"}">(Spanish version)</a></h1>
		</#if>

	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>
	<p><em>Tags: <#list content.tags as tag></em>
		<a href="/blog/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
	</#list></p>
	<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://josejuanmontiel.github.io/blog/${content.uri}" data-via="accreativos" data-lang="es">Tweeter</a>
	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
 	<div class="g-plusone" data-size="medium" data-href="http://josejuanmontiel.github.io/blog/${content.uri}"></div>
	<script type="IN/Share" data-url="http://josejuanmontiel.github.io/blog/${content.uri}" data-counter="right"></script>
	<div class="fb-like" data-href="http://josejuanmontiel.github.io/blog/${content.uri}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>

	<p>${content.body}</p>

	<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://josejuanmontiel.github.io/blog/${content.uri}" data-via="accreativos" data-lang="es">Tweeter</a>
	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	<div class="g-plusone" data-size="medium" data-href="http://josejuanmontiel.github.io/blog/${content.uri}"></div>
	<script type="IN/Share" data-url="http://josejuanmontiel.github.io/blog/${content.uri}" data-counter="right"></script>
	<div class="fb-like" data-href="http://josejuanmontiel.github.io/blog/${content.uri}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>

<div id="disqus_thread"></div>
    <script type="text/javascript">
        var disqus_shortname = 'josejuanmontiel';
	var disqus_identifier = '${content.id}';
        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>
    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
    <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>

	<hr>

<#include "footer.ftl">
