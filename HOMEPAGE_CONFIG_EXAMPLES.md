# Homepage Display Configuration Examples

This document shows examples of how to configure the homepage display settings in `_config.yml`.

## Configuration Location

Edit the following section in `_config.yml`:

```yaml
homepage:
  featured_research_count: 3  # Number of featured research projects
  latest_news_count: 3        # Number of latest news items
```

## Common Layout Examples

### 1. One Row Layout (Default - Current Setting)
```yaml
homepage:
  featured_research_count: 3
  latest_news_count: 3
```
- **Result**: Shows 3 research projects and 3 news items in a single row each
- **Best for**: Clean, minimal homepage with focus on key content

### 2. Two Rows Layout
```yaml
homepage:
  featured_research_count: 6
  latest_news_count: 6
```
- **Result**: Shows 6 research projects and 6 news items in two rows each
- **Best for**: More comprehensive content display

### 3. Three Rows Layout
```yaml
homepage:
  featured_research_count: 9
  latest_news_count: 9
```
- **Result**: Shows 9 research projects and 9 news items in three rows each
- **Best for**: Maximum content visibility on homepage

### 4. Asymmetric Layout
```yaml
homepage:
  featured_research_count: 6
  latest_news_count: 3
```
- **Result**: Shows 6 research projects (2 rows) and 3 news items (1 row)
- **Best for**: Emphasizing research while keeping news concise

### 5. Minimal Layout
```yaml
homepage:
  featured_research_count: 2
  latest_news_count: 2
```
- **Result**: Shows only 2 items each for a very minimal look
- **Best for**: Extremely clean, focused homepage

## How to Apply Changes

1. Edit the `_config.yml` file
2. Change the numbers in the `homepage:` section
3. Save the file
4. Restart the Jekyll server: `jekyll serve`
5. Refresh your browser to see the changes

## Responsive Behavior

The grid layout automatically adjusts for different screen sizes:
- **Desktop**: Shows items in the configured number of columns
- **Tablet**: May reduce to fewer columns per row
- **Mobile**: Shows one item per row for optimal mobile experience

## Notes

- The system will only show as many items as are available in your content
- If you set `featured_research_count: 6` but only have 3 featured projects, only 3 will be shown
- Make sure to mark projects as `featured: true` in their front matter to appear in the featured research section