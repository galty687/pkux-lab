# PKUX LAB Website Maintenance Guide
*For Non-Developers*

This guide helps lab members maintain the PKUX LAB website without technical expertise. All changes can be made directly through GitHub's web interface.

## Quick Start Checklist

- [ ] I have access to the GitHub repository
- [ ] I understand how to edit files on GitHub
- [ ] I know where to find different types of content
- [ ] I have reviewed the content templates below

## 🚀 Getting Started

### 1. Access the Website Repository

1. Go to: `https://github.com/pkuxlab/pkuxlab.github.io`
2. Sign in to your GitHub account
3. Make sure you have write permissions (ask lab admin if needed)

### 2. Understanding the File Structure

```
📁 Key Folders for Content Updates:
├── 📁 _posts/          ← News and announcements
├── 📁 _team/           ← Team member profiles  
├── 📁 _projects/       ← Research projects
├── 📁 _publications/   ← Academic papers
├── 📄 about.md         ← About page (English)
├── 📁 cn/              ← Chinese versions
│   └── 📄 about.md     ← About page (Chinese)
└── 📄 contact.md       ← Contact information
```

## ✏️ Common Content Updates

### Adding News Posts

**When to use**: Lab announcements, paper acceptances, awards, events

**Steps**:
1. Go to `_posts/` folder
2. Click "Add file" → "Create new file"
3. Name it: `YYYY-MM-DD-your-title.md` (e.g., `2024-03-15-chi-paper-accepted.md`)
4. Copy this template:

```markdown
---
layout: post
title: "Your Title Here"
date: 2024-03-15
categories: news
author: "Your Name"
lang: en
---

Write your news content here. You can use:

- **Bold text**
- *Italic text* 
- [Links](https://example.com)
- Lists like this one

For Chinese posts, change `lang: en` to `lang: cn`
```

5. Fill in your content
6. Click "Commit new file"
7. Wait 2-3 minutes for the website to update

### Adding Team Members

**Steps**:
1. Go to `_team/` folder
2. Create new file: `firstname-lastname.md`
3. Use this template:

```markdown
---
layout: team-member
name: "Full Name"
name_zh: "中文姓名"
position: "PhD Student" # or "Professor", "Postdoc", etc.
position_zh: "职位中文" # Chinese position title
category: "student" # Options: "faculty", "student", "alumni"
role: "lead" # Optional: "lead" (team leader), "advisor" (external advisor)
university: "PKU" # For students: "PKU" or "external"
university_full: "Peking University" # Full university name
university_short: "北大" # Short name for display badges
email: "email@pku.edu.cn"
website: "https://personal-website.com" # Optional
research_interests:
  - "Human-Computer Interaction"
  - "Information Visualization"
image: "/assets/images/team/lastname.jpg" # Optional
---

Write a brief bio here. Keep it professional and concise.

## Research Interests
Detail specific research areas...

## Education
- PhD in Computer Science, Peking University (2020-present)
- MS in Design, University Name (2018-2020)
```

**Team Categories Explained**:
- **Team Lead** (`role: "lead"`): Lab director/principal investigator
- **PKU Students** (`university: "PKU"`): Students from Peking University  
- **External Students** (`university: "external"`): Visiting students from other universities
- **Team Advisors** (`role: "advisor"`): External advisors and senior collaborators
- **Alumni** (`category: "alumni"`): Former team members

### Adding Research Projects

**Steps**:
1. Go to `_projects/` folder  
2. Create new file: `project-name.md`
3. Use this template:

```markdown
---
layout: project
title: "Project Title"
status: "ongoing" # Options: "ongoing", "completed"
team: ["Member Name 1", "Member Name 2"]
featured: true # Set to true to show on homepage
year: 2024
image: "/assets/images/projects/project-name.jpg" # Optional
---

## Overview
Brief description of the project...

## Objectives
- Goal 1
- Goal 2

## Methods
Describe your approach...

## Publications
List related papers...
```

