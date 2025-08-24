# PKUX LAB Website Deployment Guide

This guide walks you through deploying the PKUX LAB website to GitHub Pages.

## Prerequisites

1. **GitHub Account**: Ensure you have a GitHub account
2. **Repository**: Create a repository named `pkuxlab.github.io` or your organization's equivalent
3. **Local Setup**: Ensure the website works locally using `jekyll serve`

## Step 1: Repository Setup

### Option A: New Repository
1. Create a new repository on GitHub:
   - Repository name: `pkuxlab.github.io` (or `your-org-name.github.io`)
   - Set to **Public** (required for free GitHub Pages)
   - Initialize with README

### Option B: Existing Repository
1. Use any repository name
2. The site will be available at `username.github.io/repository-name`

## Step 2: Upload Website Files

### Method 1: Git Commands
```bash
# Clone your repository
git clone https://github.com/yourusername/pkuxlab.github.io.git
cd pkuxlab.github.io

# Copy all website files to the repository directory
# Then commit and push
git add .
git commit -m "Initial website deployment"
git push origin main
```

### Method 2: GitHub Web Interface
1. Use GitHub's web interface to upload files
2. Drag and drop all website files to the repository
3. Commit the changes

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Configure the following:

### Source Settings
- **Source**: Deploy from a branch
- **Branch**: `main` (or your default branch)
- **Folder**: `/ (root)`

### GitHub Actions (Recommended)
- **Source**: GitHub Actions
- This will use the `.github/workflows/deploy.yml` file included in the project

## Step 4: Configure Domain (Optional)

### Custom Domain Setup
1. In the **Pages** settings, add your custom domain
2. Create a CNAME file in the repository root:
   ```
   pkuxlab.org
   ```
3. Configure DNS records with your domain provider:
   - Type: CNAME
   - Name: www (or @)
   - Value: yourusername.github.io

### SSL Certificate
- Enable **Enforce HTTPS** in Pages settings
- GitHub provides free SSL certificates

## Step 5: Verify Deployment

1. **Check Build Status**:
   - Go to **Actions** tab to see deployment progress
   - Ensure the workflow completes successfully

2. **Test Website**:
   - Visit your GitHub Pages URL
   - Test all navigation links
   - Verify responsive design on mobile
   - Check that all pages load correctly

3. **Common URLs**:
   - Default: `https://yourusername.github.io/repository-name`
   - Custom domain: `https://pkuxlab.org`

## Step 6: Update Content

### Adding New Content
1. **News Posts**: Add files to `_posts/` directory
2. **Team Members**: Add files to `_team/` directory  
3. **Projects**: Add files to `_projects/` directory
4. **Publications**: Add files to `_publications/` directory

### Content Format
All content files use Markdown with YAML front matter:
```markdown
---
layout: post
title: "Your Title"
date: 2024-01-01
categories: news
---

Your content here...
```

### Deployment Process
1. Make changes locally
2. Test with `jekyll serve`
3. Commit and push to GitHub
4. Automatic deployment via GitHub Actions

## Troubleshooting

### Common Issues

1. **Build Failures**:
   - Check GitHub Actions logs for errors
   - Verify all file paths are correct
   - Ensure YAML front matter is valid

2. **Missing Images**:
   - Add placeholder images to `assets/images/` directory
   - Update image paths in content files

3. **404 Errors**:
   - Check file names and paths
   - Ensure proper permalink structure
   - Verify navigation links

4. **Styling Issues**:
   - Ensure CSS files are properly linked
   - Check for SCSS compilation errors
   - Verify responsive design breakpoints

### Getting Help

1. **GitHub Pages Documentation**: https://docs.github.com/en/pages
2. **Jekyll Documentation**: https://jekyllrb.com/docs/
3. **GitHub Community**: https://github.com/community

## Performance Optimization

### Images
- Optimize image sizes before uploading
- Use appropriate image formats (WebP, JPEG, PNG)
- Add alt text for accessibility

### SEO
- Update meta descriptions in page front matter
- Add structured data for research content
- Submit sitemap to search engines

### Analytics (Optional)
Add Google Analytics or similar service:
1. Create analytics account
2. Add tracking code to `_includes/head.html`
3. Monitor site performance

## Security

### Best Practices
- Keep dependencies updated
- Use HTTPS (enforced by GitHub Pages)
- Validate user input if adding forms
- Regular security audits

### Content Security
- Review content before publishing
- Ensure no sensitive information in repository
- Use private repositories for drafts

## Backup and Maintenance

### Regular Tasks
- **Weekly**: Review and respond to issues
- **Monthly**: Update dependencies and content
- **Quarterly**: Security and performance review

### Backup Strategy
- Repository is automatically backed up on GitHub
- Consider local backups of media files
- Document content management procedures

## Advanced Configuration

### Custom Plugins
Note: GitHub Pages has limited plugin support. For advanced plugins:
1. Use GitHub Actions for custom builds
2. Deploy to alternative hosting (Netlify, Vercel)
3. Pre-build site locally and deploy static files

### Multi-language Support
The site is prepared for bilingual content:
1. Add content to `_i18n/cn/` for Chinese
2. Update navigation for language switching
3. Test both language versions

## Success Metrics

Monitor these metrics post-deployment:
- **Page Load Speed**: < 3 seconds
- **Mobile Usability**: 100% mobile-friendly
- **Accessibility**: WCAG 2.1 AA compliance
- **SEO**: Search engine visibility
- **User Engagement**: Analytics data

## Next Steps

After successful deployment:
1. **Content Population**: Add real team photos and project images
2. **SEO Optimization**: Submit to search engines
3. **Social Media**: Share on professional networks
4. **Community**: Engage with academic and research communities
5. **Continuous Improvement**: Regular updates and enhancements

---

**Support**: For deployment issues, contact the development team or refer to the README.md file for additional technical details.