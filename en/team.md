---
layout: page
title: Our Team
permalink: /en/team/
lang: en
ref: team
---

<div class="team-modern">
    <!-- Hero Section -->
    <section class="team-hero">
        <div class="hero-content">
            <h1>Meet Our Team</h1>
            <p class="hero-description">PKUX LAB is home to a diverse group of researchers, designers, and students passionate about creating better information experiences. Our interdisciplinary team brings together expertise in computer science, design, psychology, and cognitive science.</p>
            <div class="team-stats">
                <div class="stat-item">
                    <span class="stat-number">{{ site.team | where: "category", "faculty" | size }}</span>
                    <span class="stat-label">Faculty</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number">{{ site.team | where: "category", "student" | size }}</span>
                    <span class="stat-label">Students</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number">{{ site.team | where: "category", "alumni" | size }}</span>
                    <span class="stat-label">Alumni</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Lead Section -->
    <section class="team-section team-lead-section">
        <div class="section-header">
            <h2>Team Lead</h2>
            <p>Leading innovation in information experience design</p>
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
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="avatar-badge">Lead</div>
                    </div>
                    <div class="member-details">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name }}</a></h3>
                        {% if member.name_zh %}
                            <p class="name-zh">{{ member.name_zh }}</p>
                        {% endif %}
                        <p class="position">{{ member.position }}</p>
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
            <h2>PKU Students</h2>
            <p>Bright minds from Peking University driving research forward</p>
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
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="university-badge pku-badge">PKU</div>
                    </div>
                    <div class="member-info">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name }}</a></h3>
                        {% if member.name_zh %}
                            <p class="name-zh">{{ member.name_zh }}</p>
                        {% endif %}
                        <p class="position">{{ member.position }}</p>
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
                                    Contact
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
            <h2>Students from Other Universities</h2>
            <p>Collaborative researchers from partner institutions</p>
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
                    <h3>Join Our Collaborative Network</h3>
                    <p>We welcome students from partner universities to collaborate with our research team.</p>
                    <a href="/contact/" class="join-link">Get in Touch</a>
                </div>
            {% endif %}
            {% for member in external_students %}
                <div class="team-card external-card">
                    <div class="member-avatar">
                        {% if member.image %}
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="university-badge external-badge">{{ member.university_short | default: "EXT" }}</div>
                    </div>
                    <div class="member-info">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name }}</a></h3>
                        {% if member.name_zh %}
                            <p class="name-zh">{{ member.name_zh }}</p>
                        {% endif %}
                        <p class="position">{{ member.position }}</p>
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
                                    Contact
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
            <h2>Team Advisors</h2>
            <p>Distinguished experts guiding our research direction</p>
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
                            <img src="{{ member.image | relative_url }}" alt="{{ member.name }}" />
                        {% else %}
                            <div class="avatar-placeholder">{{ member.name | slice: 0, 2 | upcase }}</div>
                        {% endif %}
                        <div class="avatar-badge advisor-badge">Advisor</div>
                    </div>
                    <div class="member-details">
                        <h3><a href="{{ member.url | relative_url }}">{{ member.name }}</a></h3>
                        {% if member.name_zh %}
                            <p class="name-zh">{{ member.name_zh }}</p>
                        {% endif %}
                        <p class="position">{{ member.position }}</p>
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
            <h2>Notable Alumni</h2>
            <p>Former team members making impact in the industry</p>
        </div>
        <div class="alumni-grid">
            {% assign alumni = site.team | where: "category", "alumni" %}
            {% for member in alumni %}
                <div class="alumni-card">
                    <div class="alumni-info">
                        <h4>{{ member.name }}</h4>
                        {% if member.name_zh %}
                            <p class="name-zh">{{ member.name_zh }}</p>
                        {% endif %}
                        <p class="graduation">Class of {{ member.graduation_year }}</p>
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
            <h2>Join Our Team</h2>
            <p>We are always looking for passionate researchers and students interested in information experience design. If you're interested in joining PKUX LAB, explore the opportunities below.</p>
            <div class="opportunities-grid">
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M5 13.18v4L12 21l7-3.82v-4L12 17l-7-3.82zM12 3L1 9l11 6 9-4.91V17h2V9L12 3z"/>
                        </svg>
                    </div>
                    <h3>PhD Positions</h3>
                    <p>Full funding available for PhD students in HCI, Information Design, and related fields.</p>
                    <ul>
                        <li>Research assistantship included</li>
                        <li>Conference travel support</li>
                        <li>Mentorship program</li>
                    </ul>
                </div>
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M12 3L1 9l4 2.18v6L12 21l7-3.82v-6l2-1.09V17h2V9L12 3zm6.82 6L12 12.72 5.18 9 12 5.28 18.82 9zM17 15.99l-5 2.73-5-2.73v-3.72L12 15l5-2.73v3.72z"/>
                        </svg>
                    </div>
                    <h3>Master's Students</h3>
                    <p>Master's thesis opportunities in cutting-edge research areas with industry partnerships.</p>
                    <ul>
                        <li>Industry collaboration projects</li>
                        <li>Publication opportunities</li>
                        <li>Professional development</li>
                    </ul>
                </div>
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M16 4c0-1.11.89-2 2-2s2 .89 2 2-.89 2-2 2-2-.89-2-2zm4 18v-6h2.5l-2.54-7.63A2.996 2.996 0 0 0 17.06 7c-.8 0-1.54.37-2.01.99L12 11.5l-3.05-3.51A2.996 2.996 0 0 0 6.94 7c-1.65 0-2.94 1.29-2.94 2.94 0 .8.31 1.53.87 2.06L8 15l-2.87 3H3v2h18v-2h-1z"/>
                        </svg>
                    </div>
                    <h3>Undergraduate Research</h3>
                    <p>Research assistant positions for motivated undergraduate students from any university.</p>
                    <ul>
                        <li>Flexible schedules</li>
                        <li>Hands-on experience</li>
                        <li>Mentorship from senior students</li>
                    </ul>
                </div>
                <div class="opportunity-card">
                    <div class="opportunity-icon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
                        </svg>
                    </div>
                    <h3>Visiting Scholars</h3>
                    <p>We welcome visiting researchers and international collaborations for joint research projects.</p>
                    <ul>
                        <li>Short-term and long-term visits</li>
                        <li>Joint publication opportunities</li>
                        <li>Cross-cultural research experience</li>
                    </ul>
                </div>
            </div>
            <div class="join-actions">
                <a href="/contact/" class="cta-primary">Contact Us</a>
                <a href="/research/" class="cta-secondary">View Research Areas</a>
            </div>
        </div>
    </section>
</div>