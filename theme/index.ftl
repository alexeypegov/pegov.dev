<#include "header.ftl">
  <#list items as note>
  <#include "note_body.ftl">
</#list>
<nav class="paging">
<#if prev_page?exists>
<a id="prev" href="${prev_page}">назад</a>
</#if>
<#if prev_page?exists && next_page?exists>&#151;</#if>
<#if next_page?exists>
<a id="next" href="${next_page}">вперед</a>
</#if>
</nav>
<#include "footer.ftl">
