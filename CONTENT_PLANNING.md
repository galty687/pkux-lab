# PKUX LAB Website Content Planning

## Lab Information
- **Lab Name**: PKUX LAB
- **Full Name**: Peking University Information Experience Lab (北京大学信息体验实验室)
- **Mission**: Creating better information experience for the whole journey when users need information for their usage of products

## Website Structure Overview

### 1. Homepage (首页)
**Purpose**: Introduction and overview of the lab

**Content Sections**:
- Hero section with lab name, tagline, and key visual
- Lab mission statement and brief description
- Featured research highlights (3-4 items)
- Latest news/announcements (3-4 items)
- Quick access to key sections (Research, Team, Publications)

**Key Messages**:
- EN: "Enhancing Information Experience Through Research and Innovation"
- CN: "通过研究与创新提升信息体验"

### 2. About (关于我们)
**Purpose**: Detailed information about the lab's background and objectives

**Content Sections**:
- Lab history and founding story
- Research philosophy and approach
- Vision and goals
- Lab facilities and resources
- Partnerships and collaborations

### 3. Research (研究方向)
**Purpose**: Showcase research areas and ongoing projects

**Content Structure**:
- Research Areas Overview
  - Information Experience Design
  - User-Centered Product Information Systems
  - Information Architecture and Navigation
  - Data Visualization and Information Presentation
  - Human-Computer Interaction in Information Contexts

**Project Categories**:
- Ongoing Projects
- Completed Projects
- Featured Projects

**Project Information Format**:
- Project title
- Brief description
- Research team members
- Timeline
- Key findings/outcomes
- Publications related to project
- Images/videos/demos

### 4. Team (团队成员)
**Purpose**: Introduce lab members and their expertise

**Team Structure**:
- Principal Investigator/Lab Director
- Faculty Members
- Postdoctoral Researchers
- PhD Students
- Master's Students
- Undergraduate Researchers
- Alumni

**Member Profile Format**:
- Photo
- Name (English and Chinese)
- Position/Title
- Research interests
- Education background
- Contact information
- Personal webpage link
- Recent publications

### 5. Publications (学术成果)
**Purpose**: Showcase academic output and research impact

**Categories**:
- Journal Articles
- Conference Papers
- Book Chapters
- Patents
- Technical Reports

**Publication Format**:
- Title
- Authors
- Publication venue
- Year
- Abstract
- DOI/Link
- PDF download (if available)
- Citation information

**Features**:
- Search and filter functionality
- Year-based organization
- Impact metrics (citations, downloads)

### 6. News & Events (新闻动态)
**Purpose**: Keep visitors updated on lab activities

**Content Types**:
- Research announcements
- Paper publications
- Conference presentations
- Awards and recognition
- Lab events and workshops
- Student achievements
- Collaboration announcements

**Event Information**:
- Event title
- Date and time
- Location
- Description
- Registration information (if applicable)
- Photos/materials from past events

### 7. Resources (资源)
**Purpose**: Share useful materials and tools

**Resource Categories**:
- Research datasets
- Software tools developed by the lab
- Educational materials
- Guidelines and best practices
- Useful links and references

### 8. Contact (联系我们)
**Purpose**: Provide contact information and location details

**Information**:
- Lab address
- Phone numbers
- Email addresses
- Office hours
- Campus map/directions
- Social media links
- Recruitment information

## Bilingual Content Strategy

### Language Implementation
- **Primary Language**: English
- **Secondary Language**: Chinese (Simplified)
- **URL Structure**: 
  - English: `/en/page-name`
  - Chinese: `/cn/page-name`
  - Root redirects to user's preferred language or English default

### Content Translation Approach
- **Technical Terms**: Maintain consistency with standard academic translations
- **Names**: Display both English and Chinese names for people and projects
- **Publications**: Original language with abstracts in both languages
- **Navigation**: Full bilingual support for all menu items

### Cultural Considerations
- **Chinese Version**: More formal tone, emphasis on academic achievements
- **English Version**: International accessibility, broader appeal
- **Visual Elements**: Universal designs that work for both languages

## Design and User Experience Guidelines

### Visual Identity
- Clean, academic aesthetic
- PKU brand colors as accent (if applicable)
- Professional typography
- High-quality imagery
- Consistent iconography

### User Experience Principles
- **Information Hierarchy**: Clear navigation and content organization
- **Accessibility**: WCAG 2.1 AA compliance
- **Mobile Responsiveness**: Optimal experience across all devices
- **Loading Performance**: Fast page loads and optimized images
- **Search Functionality**: Easy content discovery

### Navigation Structure
```
Home (首页)
├── About (关于我们)
├── Research (研究方向)
│   ├── Research Areas (研究领域)
│   ├── Current Projects (在研项目)
│   └── Completed Projects (已完成项目)
├── Team (团队成员)
│   ├── Faculty (教师)
│   ├── Students (学生)
│   └── Alumni (校友)
├── Publications (学术成果)
├── News & Events (新闻动态)
├── Resources (资源)
└── Contact (联系我们)
```

## Content Management Strategy

### Update Frequency
- **News**: Weekly updates
- **Publications**: Monthly reviews
- **Team**: Semester updates
- **Research Projects**: Quarterly updates

### Content Ownership
- **Principal Investigator**: Overall content approval
- **Lab Manager**: Day-to-day content updates
- **Students**: Individual profile updates, project updates

### Quality Assurance
- Content review process for both languages
- Regular link checking and maintenance
- Image optimization and alt-text
- SEO optimization for academic content

## Technical Requirements for Jekyll Implementation

### Required Plugins
- jekyll-multiple-languages-plugin (for i18n)
- jekyll-feed (for RSS feeds)
- jekyll-sitemap (for SEO)
- jekyll-seo-tag (for meta tags)

### Content Organization
```
/_i18n/
  /en/
    - All English content files
  /cn/
    - All Chinese content files
/_layouts/
  - Shared layout templates
/_includes/
  - Reusable components
/_data/
  - Structured data (team members, publications)
/assets/
  - Images, CSS, JavaScript
```

### GitHub Pages Compatibility
- Use only GitHub Pages supported plugins
- Optimize for build performance
- Configure proper CNAME for custom domain

## Success Metrics

### Engagement Metrics
- Page views and unique visitors
- Time spent on site
- Bounce rate by language
- Popular content sections

### Academic Impact
- Publication downloads
- Contact form submissions
- Collaboration inquiries
- Student recruitment interest

### Technical Performance
- Page load speeds
- Mobile usability scores
- SEO rankings for key terms
- Accessibility compliance scores

## Implementation Timeline

**Phase 1 (Week 1-2)**: Jekyll setup and basic structure
**Phase 2 (Week 3-4)**: Content creation and translation
**Phase 3 (Week 5-6)**: Design implementation and responsive optimization
**Phase 4 (Week 7)**: Testing, deployment, and launch

This content planning document will guide the development of a professional, bilingual academic website that effectively showcases PKUX LAB's research and facilitates international collaboration.