---
layout: page
title: 学术成果
permalink: /publications/
lang: cn
ref: publications
---

<div class="publications-overview">
    <section class="publications-intro">
        <h2>研究成果</h2>
        <p>我们的研究通过同行评议的出版物、会议演讲和与产业合作伙伴的协作研究，为信息体验设计的发展做出贡献。</p>
        
        <div class="publication-stats">
            <div class="stat-item">
                <h3>50+</h3>
                <p>同行评议论文</p>
            </div>
            <div class="stat-item">
                <h3>15+</h3>
                <p>顶级会议期刊</p>
            </div>
            <div class="stat-item">
                <h3>1200+</h3>
                <p>总引用次数</p>
            </div>
            <div class="stat-item">
                <h3>8</h3>
                <p>最佳论文奖</p>
            </div>
        </div>
    </section>

    <section class="recent-publications">
        <h2>近期发表 (2023-2024)</h2>
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
                                <a href="{{ pub.bibtex | relative_url }}" class="pub-link">引用格式</a>
                            {% endif %}
                            {% if pub.code %}
                                <a href="{{ pub.code }}" class="pub-link" target="_blank">代码</a>
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
        <h2>按年份分类的发表</h2>
        
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
        <h2>发表期刊与会议</h2>
        <p>我们的研究发表在人机交互、信息系统和设计领域的顶级会议和期刊上。</p>
        
        <div class="venues-grid">
            <div class="venue-category">
                <h3>顶级会议</h3>
                <ul>
                    <li><strong>CHI</strong> - ACM人机交互系统会议</li>
                    <li><strong>UIST</strong> - ACM用户界面软件与技术会议</li>
                    <li><strong>CSCW</strong> - ACM计算机支持的协作工作会议</li>
                    <li><strong>DIS</strong> - ACM交互系统设计会议</li>
                    <li><strong>IUI</strong> - ACM智能用户界面会议</li>
                </ul>
            </div>
            <div class="venue-category">
                <h3>顶级期刊</h3>
                <ul>
                    <li><strong>IJHCS</strong> - 国际人机研究期刊</li>
                    <li><strong>ToCHI</strong> - ACM计算机-人机交互汇刊</li>
                    <li><strong>JCSCW</strong> - 计算机支持协作工作期刊</li>
                    <li><strong>CHB</strong> - 人类行为计算机期刊</li>
                    <li><strong>UAIS</strong> - 信息社会通用访问期刊</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="collaboration-impact">
        <h2>研究影响与合作</h2>
        <div class="impact-grid">
            <div class="impact-item">
                <h3>产业合作伙伴</h3>
                <p>与Adobe、微软、腾讯和阿里巴巴的合作已将我们的研究应用到现实世界的产品中。</p>
            </div>
            <div class="impact-item">
                <h3>开源贡献</h3>
                <p>我们积极为开源项目做贡献，并向社区提供我们的研究工具和数据集。</p>
            </div>
            <div class="impact-item">
                <h3>国际认可</h3>
                <p>我们的工作已被媒体报道，并在全球范围内影响设计实践。</p>
            </div>
        </div>
    </section>
</div>