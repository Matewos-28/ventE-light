# VentE Lite

**Ultra-lightweight web version** of VentE for slow internet, low-end devices, and minimal data usage.

## Why Lite?

| Feature | Full App | Lite Version |
|---------|----------|--------------|
| Bundle Size | ~5-8 MB | **< 1 MB** |
| Images | Full resolution | **Text-only** |
| Animations | Complex | **None** |
| Fonts | Google Fonts | **System fonts** |
| Data Usage | High | **90% less** |
| Works on 2G | No | **Yes** |
| Offline Mode | Partial | **Full PWA** |

## Features

- **Anonymous Venting** - Text-only posts (saves data)
- **AI Chatbot** - Simplified but effective emotional support
- **Community Feed** - 20 posts at a time (pagination)
- **Offline Support** - PWA with service worker caching
- **Installable** - Add to home screen like native app
- **Zero Images** - All content is text-based

## Quick Deploy (FREE)

### Option 1: Firebase Hosting (Recommended)

```bash
# 1. Install Firebase CLI
npm install -g firebase-tools

# 2. Login
firebase login

# 3. Build for web
flutter build web --release --web-renderer html

# 4. Initialize hosting
firebase init hosting

# 5. Deploy
firebase deploy --only hosting

# 6. Get your URL: https://your-project.web.app
```

### Option 2: GitHub Pages (FREE)

```bash
# Build
flutter build web --release --web-renderer html --base-href /vente_lite/

# Copy to docs folder
cp -r build/web docs

# Push to GitHub - enable GitHub Pages in settings
```

### Option 3: Netlify (FREE)

1. Go to [netlify.com](https://netlify.com)
2. Drag and drop `build/web` folder
3. Get instant URL

## Build Commands

```bash
# Development
flutter run -d chrome --web-renderer html

# Production build (HTML renderer = smaller bundle)
flutter build web --release --web-renderer html

# With PWA optimization
flutter build web --release --web-renderer html --pwa-strategy offline-first
```

## Data Saving Tips for Users

1. **Use Lite on mobile data** - Saves 90% compared to full app
2. **Install as PWA** - Works offline, no download needed
3. **Text-only mode** - No images = faster loading
4. **Cached content** - Previously loaded posts work offline

## Technical Details

- **Renderer**: HTML (not CanvasKit) - 2MB smaller bundle
- **Dependencies**: Minimal (no Google Fonts, no complex packages)
- **Caching**: Service worker caches app shell + last 20 posts
- **Storage**: Uses IndexedDB for offline data

## For Ethiopian Users

This version is specifically optimized for:
- **Ethio Telecom 3G/4G** connections
- **Low-end Android phones**
- **Limited data plans**
- **Unstable connectivity**

## Next Steps

1. Deploy to Firebase Hosting
2. Share link via Telegram/WhatsApp
3. Users can "Add to Home Screen" for app-like experience
4. No app store needed!

## Cost

**$0.00** - Completely free deployment and usage.
