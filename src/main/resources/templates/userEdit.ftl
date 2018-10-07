<#import "parts/common.ftl" as c>
<@c.page>
    <h1>User Editor</h1>
<form method="post" action="/user">
    <input type="text" name="username" value="${user.username}">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input value="${user.id}" name="userId" type="hidden">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>

</@c.page>