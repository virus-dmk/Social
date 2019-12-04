<#import "parts/common.ftl" as c>

<@c.page>
    <span>List of users</span>

    <table>
        <thead>
        <tr>
            <th>Username</th>
            <th>Role</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td>
                    <#list user.roles as role>
                        ${role}<#sep>,
                    </#list>
                </td>
                <td><a href="/user/${user.id}">Edit</a> </td>
            </tr>
        </#list>
        </tbody>
    </table>


</@c.page>