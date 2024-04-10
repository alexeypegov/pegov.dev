<!DOCTYPE html>
<html lang="${vars.blog.lang}">
  <head itemscope itemtype="http://schema.org/WebSite">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <#if title??>
    <title>${title} - ${vars.blog.title}</title>
    <#elseif ndx?exists && ndx gt 1>
    <title>Page ${ndx} - ${vars.blog.title}</title>
    <#else>
    <title>${vars.blog.title}</title>
    </#if>
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">

    <link rel="index" id="link-index" href="${vars.blog.url}">
    <#if prev_page?exists>
      <#assign earlier = vars.blog.url + "/" + prev_page>
    <link rel="prev" id="link-earlier" href="${earlier}">
    <#else>
    <link rel="canonical" href="${vars.blog.url}">
    </#if>
    <#if next_page?exists>
      <#assign later = vars.blog.url + "/" + next_page>
    <link rel="next" id="link-later" href="${later}">
    </#if>
    <#if ndx?exists && ndx gt 1>
    <meta name="robots" content="noindex">
    </#if>

    <!-- opengraph meta, etc -->
    <meta property="og:type" content="website">
    <meta property="og:locale" content="${vars.blog.locale}">
    <meta property="og:site_name" content="${vars.blog.title}">
    <meta name="keywords" content="${vars.blog.keywords}">
    <#assign summary=summary!vars.blog.description>
    <meta name="description" content="${summary}">
    <meta property="og:description" content="${summary}">
    <#assign title=title!vars.blog.title>
    <meta property="og:title" content="${title}">
    <#if link??>
      <#assign url = vars.blog.url + link>
    <#elseif ndx?? && ndx gt 1>
      <#assign url = vars.blog.url + "/page-" + ndx + ".html">
    <#else>
      <#assign url = vars.blog.url>
    </#if>
    <meta property="og:url" content="${url}">
    <#if tags??>
      <#list tags as tag>
    <meta property="og:tag" content="${tag}">
      </#list>
    </#if>
    <#assign cover=cover!vars.blog.cover>
    <meta property="og:image" content="${vars.blog.url + cover}">

    <!-- favicons -->
    <#list vars.icons as icon>
    <#assign type=icon.type!"image/png">
    <#if icon.sizes??>
    <link rel="${icon.rel}" type="${type}" sizes="${icon.sizes}" href="${icon.href}"/>
    <#else>
    <link rel="${icon.rel}" type="${type}" href="${icon.href}"/>
    </#if>
    </#list>
    <link rel="alternate" type="application/atom+xml" title="${vars.feed.title}" href="${vars.feed.url}">
    <link rel="stylesheet" type="text/css" href="styles/styles.css">
  </head>
<body>
<header itemscope itemtype="https://schema.org/WPHeader">
  <div id="logo">
    <img src="images/userpic2019.jpg" width="100"/>
    <div id="title">
      <h1><a href="/">${vars.blog.title}</a></h1>
      <span>${vars.blog.description}</span>
    </div>
  </div>
  <nav itemscope itemtype="https://schema.org/SiteNavigationElement">
    <#list vars.links as link>
    <a href="${link.url}">${link.title}</a>
    </#list>
  </nav>
</header>
<main itemscope itemtype="https://schema.org/Blog">
