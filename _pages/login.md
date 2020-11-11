---
title: "LOGIN"
layout: loginlay
excerpt: "SUSTech Cubesat"
sitemap: false
permalink: /login/
---

<!-- # Notice

{% for article in site.data.news %}
<p>{{ article.date }} <br>
<em>{{ article.headline }}</em></p>
{% endfor %} -->
<form action="{{ site.url }}{{ site.baseurl }}/pictures.html" onsubmit="return fn()">
    <label for="firstname" class="col-sm-2 control-label">用户名：</label>
    <input type="text" name="userName" placeholder='请输入用户名'>
    <div  class="col-sm-10">
        <input type="password" name="passWord" placeholder='请输入密码'>
    </div>  
    <button type="submit" >submit</button>
</form>
<script>  
    function fn() {
        var flag=true;
        var myUserName = document.querySelectorAll("input")[0];
        var myPassWord = document.querySelectorAll("input")[1];
        if (myUserName.value == "sustech_ess") {
            if (myPassWord.value == "Cu8e$@t_2020") {
                alert("验证成功");
                return flag;
            }
            else {
                flag = false;
                alert("密码错误，请重新输入");
                return flag;
            }
        }
        else {
            flag = false;
            alert("用户名错误，请重新输入！");
            return flag;
        }
    }
</script>
<script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.js">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js">
  </script>