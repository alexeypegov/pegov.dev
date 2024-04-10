<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign title=(note.title)!title>
<#assign slug=(note.slug)!slug>
<#assign tags=(note.tags)!tags>
<#assign body=(note.body)!body>
<#assign date=(note.date)!date>
  
<#assign parsed=date?date("yyyy-MM-dd")>

<article itemProp="blogPost" itemscope itemtype="https://schema.org/BlogPosting">
  <h2 itemprop="headline"><a href="${slug}.html">${title}</a></h2>
  <div class="sub byline">
    <time itemprop="datePublished" class="date" datetime="${parsed?string["yyyy-MM-dd'T00:00:00+00:00'"]}">${parsed?date}</time>
    <div class="tags">
      <span class="tag">${tags?join("</span>,<span class=\"tag\">")}</span>
    </div>
  </div>
  <div itemprop="articleBody" class="text">
  ${body}
  </div>
</article>
