# News Collection

This folder contains all news-related content for the PKUX LAB website, organized as a Jekyll collection.

## Structure

- `index.md` - Main Chinese news page (accessible at `/news/`)
- `index-cn.md` - Chinese news page (accessible at `/cn/news/`)
- `index-en.md` - English news page (accessible at `/en/news/`)
- `YYYY-MM-DD-*.md` - Individual news posts

## News Posts

All news posts follow the Jekyll post naming convention: `YYYY-MM-DD-title.md`

Each news post should include proper front matter:

```yaml
---
layout: post
title: "Post Title"
date: YYYY-MM-DD
categories: [category]
lang: cn # or en
ref: unique-reference
---
```

## Categories

Available news categories:
- `awards` - Awards and recognition
- `publications` - Academic publications and papers
- `research` - Research updates and findings
- `team` - Team updates and new members
- `collaborations` - Partnerships and collaborations
- `events` - Events, conferences, and talks

## Configuration

The `_news` collection is configured in `_config.yml`:

```yaml
collections:
  news:
    output: true
    permalink: /news/:year/:month/:day/:title/
```

## Migration Notes

- All previous posts from `_posts/` have been moved to `_news/`
- The Jekyll configuration has been updated to use `site.news` instead of `site.posts`
- Redirect pages have been created to maintain backward compatibility
- The home page layout has been updated to reference the new collection