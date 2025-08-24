# Bilingual News System Documentation

## Overview
Successfully separated English and Chinese news into language-specific collections while maintaining the integrated navigation dropdown system.

## News Structure

### Chinese News Posts (lang: cn)
- `2024-12-01-ai-interface-breakthrough.md` - PKUX LAB开发突破性AI界面设计系统
- `2024-11-25-mit-collaboration.md` - PKUX LAB与MIT建立国际合作研究项目
- `2024-11-18-vr-award.md` - 虚拟现实数据可视化项目荣获IEEE VIS最佳展示奖
- `2024-11-10-elderly-ux-research.md` - 老年友好界面设计研究登上CHI 2025期刊
- `2024-11-05-team-expansion.md` - PKUX LAB迎来新成员，团队规模持续扩大

### English News Posts (lang: en)
- `2024-12-01-ai-interface-breakthrough-en.md` - PKUX LAB Develops Revolutionary AI Interface Design System
- `2024-11-25-mit-collaboration-en.md` - PKUX LAB Establishes International Collaboration with MIT
- `2024-11-18-vr-award-en.md` - VR Data Visualization Project Wins IEEE VIS Best Demo Award
- `2024-11-10-elderly-ux-research-en.md` - Age-Friendly Interface Design Research Published in CHI 2025
- `2024-11-05-team-expansion-en.md` - PKUX LAB Welcomes New Members, Team Continues to Expand

## Navigation System

### Chinese Navigation (/)
- Shows dropdown with 5 Chinese news posts
- Date format: "12月01日" 
- Links to `/news` page
- Filters: `site.news | where: "lang", "cn"`

### English Navigation (/en/)
- Shows dropdown with 5 English news posts
- Date format: "Dec 01"
- Links to `/en/news` page
- Filters: `site.news | where: "lang", "en"`

## File Structure
```
_news/
├── Chinese Posts (lang: cn)
│   ├── 2024-12-01-ai-interface-breakthrough.md
│   ├── 2024-11-25-mit-collaboration.md
│   ├── 2024-11-18-vr-award.md
│   ├── 2024-11-10-elderly-ux-research.md
│   └── 2024-11-05-team-expansion.md
├── English Posts (lang: en)
│   ├── 2024-12-01-ai-interface-breakthrough-en.md
│   ├── 2024-11-25-mit-collaboration-en.md
│   ├── 2024-11-18-vr-award-en.md
│   ├── 2024-11-10-elderly-ux-research-en.md
│   └── 2024-11-05-team-expansion-en.md
└── Index Pages
    ├── index.md (Chinese main)
    ├── index-cn.md (Chinese specific)
    └── index-en.md (English specific)

Root Pages:
├── news.md (Chinese news page)
└── en/news.md (English news page)
```

## Language Filtering

All news pages and navigation now use language filtering:
- `{% assign recent_news = site.news | where: "lang", "cn" %}` for Chinese
- `{% assign recent_news = site.news | where: "lang", "en" %}` for English

## Benefits

1. **Content Separation**: Clear distinction between language-specific content
2. **Navigation Clarity**: Users see only relevant news in their language
3. **Maintenance**: Easy to manage separate content for each language
4. **Scalability**: Can easily add more languages following the same pattern
5. **SEO**: Better language-specific content indexing

## Technical Implementation

- Modified `_includes/header.html` to filter by language
- Updated all news index pages with language filters
- Maintained bilingual dropdown navigation structure
- Preserved responsive design and mobile compatibility
- Kept consistent styling and user experience