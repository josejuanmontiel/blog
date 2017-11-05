<header>
    <div class="title">

        <#if (titleH1 == true)??>
            <#if (indexEs == (lengthUri-8))>
              <h1><a href="${content.rootpath}${post.noExtensionUri!post.uri?substring(0,lengthUri-8)+".html"}">${post.title} (English version)</a></h1>
            <#else>
              <h1><a href="${content.rootpath}${post.noExtensionUri!post.uri?substring(0,lengthUri-5)+".es.html"}">${post.title} (Spanish version)</a></h1>
            </#if>
            <#assign titleH1 = false />
        <#else>
            <h2><a href="${content.rootpath}${post.noExtensionUri!post.uri}">${post.title}</a></h2>
        </#if>

       	<#if (post.description?has_content)>
            <p>${post.description}</p>
        </#if>
    </div>
    <div class="meta">
         <time class="published"
            datetime='${post.date?string("MMM dd, yyyy")}'>
            ${post.date?string("MMM dd, yyyy")}</time>
            <#if ((config.site_includeReadTime!'true')?boolean == true)><div class="published eta"></div></#if>
        <#if (config.site_author_avatar??) >
        <span class="author"/><span class="name">${post.author!config.site_author}</span><img src="${content.rootpath}${post.author_avatar!config.site_author_avatar}" alt="${post.author!config.site_author}" /></span>
        </#if>
    </div>
</header>
