---
layout: page
title: 研究方向
permalink: /cn/research/
lang: cn
ref: research
---

<div class="research-overview">
    <section class="research-intro">
        <h2>我们的研究重点</h2>
        <p>在PKUX实验室，我们专注于通过结合人机交互、信息架构和用户体验设计的跨学科研究，创造更好的信息体验。</p>
    </section>

    <section class="research-areas">
        <h2>研究领域</h2>
        <div class="areas-grid">
            <div class="area-card">
                <h3>信息体验设计</h3>
                <p>为复杂数字系统设计直观有效的信息体验。</p>
            </div>
            <div class="area-card">
                <h3>以用户为中心的信息系统</h3>
                <p>创建优先考虑用户需求和认知过程的信息架构。</p>
            </div>
            <div class="area-card">
                <h3>人机交互</h3>
                <p>研究用户如何与信息界面交互并优化这些交互。</p>
            </div>
            <div class="area-card">
                <h3>数据可视化</h3>
                <p>开发有效的复杂信息可视化呈现方法。</p>
            </div>
        </div>
    </section>

    <section class="projects-section">
        <h2>在研项目</h2>
        <div class="projects-grid">
            {% assign ongoing_projects = site.projects | where: "status", "ongoing" %}
            {% for project in ongoing_projects %}
                <div class="project-card">
                    {% if project.image %}
                        <img src="{{ project.image | relative_url }}" alt="{{ project.title }}" />
                    {% endif %}
                    <div class="project-content">
                        <h3><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h3>
                        <p class="project-excerpt">{{ project.excerpt | strip_html | truncate: 150 }}</p>
                        <div class="project-meta">
                            <span class="project-status status-{{ project.status }}">进行中</span>
                            {% if project.team %}
                                <span class="project-team-count">{{ project.team.size }} 名团队成员</span>
                            {% endif %}
                        </div>
                        <a href="{{ project.url | relative_url }}" class="read-more">了解更多 →</a>
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <section class="completed-projects">
        <h2>已完成项目</h2>
        <div class="projects-grid">
            {% assign completed_projects = site.projects | where: "status", "completed" | limit: 6 %}
            {% for project in completed_projects %}
                <div class="project-card">
                    {% if project.image %}
                        <img src="{{ project.image | relative_url }}" alt="{{ project.title }}" />
                    {% endif %}
                    <div class="project-content">
                        <h3><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h3>
                        <p class="project-excerpt">{{ project.excerpt | strip_html | truncate: 150 }}</p>
                        <div class="project-meta">
                            <span class="project-status status-{{ project.status }}">已完成</span>
                            {% if project.completion_date %}
                                <span class="completion-date">完成时间: {{ project.completion_date | date: "%Y年" }}</span>
                            {% endif %}
                        </div>
                        <a href="{{ project.url | relative_url }}" class="read-more">查看项目 →</a>
                    </div>
                </div>
            {% endfor %}
        </div>
        <div class="view-all-projects">
            <a href="/cn/projects/" class="view-all-button">查看所有项目</a>
        </div>
    </section>
</div>