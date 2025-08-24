# PKUX LAB Website

The official website for PKUX LAB (Peking University Information Experience Lab), built with Jekyll and designed for bilingual content (English/Chinese).

🌐 **Live Website**: [pkuxlab.github.io](https://pkuxlab.github.io)  
📚 **For Content Updates**: See [MAINTENANCE_GUIDE.md](MAINTENANCE_GUIDE.md) (non-developers)  
🛠️ **For Development**: Continue reading this README

## About PKUX LAB

PKUX LAB is dedicated to creating better information experiences for users throughout their journey of accessing and using product information. Our research focuses on:

- Information Experience Design
- User-Centered Information Systems  
- Human-Computer Interaction
- Data Visualization and Information Presentation
- AI-Assisted Design Tools

## Website Features

- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Bilingual Support**: English and Chinese content with language switching
- **Research Showcase**: Detailed project pages with team information
- **Publications Management**: Organized academic publications with search functionality
- **News & Events**: Regular updates on lab activities and achievements
- **Team Profiles**: Individual pages for faculty, students, and alumni
- **GitHub Pages Ready**: Automated deployment with GitHub Actions

## Quick Start (Non-Developers)

**👋 Just want to update content?** See the [MAINTENANCE_GUIDE.md](MAINTENANCE_GUIDE.md) for step-by-step instructions on:
- Adding news posts
- Updating team member profiles  
- Managing research projects
- Publishing new papers
- Editing existing content

**No technical setup required!** All content updates can be done through GitHub's web interface.

## Developer Setup

### Prerequisites

- Ruby 3.1+ ([Installation Guide](https://www.ruby-lang.org/en/documentation/installation/))
- Bundler: `gem install bundler`
- Git

### Local Development

1. **Clone the repository:**
```bash
git clone https://github.com/pkuxlab/pkuxlab.github.io.git
cd pkuxlab.github.io
```

2. **Install dependencies:**
```bash
bundle install
```

3. **Run development server:**
```bash
bundle exec jekyll serve
```

4. **Open browser to:** `http://localhost:4000`

### Development Commands

```bash
# Build the site
bundle exec jekyll build

# Serve with live reload
bundle exec jekyll serve --livereload

# Clean build files  
bundle exec jekyll clean

# Update dependencies
bundle update
```

## Deployment

### Automatic Deployment (Recommended)

The site automatically deploys to GitHub Pages when changes are pushed to the `main` branch:

1. Push changes to `main` branch
2. GitHub Actions builds and deploys the site
3. Live site updates within 2-3 minutes
4. Check deployment status in the "Actions" tab

### Manual Deployment Setup

If setting up a new repository:

1. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: "GitHub Actions"
   - Save settings

2. **Verify workflow file:**
   - Ensure `.github/workflows/deploy.yml` exists
   - Workflow should trigger on push to main

3. **Optional - Custom domain:**
   - Add `CNAME` file with your domain
   - Configure DNS settings
   - Enable "Enforce HTTPS"

## Project Structure

```
├── _config.yml              # Jekyll configuration
├── _layouts/                # Page templates
│   ├── default.html         # Base template
│   ├── home.html           # Homepage layout
│   ├── post.html           # Blog post layout
│   └── team-member.html    # Team profile layout
├── _includes/               # Reusable components
│   ├── header.html         # Site header
│   └── footer.html         # Site footer
├── _posts/                  # News and blog posts
├── _team/                   # Team member profiles
├── _projects/               # Research projects
├── _publications/           # Academic publications
├── assets/                  # Static files
│   ├── css/main.scss       # Styles
│   ├── js/                 # JavaScript
│   └── images/             # Images
├── cn/                      # Legacy Chinese content (deprecated)
├── en/                      # English content
├── .github/workflows/       # GitHub Actions
├── MAINTENANCE_GUIDE.md     # Content management guide
└── README.md               # This file
```

## Configuration

### Homepage Settings

Control homepage content display in `_config.yml`:

```yaml
homepage:
  featured_research_count: 3  # Number of featured projects (3 = 1 row)
  latest_news_count: 3        # Number of news items (3 = 1 row)
```

### Site Metadata

Update site information in `_config.yml`:

```yaml
title: PKUX LAB
email: contact@pkuxlab.org  
description: Lab description...
url: "https://pkuxlab.github.io"
```

### Styling Customization

Edit `assets/css/main.scss` for visual changes:
- Colors: Modify `$primary-color` and `$secondary-color`
- Typography: Update font families and sizes
- Layout: Adjust spacing and grid layouts
- Responsive: Modify breakpoints and mobile styles

## Content Management

### File Naming Conventions

- **Posts**: `YYYY-MM-DD-title.md`
- **Team**: `firstname-lastname.md`  
- **Projects**: `project-name.md`
- **Publications**: `year-venue-title.md`

### Front Matter Requirements

All content files need front matter (metadata between `---`):

```markdown
---
layout: post
title: "Your Title"
date: 2024-01-01
categories: news
author: "Author Name"
lang: en
---

Content goes here...
```

### Bilingual Content

**New Structure (Current):**
- **Chinese (Default)**: Root path `/` - Main content files
- **English**: `/en/` path - English versions in `en/` directory

**Legacy Structure (Deprecated):**
- Chinese content in `cn/` folder (being phased out)
- Use root path for Chinese, `/en/` for English

Files should use same naming structure for both languages:
- Reference translations with `ref:` parameter
- Add `lang: cn` or `lang: en` in front matter

## Troubleshooting

### Common Issues

**Site not building?**
- Check GitHub Actions tab for error details
- Verify YAML front matter syntax
- Ensure all required fields are present

**Local development issues?**
```bash
# Clean and rebuild
bundle exec jekyll clean
bundle exec jekyll build

# Update gems
bundle update

# Check Ruby version
ruby --version
```

**Content not displaying?**
- Verify front matter format
- Check file naming conventions
- Ensure proper category/layout settings

### Getting Help

1. Check [Jekyll Documentation](https://jekyllrb.com/docs/)
2. Review [GitHub Pages Documentation](https://docs.github.com/en/pages)
3. Search existing [GitHub Issues](https://github.com/pkuxlab/pkuxlab.github.io/issues)
4. Create new issue with detailed description

## Contributing

### For Content Contributors

See [MAINTENANCE_GUIDE.md](MAINTENANCE_GUIDE.md) for detailed instructions.

### For Developers

1. Fork the repository
2. Create feature branch: `git checkout -b feature-name`
3. Make changes and test locally
4. Commit with descriptive messages
5. Push to your fork: `git push origin feature-name`
6. Create pull request with detailed description

### Code Style

- Use 2 spaces for indentation
- Follow existing naming conventions
- Comment complex logic
- Test responsive design on multiple devices
- Validate HTML and CSS

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

- **Website**: [https://pkuxlab.github.io](https://pkuxlab.github.io)
- **Email**: contact@pkuxlab.org
- **GitHub**: [@pkuxlab](https://github.com/pkuxlab)

## Acknowledgments

- Built with [Jekyll](https://jekyllrb.com/)
- Hosted on [GitHub Pages](https://pages.github.com/)
- Responsive design inspired by modern academic websites
- Thanks to all contributors and lab members