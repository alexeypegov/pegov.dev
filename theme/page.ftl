<#include "header.ftl">
<article>
  <div itemprop="articleBody" class="text">
    ${body}
  </div>
  <#if updated?exists>
  <p>
  Обновлено: ${updated}
  </p>
  </#if>
</article>
<#include "footer.ftl">