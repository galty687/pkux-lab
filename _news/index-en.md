---
layout: page
title: News & Events
permalink: /en/news/
lang: en
ref: news
paginate: 5
---

<div class="news-simple">
    <header class="news-header">
        <h1>News & Events</h1>
        <p>Latest updates from PKUX LAB</p>
    </header>

    <div class="news-list">
        {% assign sorted_news = site.news | where: "lang", "en" | sort: 'date' | reverse %}
        {% for post in sorted_news limit: 5 %}
            <article class="news-item">
                <div class="news-date">
                    <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time>
                </div>
                <div class="news-content">
                    <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
                    <p>{{ post.excerpt | strip_html | truncate: 200 }}</p>
                </div>
            </article>
        {% endfor %}
    </div>

    <!-- Simple pagination -->
    {% assign total_posts = site.news | where: "lang", "en" | size %}
    {% if total_posts > 5 %}
        <nav class="pagination">
            <span class="pagination-info">Showing latest 5 news, {{ total_posts }} total</span>
        </nav>
    {% endif %}
</div>