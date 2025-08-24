---
layout: page
title: 我们的团队
permalink: /team/
lang: cn
ref: team
---

<div class="team-modern">
    <!-- Hero Section -->
    <section class="team-hero">
        <div class="hero-content">
            <h1>认识我们的团队</h1>
            <p class="hero-description">PKUX实验室汇聚了一群多元化的研究人员、设计师和学生，他们对创造更好的信息体验充满热情。我们的跨学科团队融合了计算机科学、设计、心理学和认知科学方面的专业知识。</p>
            <div class="team-stats">
                <div class="stat-item">
                    <span class="stat-number">{{ site.team | where: "category", "faculty" | size }}</span>
                    <span class="stat-label">教师</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number">{{ site.team | where: "category", "student" | size }}</span>
                    <span class="stat-label">学生</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number">{{ site.team | where: "category", "alumni" | size }}</span>
                    <span class="stat-label">校友</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Lead Section -->
    <section class="team-section team-lead-section">
        <div class="section-header">
            <h2>团队负责人</h2>
            <p>引领信息体验设计的创新发展</p>
        </div>
        <div class="team-lead-grid">
            {% assign team_leads = site.team | where: "role", "lead" %}
            {% if team_leads.size == 0 %}
                {% assign team_leads = site.team | where: "category", "faculty" | where: "position", "Principal Investigator" %}
            {% endif %}
            {% for member in team_leads %}
                <div class="team-lead-card">
                    <div class="member-avatar">
                        {% if member.image %}
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name_zh | default: member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name_zh | default: member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="avatar-badge">负责人</div>
                    </div>
                    <div class="member-details">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name_zh | default: member.name }}</a></h3>
                        <p class="name-en">{{ member.name }}</p>
                        <p class="position">{{ member.position_zh | default: member.position }}</p>
                        {% if member.research_interests %}
                            <div class="research-tags">
                                {% for interest in member.research_interests limit:4 %}
                                    <span class="research-tag">{{ interest }}</span>
                                {% endfor %}
                            </div>
                        {% endif %}
                        {% if member.email %}
                            <div class="contact-info">
                                <a href="mailto:{{ member.email }}" class="email-link">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
                                        <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.89 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                                    </svg>
                                    {{ member.email }}
                                </a>
                            </div>
                        {% endif %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <!-- PKU Students Section -->
    <section class="team-section pku-students-section">
        <div class="section-header">
            <h2>北京大学学生</h2>
            <p>来自北京大学的优秀学子，推动研究不断前行</p>
        </div>
        <div class="team-grid">
            {% assign pku_students = site.team | where: "category", "student" | where: "university", "PKU" %}
            {% if pku_students.size == 0 %}
                {% assign pku_students = site.team | where: "category", "student" %}
            {% endif %}
            {% for member in pku_students %}
                <div class="team-card pku-card">
                    <div class="member-avatar">
                        {% if member.image %}
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name_zh | default: member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name_zh | default: member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="university-badge pku-badge">北大</div>
                    </div>
                    <div class="member-info">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name_zh | default: member.name }}</a></h3>
                        <p class="name-en">{{ member.name }}</p>
                        <p class="position">{{ member.position_zh | default: member.position }}</p>
                        {% if member.degree %}
                            <p class="degree">{{ member.degree }}</p>
                        {% endif %}
                        {% if member.research_focus %}
                            <p class="research-focus">{{ member.research_focus }}</p>
                        {% endif %}
                        {% if member.email %}
                            <div class="contact-info">
                                <a href="mailto:{{ member.email }}" class="email-link">
                                    <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor">
                                        <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.89 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                                    </svg>
                                    联系
                                </a>
                            </div>
                        {% endif %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <!-- Students from Other Universities Section -->
    <section class="team-section external-students-section">
        <div class="section-header">
            <h2>其他高校学生</h2>
            <p>来自合作院校的协作研究人员</p>
        </div>
        <div class="team-grid">
            {% assign external_students = site.team | where: "category", "student" | where: "university", "external" %}
            {% if external_students.size == 0 %}
                <!-- Placeholder for external students - will be populated as they join -->
                <div class="placeholder-card">
                    <div class="placeholder-icon">
                        <svg width="48" height="48" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/>
                        </svg>
                    </div>
                    <h3>加入我们的合作网络</h3>
                    <p>我们欢迎来自合作院校的学生与我们的研究团队开展协作。</p>
                    <a href="/cn/contact/" class="join-link">联系我们</a>
                </div>
            {% endif %}
            {% for member in external_students %}
                <div class="team-card external-card">
                    <div class="member-avatar">
                        {% if member.image %}
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name_zh | default: member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name_zh | default: member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="university-badge external-badge">{{ member.university_short | default: "外校" }}</div>
                    </div>
                    <div class="member-info">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name_zh | default: member.name }}</a></h3>
                        <p class="name-en">{{ member.name }}</p>
                        <p class="position">{{ member.position_zh | default: member.position }}</p>
                        {% if member.university_full %}
                            <p class="university">{{ member.university_full }}</p>
                        {% endif %}
                        {% if member.research_focus %}
                            <p class="research-focus">{{ member.research_focus }}</p>
                        {% endif %}
                        {% if member.email %}
                            <div class="contact-info">
                                <a href="mailto:{{ member.email }}" class="email-link">
                                    <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor">
                                        <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.89 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                                    </svg>
                                    联系
                                </a>
                            </div>
                        {% endif %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <!-- Team Advisors Section -->
    <section class="team-section advisors-section">
        <div class="section-header">
            <h2>团队顾问</h2>
            <p>指导我们研究方向的杰出专家</p>
        </div>
        <div class="advisors-grid">
            {% assign advisors = site.team | where: "role", "advisor" %}
            {% if advisors.size == 0 %}
                {% assign advisors = site.team | where: "category", "faculty" | where: "position", "Advisor" %}
            {% endif %}
            {% for member in advisors %}
                <div class="advisor-card">
                    <div class="member-avatar">
                        {% if member.image %}
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name_zh | default: member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name_zh | default: member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="avatar-badge advisor-badge">顾问</div>
                    </div>
                    <div class="member-details">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name_zh | default: member.name }}</a></h3>
                        <p class="name-en">{{ member.name }}</p>
                        <p class="position">{{ member.position_zh | default: member.position }}</p>
                        {% if member.affiliation %}
                            <p class="affiliation">{{ member.affiliation }}</p>
                        {% endif %}
                        {% if member.research_interests %}
                            <div class="research-tags">
                                {% for interest in member.research_interests limit:3 %}
                                    <span class="research-tag">{{ interest }}</span>
                                {% endfor %}
                            </div>
                        {% endif %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <!-- Alumni Section -->
    <section class="team-section alumni-section">
        <div class="section-header">
            <h2>杰出校友</h2>
            <p>在行业中发挥影响力的前团队成员</p>
        </div>
        <div class="alumni-grid">
            {% assign alumni = site.team | where: "category", "alumni" %}
            {% for member in alumni %}
                <div class="alumni-card">
                    <div class="alumni-info">
                        <h4>{{ member.name_zh | default: member.name }}</h4>
                        <p class="name-en">{{ member.name }}</p>
                        <p class="graduation">{{ member.graduation_year }}届</p>
                        <p class="current_position">{{ member.current_position }}</p>
                        {% if member.company %}
                            <p class="company">{{ member.company }}</p>
                        {% endif %}
                    </div>
                    <div class="alumni-achievement">
                        {% if member.achievement %}
                            <span class="achievement-badge">{{ member.achievement }}</span>
                        {% endif %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </section>

    <!-- Join Us Section -->
    <section class="join-section">
        <div class="join-content">
            <h2>加入我们的团队</h2>
            <p>我们一直在寻找对信息体验设计充满热情的研究人员和学生。如果您有兴趣加入PKUX实验室，请查看以下机会。</p>
            <div class="opportunities-grid">
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M5 13.18v4L12 21l7-3.82v-4L12 17l-7-3.82zM12 3L1 9l11 6 9-4.91V17h2V9L12 3z"/>
                        </svg>
                    </div>
                    <h3>博士职位</h3>
                    <p>为HCI、信息设计及相关领域的博士生提供全额资助。</p>
                    <ul>
                        <li>包含研究助理职位</li>
                        <li>会议差旅支持</li>
                        <li>导师指导计划</li>
                    </ul>
                </div>
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M12 3L1 9l4 2.18v6L12 21l7-3.82v-6l2-1.09V17h2V9L12 3zm6.82 6L12 12.72 5.18 9 12 5.28 18.82 9zM17 15.99l-5 2.73-5-2.73v-3.72L12 15l5-2.73v3.72z"/>
                        </svg>
                    </div>
                    <h3>硕士研究生</h3>
                    <p>在前沿研究领域与产业合作伙伴开展硕士论文研究机会。</p>
                    <ul>
                        <li>产业合作项目</li>
                        <li>发表论文机会</li>
                        <li>职业发展培训</li>
                    </ul>
                </div>
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M16 4c0-1.11.89-2 2-2s2 .89 2 2-.89 2-2 2-2-.89-2-2zm4 18v-6h2.5l-2.54-7.63A2.996 2.996 0 0 0 17.06 7c-.8 0-1.54.37-2.01.99L12 11.5l-3.05-3.51A2.996 2.996 0 0 0 6.94 7c-1.65 0-2.94 1.29-2.94 2.94 0 .8.31 1.53.87 2.06L8 15l-2.87 3H3v2h18v-2h-1z"/>
                        </svg>
                    </div>
                    <h3>本科生研究</h3>
                    <p>为来自任何大学的积极本科生提供研究助理职位。</p>
                    <ul>
                        <li>灵活时间安排</li>
                        <li>实践经验</li>
                        <li>高年级学生指导</li>
                    </ul>
                </div>
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
                        </svg>
                    </div>
                    <h3>访问学者</h3>
                    <p>我们欢迎访问研究人员和国际合作，共同开展联合研究项目。</p>
                    <ul>
                        <li>短期和长期访问</li>
                        <li>联合发表机会</li>
                        <li>跨文化研究体验</li>
                    </ul>
                </div>
            </div>
            <div class="join-actions">
                <a href="/cn/contact/" class="cta-primary">联系我们</a>
                <a href="/cn/research/" class="cta-secondary">查看研究领域</a>
            </div>
        </div>
    </section>
</div>