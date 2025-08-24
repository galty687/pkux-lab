---
layout: page
title: Research
permalink: /en/research/
---

<div class="research-overview">
    <section class="research-intro">
        <h2>Our Research Focus</h2>
        <p>At PKUX LAB, we focus on creating better information experiences through interdisciplinary research that combines human-computer interaction, information architecture, and user experience design.</p>
    </section>

    <section class="research-areas">
        <h2>Research Areas</h2>
        <div class="areas-grid">
            <div class="area-card">
                <h3>Information Experience Design</h3>
                <p>Designing intuitive and effective information experiences for complex digital systems.</p>
            </div>
            <div class="area-card">
                <h3>User-Centered Information Systems</h3>
                <p>Creating information architectures that prioritize user needs and cognitive processes.</p>
            </div>
            <div class="area-card">
                <h3>Human-Computer Interaction</h3>
                <p>Studying how users interact with information interfaces and optimizing these interactions.</p>
            </div>
            <div class="area-card">
                <h3>Data Visualization</h3>
                <p>Developing effective methods for presenting complex information visually.</p>
            </div>
        </div>
    </section>

    <section class="projects-section">
        <h2>Current Projects</h2>
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
                            <span class="project-status status-{{ project.status }}">{{ project.status | capitalize }}</span>
                            {% if project.team %}
                                <span class="project-team-count">{{ project.team.size }} team members</span>
                            {% endif %}
                        </div>
                        <a href="{{ project.url | relative_url }}" class="read-more">Learn More →</a>
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <section class="completed-projects">
        <h2>Completed Projects</h2>
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
                            <span class="project-status status-{{ project.status }}">{{ project.status | capitalize }}</span>
                            {% if project.completion_date %}
                                <span class="completion-date">Completed: {{ project.completion_date | date: "%Y" }}</span>
                            {% endif %}
                        </div>
                        <a href="{{ project.url | relative_url }}" class="read-more">View Project →</a>
                    </div>
                </div>
            {% endfor %}
        </div>
        <div class="view-all-projects">
            <a href="/projects/" class="view-all-button">View All Projects</a>
        </div>
    </section>
</div>