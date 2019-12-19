<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    Add new user
    <#if userName??>
        ${message?ifExists}
    </#if>

    <@l.login "/registration" />
</@c.page>