### Adding Publications

**Steps**:
1. Go to `_publications/` folder
2. Create new file: `year-venue-short-title.md`
3. Use this template:

```markdown
---
layout: publication
title: "Full Paper Title"
authors: "Author 1, Author 2, Author 3"
venue: "CHI 2024" # Conference/Journal name
year: 2024
doi: "10.1145/example" # Optional
pdf: "/assets/papers/paper-name.pdf" # Optional
awards: "Best Paper Award" # Optional
featured: true # For homepage display
---

## Abstract
Paper abstract goes here...

## Keywords
Human-Computer Interaction, Information Design, User Experience
```

## 🌍 Managing Bilingual Content

### For Chinese Content:
- News posts: Add `lang: cn` to the front matter
- Team/Project pages: Create Chinese versions in the `cn/` folder
- Use the same filename structure as English versions

### Translation Checklist:
- [ ] English version exists and is correct
- [ ] Chinese translation is accurate
- [ ] Both versions have matching structure
- [ ] Language tags are set correctly (`lang: en` or `lang: cn`)

## 📝 Editing Existing Content

### Using GitHub Web Editor:
1. Navigate to the file you want to edit
2. Click the pencil icon (✏️) to edit
3. Make your changes
4. Scroll down to "Commit changes"
5. Add a brief description of what you changed
6. Click "Commit changes"

### Content Update Best Practices:
- **Keep it simple**: Use plain language
- **Be consistent**: Follow existing formatting patterns
- **Test links**: Make sure all URLs work
- **Check dates**: Use YYYY-MM-DD format
- **Proofread**: Check spelling and grammar

## 🖼️ Managing Images

### Adding Images:
1. Go to `assets/images/` folder
2. Upload images to appropriate subfolder:
   - `team/` for team member photos
   - `projects/` for project images  
   - `news/` for news post images
3. Reference images in your content: `/assets/images/folder/filename.jpg`

### Image Guidelines:
- **Size**: Keep under 1MB for faster loading
- **Format**: Use JPG for photos, PNG for graphics
- **Names**: Use descriptive, lowercase names with hyphens
- **Alt text**: Always describe images for accessibility

## ⚠️ Common Mistakes to Avoid

❌ **Don't**:
- Edit files directly in `_site/` folder (auto-generated)
- Forget the `---` markers around front matter
- Use spaces in filenames (use hyphens instead)
- Delete the layout templates in `_layouts/`

✅ **Do**:
- Always preview your changes
- Use consistent formatting
- Keep backup copies of important content
- Ask for help when unsure

## 🆘 Troubleshooting

### Website Not Updating?
1. Check GitHub Actions tab for build status
2. Wait 5-10 minutes for changes to deploy
3. Clear your browser cache (Ctrl+F5 or Cmd+Shift+R)
4. Check for red error messages in GitHub

### Common Errors:
- **Missing front matter**: Add `---` at the top and bottom
- **Wrong date format**: Use YYYY-MM-DD format
- **Broken links**: Check URLs are correct and complete
- **Image not showing**: Verify image path and filename
- **Navigation issues**: Unnecessary icons should be hidden on desktop automatically

### Getting Help:
1. Check the GitHub Issues page for similar problems
2. Ask technical team members
3. Contact website administrator
4. Refer to Jekyll documentation for advanced features

## 📋 Content Review Checklist

Before publishing any content:

- [ ] Content is accurate and up-to-date
- [ ] All links work correctly
- [ ] Images display properly
- [ ] Text is proofread and error-free
- [ ] Front matter is complete and correct
- [ ] Chinese translation exists (if applicable)
- [ ] File naming follows conventions

## 🔧 Emergency Contacts

**Website Issues**: Contact lab technical team
**Content Questions**: Ask lab coordinator
**GitHub Access**: Request from lab administrator

---

*Last updated: March 2024*
*For technical issues beyond this guide, consult the README.md or contact the development team.*