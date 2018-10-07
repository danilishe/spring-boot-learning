<#import "parts/common.ftl" as c>
<@c.page>
    <h1>Users list</h1>
<table>
    <thead>
    <tr>
        <th>User</th>
        <th>Roles</th>
        <th></th>
    </tr>
    </thead>
<#list users as user>
    <tr>
        <th>${user.username}</th>
        <th><#list user.roles as role>${role}<#sep>, </#list></th>
        <th><a href="/user/${user.id}">Edit</a></th>
    </tr>
</#list>
</table>
</@c.page>