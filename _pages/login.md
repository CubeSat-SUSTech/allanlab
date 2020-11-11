---
title: "LOGIN"
layout: login
excerpt: "SUSTech Cubesat"
sitemap: false
permalink: /login.html
---

<!-- # Notice

{% for article in site.data.news %}
<p>{{ article.date }} <br>
<em>{{ article.headline }}</em></p>
{% endfor %} -->
<form action="{{ site.url }}{{ site.baseurl }}/allnews.html" onsubmit="return fn()">
    <input type="text" name="userName" />
    <input type="password" name="passWord" />
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