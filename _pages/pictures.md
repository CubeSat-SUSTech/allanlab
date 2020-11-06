---
title: "SUSTech Cubesat. - Files"
layout: piclay
excerpt: "SUSTech Cubesat. -- Files"
permalink: /files/
---

<table id="dataListTable" class="table table-condensed table-hover" style="display:block;">
    <tbody> 
        <tr>
            <td class='title' colspan='3'>
                File Download
            </td>
        </tr>            
        <tr>
            <th class="sort1">
                Derial Number
            </th>
            <th class="sort2 text-center">
                Data
            </th>
            <th class="sort3">
                Download
            </th>
        </tr>
        {% for article in site.data.files limit:50 %}
        <tr>
            <td class="sort1">
                {{ article.num }}
            </td>
            <td id="aa" class="sort2">
                {{ article.title }}
            </td>
            <td class="sort3">
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_0" href="{{ site.url }}{{ site.baseurl }}/references/{{ article.title }}" target="_blank">下载</a>
            </td>
        </tr>
        {% endfor %}      
        <!-- <tr>
            <td class="sort1">
                1
            </td>
            <td id="aa" class="sort2">
                try.rar
            </td>
            <td class="sort3">
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_0" href="{{ site.url }}{{ site.baseurl }}/downloads/try.rar" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                2
            </td>
            <td id="aa" class="sort2">
                beijing.rar
            </td>
            <td class="sort3"> 
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_1" href="download.aspx?FileID=778" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                3
            </td>
            <td id="aa" class="sort2">
                chongqing.rar
            </td>
            <td class="sort3">  
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_2" href="download.aspx?FileID=779" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                4
            </td>
            <td id="aa" class="sort2">
                fujian.rar
            </td>
            <td class="sort3">               
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_3" href="download.aspx?FileID=1258" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                5
            </td>
            <td id="aa" class="sort2">
                gansu.rar
            </td>
            <td class="sort3">   
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_4" href="download.aspx?FileID=1339" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                6
            </td>
            <td id="aa" class="sort2">
                guangdong.rar
            </td>
            <td class="sort3"> 
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_5" href="download.aspx?FileID=1259" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                7
            </td>
            <td id="aa" class="sort2">
                guangxi.rar
            </td>
            <td class="sort3">        
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_6" href="download.aspx?FileID=1340" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                8
            </td>
            <td id="aa" class="sort2">
                guizhou.rar
            </td>
            <td class="sort3">  
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_7" href="download.aspx?FileID=1260" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                9
            </td>
            <td id="aa" class="sort2">
                hainan.rar
            </td>
            <td class="sort3">                  
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_8" href="download.aspx?FileID=1261" target="_blank">下载</a>
            </td>
        </tr>             
        <tr>
            <td class="sort1">
                10
            </td>
            <td id="aa" class="sort2">
                hebei.rar
            </td>
            <td class="sort3">                   
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_9" href="download.aspx?FileID=780" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                11
            </td>
            <td id="aa" class="sort2">
                heilj.rar
            </td>
            <td class="sort3">            
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_10" href="download.aspx?FileID=1341" target="_blank">下载</a>
            </td>
        </tr>    
        <tr>
            <td class="sort1">
                12
            </td>
            <td id="aa" class="sort2">
                henan.rar
            </td>
            <td class="sort3">                    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_11" href="download.aspx?FileID=1262" target="_blank">下载</a>
            </td>
        </tr>            
        <tr>
            <td class="sort1">
                13
            </td>
            <td id="aa" class="sort2">
                hubei.rar
            </td>
            <td class="sort3">                         
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_12" href="download.aspx?FileID=1342" target="_blank">下载</a>
            </td>
        </tr>            
        <tr>
            <td class="sort1">
                14
            </td>
            <td id="aa" class="sort2">
                hunan.rar
            </td>
            <td class="sort3">             
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_13" href="download.aspx?FileID=1343" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                15
            </td>
            <td id="aa" class="sort2">
                info.rar
            </td>
            <td class="sort3">      
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_14" href="download.aspx?FileID=1344" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                16
            </td>
            <td id="aa" class="sort2">
                jiangsu.rar
            </td>
            <td class="sort3">
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_15" href="download.aspx?FileID=781" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                17
            </td>
            <td id="aa" class="sort2">
                jiangxi.rar
            </td>
            <td class="sort3">   
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_16" href="download.aspx?FileID=1263" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                18
            </td>
            <td id="aa" class="sort2">
                jilin.rar
            </td>
            <td class="sort3">    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_17" href="download.aspx?FileID=1345" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                19
            </td>
            <td id="aa" class="sort2">
                liaoning.rar
            </td>
            <td class="sort3">          
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_18" href="download.aspx?FileID=1346" target="_blank">下载</a>
            </td>
        </tr> 
        <tr>
            <td class="sort1">
                20
            </td>
            <td id="aa" class="sort2">
                neimeng.rar
            </td>
            <td class="sort3">    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_19" href="download.aspx?FileID=1347" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                21
            </td>
            <td id="aa" class="sort2">
                ningxia.rar
            </td>
            <td class="sort3">                     
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_20" href="download.aspx?FileID=1348" target="_blank">下载</a>
            </td>
        </tr> 
        <tr>
            <td class="sort1">
                22
            </td>
            <td id="aa" class="sort2">
                qinghai.rar
            </td>
            <td class="sort3">     
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_21" href="download.aspx?FileID=1349" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                23
            </td>
            <td id="aa" class="sort2">
                shaanxi.rar
            </td>
            <td class="sort3">    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_22" href="download.aspx?FileID=1350" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                24
            </td>
            <td id="aa" class="sort2">
                shandong.rar
            </td>
            <td class="sort3">    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_23" href="download.aspx?FileID=782" target="_blank">下载</a>
            </td>
        </tr>  
        <tr>
            <td class="sort1">
                25
            </td>
            <td id="aa" class="sort2">
                shanghai.rar
            </td>
            <td class="sort3">                   
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_24" href="download.aspx?FileID=783" target="_blank">下载</a>
            </td>
        </tr>     
        <tr>
            <td class="sort1">
                26
            </td>
            <td id="aa" class="sort2">
                shanxi.rar
            </td>
            <td class="sort3">                      
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_25" href="download.aspx?FileID=1264" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                27
            </td>
            <td id="aa" class="sort2">
                sichuan.rar
            </td>
            <td class="sort3">                       
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_26" href="download.aspx?FileID=1351" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                28
            </td>
            <td id="aa" class="sort2">
                taiwan.rar
            </td>
            <td class="sort3">   
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_27" href="download.aspx?FileID=1352" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                29
            </td>
            <td id="aa" class="sort2">
                tianjin.rar
            </td>
            <td class="sort3">                        
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_28" href="download.aspx?FileID=784" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                30
            </td>
            <td id="aa" class="sort2">
                xinjiang.rar
            </td>
            <td class="sort3">    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_29" href="download.aspx?FileID=1353" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                31
            </td>
            <td id="aa" class="sort2">
                xizang.rar
            </td>
            <td class="sort3">                     
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_30" href="download.aspx?FileID=1354" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                32
            </td>
            <td id="aa" class="sort2">
                yunnan.rar
            </td>
            <td class="sort3">
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_31" href="download.aspx?FileID=1355" target="_blank">下载</a>
            </td>
        </tr>
        <tr>
            <td class="sort1">
                33
            </td>
            <td id="aa" class="sort2">
                zhejiang.rar
            </td>
            <td class="sort3">    
                <a id="ContentPlaceHolder1_rf_rep_DataList_down_allow_32" href="download.aspx?FileID=1265" target="_blank">下载</a>
            </td>
        </tr>         -->
    </tbody>
