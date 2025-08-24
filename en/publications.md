---
layout: page
title: Publications
permalink: /en/publications/
---

<div class="publications-overview">
    <section class="publications-intro">
        <h2>Research Publications</h2>
        <p>Our research contributes to the advancement of information experience design through peer-reviewed publications, conference presentations, and collaborative research with industry partners.</p>
        
        <div class="publication-stats">
            <div class="stat-item">
                <h3>50+</h3>
                <p>Peer-reviewed Papers</p>
            </div>
            <div class="stat-item">
                <h3>15+</h3>
                <p>Top-tier Venues</p>
            </div>
            <div class="stat-item">
                <h3>1200+</h3>
                <p>Total Citations</p>
            </div>
            <div class="stat-item">
                <h3>8</h3>
                <p>Best Paper Awards</p>
            </div>
        </div>
    </section>

    <section class="recent-publications">
        <h2>Recent Publications (2023-2024)</h2>
        <div class="publications-list">
            {% assign recent_pubs = site.publications | where: "year", 2024 %}
            {% assign recent_pubs_2023 = site.publications | where: "year", 2023 %}
            {% assign all_recent = recent_pubs | concat: recent_pubs_2023 | sort: "date" | reverse %}
            
            {% for pub in all_recent %}
                <article class="publication-item">
                    <div class="publication-content">
                        <h3 class="publication-title">{{ pub.title }}</h3>
                        <p class="publication-authors">{{ pub.authors }}</p>
                        <p class="publication-venue">
                            <strong>{{ pub.venue }}</strong>
                            {% if pub.year %} • {{ pub.year }}{% endif %}
                            {% if pub.pages %} • {{ pub.pages }}{% endif %}
                        </p>
                        {% if pub.abstract %}
                            <p class="publication-abstract">{{ pub.abstract | truncate: 200 }}</p>
                        {% endif %}
                        <div class="publication-links">
                            {% if pub.doi %}
                                <a href="https://doi.org/{{ pub.doi }}" class="pub-link" target="_blank">DOI</a>
                            {% endif %}
                            {% if pub.pdf %}
                                <a href="{{ pub.pdf | relative_url }}" class="pub-link" target="_blank">PDF</a>
                            {% endif %}
                            {% if pub.bibtex %}
                                <a href="{{ pub.bibtex | relative_url }}" class="pub-link">BibTeX</a>
                            {% endif %}
                            {% if pub.code %}
                                <a href="{{ pub.code }}" class="pub-link" target="_blank">Code</a>
                            {% endif %}
                        </div>
                        {% if pub.awards %}
                            <div class="publication-awards">
                                {% for award in pub.awards %}
                                    <span class="award-badge">🏆 {{ award }}</span>
                                {% endfor %}
                            </div>
                        {% endif %}
                    </div>
                </article>
            {% endfor %}
        </div>
    </section>

    <section class="publications-by-year">
        <h2>Publications by Year</h2>
        
        {% assign years = site.publications | map: "year" | uniq | sort | reverse %}
        {% for year in years %}
            {% if year != 2024 and year != 2023 %}
                <div class="year-section">
                    <h3>{{ year }}</h3>
                    <div class="publications-list">
                        {% assign year_pubs = site.publications | where: "year", year | sort: "date" | reverse %}
                        {% for pub in year_pubs %}
                            <article class="publication-item compact">
                                <div class="publication-content">
                                    <h4 class="publication-title">{{ pub.title }}</h4>
                                    <p class="publication-authors">{{ pub.authors }}</p>
                                    <p class="publication-venue">
                                        <strong>{{ pub.venue }}</strong>
                                        {% if pub.pages %} • {{ pub.pages }}{% endif %}
                                    </p>
                                    <div class="publication-links">
                                        {% if pub.doi %}
                                            <a href="https://doi.org/{{ pub.doi }}" class="pub-link" target="_blank">DOI</a>
                                        {% endif %}
                                        {% if pub.pdf %}
                                            <a href="{{ pub.pdf | relative_url }}" class="pub-link" target="_blank">PDF</a>
                                        {% endif %}
                                    </div>
                                </div>
                            </article>
                        {% endfor %}
                    </div>
                </div>
            {% endif %}
        {% endfor %}
    </section>

    <section class="publication-venues">
        <h2>Publication Venues</h2>
        <p>Our research appears in top-tier conferences and journals in human-computer interaction, information systems, and design.</p>
        
        <div class="venues-grid">
            <div class="venue-category">
                <h3>Top Conferences</h3>
                <ul>
                    <li><strong>CHI</strong> - ACM Conference on Human Factors in Computing Systems</li>
                    <li><strong>UIST</strong> - ACM User Interface Software and Technology</li>
                    <li><strong>CSCW</strong> - ACM Conference on Computer-Supported Cooperative Work</li>
                    <li><strong>DIS</strong> - ACM Designing Interactive Systems</li>
                    <li><strong>IUI</strong> - ACM Intelligent User Interfaces</li>
                </ul>
            </div>
            <div class="venue-category">
                <h3>Leading Journals</h3>
                <ul>
                    <li><strong>IJHCS</strong> - International Journal of Human-Computer Studies</li>
                    <li><strong>ToCHI</strong> - ACM Transactions on Computer-Human Interaction</li>
                    <li><strong>JCSCW</strong> - Journal of Computer Supported Cooperative Work</li>
                    <li><strong>CHB</strong> - Computers in Human Behavior</li>
                    <li><strong>UAIS</strong> - Universal Access in the Information Society</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="collaboration-impact">
        <h2>Research Impact & Collaborations</h2>
        <div class="impact-grid">
            <div class="impact-item">
                <h3>Industry Partnerships</h3>
                <p>Collaborations with Adobe, Microsoft, Tencent, and Alibaba have led to practical applications of our research in real-world products.</p>
            </div>
            <div class="impact-item">
                <h3>Open Source Contributions</h3>
                <p>We actively contribute to open source projects and make our research tools and datasets available to the community.</p>
            </div>
            <div class="impact-item">
                <h3>International Recognition</h3>
                <p>Our work has been featured in media outlets and has influenced design practices globally.</p>
            </div>
        </div>
    </section>
</div>