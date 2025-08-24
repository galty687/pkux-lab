---
layout: page
title: 新闻动态
permalink: /cn/news/
lang: cn
ref: news
paginate: 5
---

<div class="news-simple">
    <header class="news-header">
        <h1>新闻动态</h1>
        <p>PKUX实验室最新动态</p>
    </header>

    <div class="news-list">
        {% assign sorted_news = site.news | where: "lang", "cn" | sort: 'date' | reverse %}
        {% for post in sorted_news limit: 5 %}
            <article class="news-item">
                <div class="news-date">
                    <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%Y年%m月%d日" }}</time>
                </div>
                <div class="news-content">
                    <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
                    <p>{{ post.excerpt | strip_html | truncate: 200 }}</p>
                </div>
            </article>
        {% endfor %}
    </div>

    <!-- Simple pagination -->
    {% assign total_posts = site.news | where: "lang", "cn" | size %}
    {% if total_posts > 5 %}
        <nav class="pagination">
            <span class="pagination-info">显示最新 5 条新闻，共 {{ total_posts }} 条</span>
        </nav>
    {% endif %}
</div>