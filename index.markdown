---
layout: page
description: "Lessons learnt about functional programming and more"
---

<div>
{% for post in site.posts %}
    <div class="post-preview">
        <a href="{{ post.url | prepend: site.baseurl }}" target="_self">
            <h2 class="post-title">{{ post.title }}</h2>
            {% if post.subtitle %}
            <h3 class="post-subtitle">
                {{ post.subtitle }}
            </h3>
            {% endif %}
        </a>
        <p class="post-meta">Posted by {% if post.author %}{{ post.author }}{% else %}{{ site.title }}{% endif %} on {{ post.date | date: "%B %-d, %Y" }}</p>
    </div>
    <hr>
{% endfor %}
</div>
