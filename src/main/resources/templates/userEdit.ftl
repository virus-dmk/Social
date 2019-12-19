<#import "parts/common.ftl" as c>

<@c.page>
    User Editor
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}">
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                <#--ставим чекбоксы для ролей, проверяем роли пользователя и если роль есть дописываем checked в input-->
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <#--csrf токен для безопасности, сервер принимает только данные с токеном-->
        <button type="submit">Save</button>
    </form>
</@c.page>