</table>

<!-- # Pictures
Jump to: [Leiden](#leiden), [ETHZ](#ethz), [Cornell](#cornell), [St Andrews](#st-andrews)


<!-- ## Leiden

#### Timelapse of our STM assembling [(see LION news item)](https://www.physics.leidenuniv.nl/index.php?id=11573&news=867&type=lion&ln=EN):
<iframe width="560" height="315" src="https://www.youtube.com/embed/3iKvUMv1h5A" frameborder="0" allowfullscreen></iframe>

#### Gallery
(Right-click *'view image'* to see a larger image.)
{% assign number_printed = 0 %}
{% for pic in site.data.pictures_Leiden %}

{% assign even_odd = number_printed | modulo: 4 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-3 clearfix">
<img src="{{ site.url }}{{ site.baseurl }}/images/picpic/Gallery/{{ pic.image }}" class="img-responsive" width="95%" style="float: left" />
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd > 2 %}
</div>
{% endif %}


{% endfor %}

{% assign even_odd = number_printed | modulo: 4 %}
{% if even_odd == 1 %}
</div>
{% endif %}

{% if even_odd == 2 %}
</div>
{% endif %}

{% if even_odd == 3 %}
</div>
{% endif %}

<p> &nbsp; </p>

First advertisement.
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/picpic/WebpageLeiden_red.jpg" width="60%" >
</figure>


## ETHZ
From the [group of Andreas Wallraff](http://www.qudev.ethz.ch/).
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/picpic/WebpageETH_red.jpg" width="60%">
</figure>

## Cornell
From the [group of Seamus JC Davis](http://davisgroup.lassp.cornell.edu).
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/picpic/WebpageCornell_red.jpg" width="60%">
</figure>

## St Andrews
From the [group of Felix Baumberger](http://dqmp.unige.ch/baumberger/) (now at University of Geneva).
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/picpic/WebpageSTA_red.jpg" width="60%">
</figure> --> 
