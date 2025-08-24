#!/bin/bash

# PKUX LAB Website Deployment Verification Script
# This script checks if the site is ready for GitHub Pages deployment

echo "🔍 PKUX LAB Website Deployment Verification"
echo "=========================================="
echo

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print status
print_status() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✓${NC} $2"
    else
        echo -e "${RED}✗${NC} $2"
    fi
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "_config.yml" ]; then
    echo -e "${RED}Error: This script must be run from the root of the Jekyll site${NC}"
    exit 1
fi

echo "📁 Checking project structure..."

# Check essential files
essential_files=(
    "_config.yml"
    "Gemfile"
    ".github/workflows/deploy.yml"
    ".gitignore"
    "README.md"
    "MAINTENANCE_GUIDE.md"
    "index.html"
    "about.md"
    "cn/about.md"
)

all_files_exist=true
for file in "${essential_files[@]}"; do
    if [ -f "$file" ]; then
        print_status 0 "$file exists"
    else
        print_status 1 "$file is missing"
        all_files_exist=false
    fi
done

echo

# Check essential directories
echo "📂 Checking directory structure..."
essential_dirs=(
    "_layouts"
    "_includes"
    "_posts"
    "_team"
    "_projects"
    "_publications"
    "assets"
    "cn"
    ".github/workflows"
)

all_dirs_exist=true
for dir in "${essential_dirs[@]}"; do
    if [ -d "$dir" ]; then
        print_status 0 "$dir/ directory exists"
    else
        print_status 1 "$dir/ directory is missing"
        all_dirs_exist=false
    fi
done

echo

# Check configuration
echo "⚙️ Checking Jekyll configuration..."

# Check if _config.yml has required settings
config_checks=(
    "title:"
    "email:"
    "description:"
    "url:"
    "languages:"
    "homepage:"
)

config_valid=true
for check in "${config_checks[@]}"; do
    if grep -q "$check" "_config.yml"; then
        print_status 0 "Configuration has $check"
    else
        print_status 1 "Configuration missing $check"
        config_valid=false
    fi
done

echo

# Check Gemfile
echo "💎 Checking Gemfile configuration..."

if grep -q "github-pages" "Gemfile"; then
    print_status 0 "Gemfile includes github-pages gem"
else
    print_status 1 "Gemfile missing github-pages gem"
fi

if grep -q "jekyll-feed" "Gemfile"; then
    print_status 0 "Gemfile includes jekyll-feed plugin"
else
    print_warning "Gemfile missing jekyll-feed plugin (optional)"
fi

echo

# Check GitHub Actions workflow
echo "🚀 Checking GitHub Actions configuration..."

workflow_file=".github/workflows/deploy.yml"
if [ -f "$workflow_file" ]; then
    if grep -q "Deploy Jekyll Site to GitHub Pages" "$workflow_file"; then
        print_status 0 "GitHub Actions workflow configured"
    else
        print_status 1 "GitHub Actions workflow appears incorrect"
    fi
    
    if grep -q "bundle exec jekyll build" "$workflow_file"; then
        print_status 0 "Workflow includes Jekyll build step"
    else
        print_status 1 "Workflow missing Jekyll build step"
    fi
    
    if grep -q "actions/deploy-pages" "$workflow_file"; then
        print_status 0 "Workflow includes GitHub Pages deployment"
    else
        print_status 1 "Workflow missing GitHub Pages deployment"
    fi
else
    print_status 1 "GitHub Actions workflow file missing"
fi

echo

# Check content structure
echo "📄 Checking content structure..."

# Check for sample content
post_count=$(find _posts -name "*.md" | wc -l)
team_count=$(find _team -name "*.md" | wc -l)
project_count=$(find _projects -name "*.md" | wc -l)

print_info "Found $post_count news posts"
print_info "Found $team_count team members"
print_info "Found $project_count projects"

if [ $post_count -gt 0 ]; then
    print_status 0 "Site has news content"
else
    print_warning "No news posts found (consider adding sample content)"
fi

if [ $team_count -gt 0 ]; then
    print_status 0 "Site has team content"
else
    print_warning "No team members found (consider adding sample content)"
fi

echo

# Check bilingual setup
echo "🌍 Checking bilingual configuration..."

if [ -d "cn" ]; then
    print_status 0 "Chinese content directory exists"
    
    if [ -f "cn/about.md" ]; then
        print_status 0 "Chinese about page exists"
    else
        print_status 1 "Chinese about page missing"
    fi
else
    print_status 1 "Chinese content directory missing"
fi

# Check for language tags in posts
if find _posts -name "*.md" -exec grep -l "lang:" {} \; | wc -l | grep -q "[1-9]"; then
    print_status 0 "Posts have language tags"
else
    print_warning "Posts may be missing language tags"
fi

echo

# Check .gitignore
echo "🚫 Checking .gitignore configuration..."

gitignore_items=(
    "_site/"
    ".jekyll-cache/"
    ".DS_Store"
    "Gemfile.lock"
    "vendor/"
)

for item in "${gitignore_items[@]}"; do
    if grep -q "$item" ".gitignore"; then
        print_status 0 ".gitignore includes $item"
    else
        print_warning ".gitignore missing $item"
    fi
done

echo

# Final assessment
echo "📋 Deployment Readiness Summary"
echo "==============================="

if [ "$all_files_exist" = true ] && [ "$all_dirs_exist" = true ] && [ "$config_valid" = true ]; then
    echo -e "${GREEN}🎉 Site appears ready for GitHub Pages deployment!${NC}"
    echo
    echo "Next steps:"
    echo "1. Push your code to GitHub"
    echo "2. Enable GitHub Pages in repository settings"
    echo "3. Set source to 'GitHub Actions'"
    echo "4. Wait for the first deployment to complete"
    echo
    echo "The site should be available at: https://username.github.io/repository-name"
else
    echo -e "${RED}❌ Site has issues that need to be addressed before deployment${NC}"
    echo
    echo "Please fix the issues marked with ✗ above and run this script again."
fi

echo
echo "📚 For content management instructions, see MAINTENANCE_GUIDE.md"
echo "🔧 For technical setup instructions, see README.md"

# Check if this is a git repository
if [ -d ".git" ]; then
    print_info "This is a Git repository - ready for GitHub"
else
    print_warning "This is not a Git repository. Run 'git init' to initialize."
fi

echo
echo "Script completed."