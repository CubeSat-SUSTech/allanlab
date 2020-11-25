---
title: "SUSTech Cubesat. - Files"
layout: piclay
excerpt: "SUSTech Cubesat. -- Files"
permalink: /files.html
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
        {% for article in site.data.files limit:40 %}
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
    </tbody>
</table>

<!-- # Pictures
Jump to: [Leiden](#leiden), [ETHZ](#ethz), [Cornell](#cornell), [St Andrews](#st-andrews)


## Leiden

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
