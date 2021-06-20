<#import "parts/common.ftlh" as c>


<@c.page>

    <form method="post">
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" placeholder="Password"/>
            </div>
        </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label"> Email: </label>
                <div class="col-sm-5">
                    <input type="email" class="form-control" name="email" value="${email!''}" />
                </div>
            </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>