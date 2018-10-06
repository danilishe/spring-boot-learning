<#-- @ftlvariable name="messages" type="java.util.List<domain.Message>" -->
<#import "parts/common.ftl" as c>
<#import  "parts/login.ftl" as l>
<@c.page>
<div>
<@l.logout/>
</div>
<div>
    <form method="post" action="main">
        <input type="text" name="text" placeholder="Message">
        <input type="text" name="tag" placeholder="Tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <button type="submit">Отправить</button>
    </form>
</div>
<div>
    <form method="get" action="/main">
        <input name="filter" placeholder="Filter" value="${filter!}">
        <button type="submit">Искать</button>
    </form>
</div>
<h2>Список сообщений</h2>
<div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <u>${message.authorName}</u>
        </div>
    <#else >
        No messages
    </#list>
</div>
</@c.page>