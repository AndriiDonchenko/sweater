<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="mb-3"><label for="exampleInputEmail1" class="form-label"> User Name :  </label>
        <div class="col-sm-5">
            <input type="text" class="form-control" name="username" placeholder="User name"/>
        </div>
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label"> Password: </label>
        <div class="col-sm-5">
            <input type="password" class="form-control" name="password" placeholder="Password"/>
        </div>
    </div>
    <#if isRegisterForm>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label"> Email: </label>
        <div class="col-sm-5">
            <input type="email" class="form-control" name="email" />
        </div>
    </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <#if !isRegisterForm><a href="/registration">Add new user </a></#if>
    <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
</form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Sign out</button>
    </form>
</#macro>