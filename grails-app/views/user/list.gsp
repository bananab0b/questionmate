<table>
    <tr><th>Login</th><th>Email</th></tr>
    <g:each in="${userList}" var="user">
        <tr><td>${user.login}</td>><td>${user.email}</td></tr>
    </g:each>
</table>