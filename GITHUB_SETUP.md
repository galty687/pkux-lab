# GitHub Setup Guide for PKUX LAB Website

This guide walks you through setting up the PKUX LAB website on GitHub and enabling GitHub Pages hosting.

## 🚀 Quick Setup (5 minutes)

### Step 1: Create GitHub Repository

1. **Go to GitHub**: Visit [github.com](https://github.com) and sign in
2. **Create new repository**:
   - Click the "+" icon → "New repository"
   - Repository name: `pkuxlab.github.io` (recommended) or `pkux-lab-website`
   - Description: "Official website for PKUX LAB - Peking University Information Experience Lab"
   - Set to **Public** (required for free GitHub Pages)
   - **Do NOT** initialize with README, .gitignore, or license (we already have these)
   - Click "Create repository"

### Step 2: Upload Your Website Files

**Option A: Using GitHub Web Interface (Easier)**

1. **Upload files**:
   - On your new repository page, click "uploading an existing file"
   - Drag and drop ALL files from your `/Users/zhijungao/Desktop/PKUXLAB/` folder
   - Or click "choose your files" and select all files/folders
   - **Important**: Make sure to include hidden files like `.gitignore` and `.github/` folder

2. **Commit files**:
   - Scroll down to "Commit new files"
   - Title: "Initial website setup"
   - Description: "Add PKUX LAB bilingual Jekyll website with GitHub Pages deployment"
   - Click "Commit new files"

**Option B: Using Git Commands (Advanced)**

```bash
# Navigate to your website folder
cd /Users/zhijungao/Desktop/PKUXLAB

# Initialize git repository
git init

# Add all files
git add .

# Make initial commit
git commit -m "Initial website setup with bilingual Jekyll site"

# Add GitHub repository as remote (replace URL with your actual repository)
git remote add origin https://github.com/YOUR_USERNAME/pkuxlab.github.io.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. **Go to repository settings**:
   - Click "Settings" tab in your repository
   - Scroll down to "Pages" in the left sidebar

2. **Configure Pages**:
   - Source: Select "**GitHub Actions**" (NOT "Deploy from a branch")
   - This enables our custom workflow for Jekyll

3. **Save settings**:
   - Click "Save" if required
   - You should see a green checkmark or pending status

### Step 4: Wait for Deployment

1. **Monitor deployment**:
   - Go to "Actions" tab in your repository
   - You should see a workflow called "Deploy Jekyll Site to GitHub Pages" running
   - This takes 2-5 minutes for the first deployment

2. **Check deployment status**:
   - Green checkmark = Success ✅
   - Red X = Failed ❌ (check logs for errors)
   - Yellow circle = In progress ⏳

3. **Access your website**:
   - Once deployed, visit: `https://YOUR_USERNAME.github.io/REPOSITORY_NAME`
   - For `pkuxlab.github.io` repository: `https://YOUR_USERNAME.github.io`

## 🔧 Troubleshooting

### Common Issues

**❌ Build Failed**
- Go to Actions tab and click on the failed workflow
- Check logs for error details
- Common fixes:
  - Ensure all files were uploaded correctly
  - Check for typos in `_config.yml`
  - Verify `Gemfile` is present

**❌ Site Shows "Page Not Found"**
- Check if GitHub Pages is enabled in Settings → Pages
- Verify repository is public
- Wait 5-10 minutes after enabling Pages

**❌ Site Loads but Looks Broken**
- Check `_config.yml` URL setting matches your GitHub Pages URL
- Verify CSS and image files were uploaded to `assets/` folder

**❌ GitHub Actions Not Running**
- Ensure you selected "GitHub Actions" as source (not "Deploy from a branch")
- Check if `.github/workflows/deploy.yml` file exists
- Repository must be public for free GitHub Pages

### Verification Steps

Run this command in your local website folder to verify everything is ready:
```bash
./verify-deployment.sh
```

All checks should show green ✅ before proceeding.

## 🎯 Next Steps After Deployment

### 1. Verify Website Works
- [ ] Visit your live website URL
- [ ] Test navigation between pages
- [ ] Check English/Chinese language switching
- [ ] Verify mobile responsiveness
- [ ] Test all links and images

### 2. Set Up Custom Domain (Optional)
1. **Purchase domain**: Buy a domain from any registrar
2. **Add CNAME file**: Create `CNAME` file in repository root with your domain
3. **Configure DNS**: Point your domain to GitHub Pages
4. **Enable HTTPS**: Enable in repository Settings → Pages

### 3. Content Management Setup
- [ ] Add team members to repository as collaborators
- [ ] Share the [MAINTENANCE_GUIDE.md](MAINTENANCE_GUIDE.md) with content editors
- [ ] Create content update schedule
- [ ] Set up review process for changes

## 📋 Repository Settings Checklist

After setup, verify these settings:

**General Settings**:
- [ ] Repository is public
- [ ] Description is filled out
- [ ] Website URL is added to repository description
- [ ] Topics/tags are added for discoverability

**Pages Settings**:
- [ ] Source: "GitHub Actions"
- [ ] Custom domain configured (if applicable)
- [ ] "Enforce HTTPS" enabled

**Actions Settings**:
- [ ] Actions are enabled
- [ ] Workflow permissions set to "Read and write permissions"

**Collaborators**:
- [ ] Lab members added with appropriate permissions
- [ ] Write access for content managers
- [ ] Admin access for technical maintainers

## 🆘 Getting Help

### Self-Help Resources
1. **Run verification script**: `./verify-deployment.sh`
2. **Check GitHub Actions logs**: Repository → Actions tab
3. **Review documentation**: README.md and MAINTENANCE_GUIDE.md
4. **GitHub Pages docs**: [docs.github.com/pages](https://docs.github.com/pages)

### Technical Support
- **Jekyll Issues**: [jekyllrb.com/docs](https://jekyllrb.com/docs/)
- **GitHub Pages Issues**: [GitHub Community](https://github.community)
- **Website-specific issues**: Create issue in your repository

### Content Management Support
- **Non-developers**: See [MAINTENANCE_GUIDE.md](MAINTENANCE_GUIDE.md)
- **Common tasks**: Adding news, team members, projects
- **Troubleshooting**: Check formatting and file naming

---

## 📊 What Happens Next?

After successful setup:

1. **Automatic Updates**: Every push to `main` branch triggers automatic deployment
2. **Content Management**: Team members can edit content through GitHub web interface
3. **Version Control**: All changes are tracked and can be reverted if needed
4. **No Maintenance**: GitHub handles server management and SSL certificates

**Estimated total setup time**: 5-15 minutes  
**Website update time**: 2-3 minutes after pushing changes  
**Monthly maintenance**: ~0 hours (fully automated)

🎉 **Congratulations!** Your PKUX LAB website is now live and ready for the world to see!