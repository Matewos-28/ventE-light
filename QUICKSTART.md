# 🚀 VentE Lite - Quick Start Guide

## Deploy in 5 Minutes (FREE)

### Step 1: Extract Files
```bash
unzip vente_lite_complete.zip
cd vente_lite
```

### Step 2: Install Tools (One-time)
```bash
# Install Flutter (if not installed)
# https://docs.flutter.dev/get-started/install

# Install Firebase CLI
npm install -g firebase-tools
```

### Step 3: Run Deploy Script
```bash
# On Mac/Linux:
chmod +x deploy.sh
./deploy.sh

# On Windows:
double-click deploy.bat
```

### Step 4: Share Your App
After deployment, you'll get a URL like:
```
https://your-project.web.app
```

Share this via:
- 📱 WhatsApp/Telegram groups
- 📧 Email
- 🔗 Social media
- 📢 Community forums

## Manual Deployment (If Script Fails)

```bash
# 1. Get dependencies
flutter pub get

# 2. Build for web (HTML renderer = smaller, faster)
flutter build web --release --web-renderer html

# 3. Login to Firebase
firebase login

# 4. Initialize (first time only)
firebase init hosting

# 5. Deploy
firebase deploy --only hosting
```

## For Users in Ethiopia

### How to Install (No App Store Needed!)

**Android Chrome:**
1. Open the web app link
2. Tap menu (⋮) → "Add to Home screen"
3. Tap "Add"
4. App icon appears on home screen!

**iPhone Safari:**
1. Open the web app link
2. Tap Share button (□↑)
3. Scroll down → "Add to Home Screen"
4. Tap "Add"

**Benefits:**
- 📲 Works like native app
- 🔄 Auto-updates
- 💾 Uses minimal storage
- 🌐 Works offline after first visit

## Data Usage Comparison

| Activity | Full App | VentE Lite |
|----------|----------|------------|
| Open app | 2-5 MB | 0.1 MB |
| Load feed | 1-3 MB | 0.05 MB |
| Send vent | 0.5 MB | 0.01 MB |
| Chat session | 0.5 MB | 0.02 MB |
| **1 hour usage** | **10-20 MB** | **0.5-1 MB** |

## Free Hosting Options

| Platform | Cost | Custom Domain | SSL |
|----------|------|---------------|-----|
| **Firebase** | FREE | Yes | Yes |
| **Netlify** | FREE | Yes | Yes |
| **Vercel** | FREE | Yes | Yes |
| **GitHub Pages** | FREE | Yes | Yes |
| **Surge.sh** | FREE | Yes | Yes |

## Troubleshooting

### "flutter: command not found"
→ Install Flutter: https://docs.flutter.dev/get-started/install

### "firebase: command not found"
→ Run: `npm install -g firebase-tools`

### "No Firebase project"
→ Go to https://console.firebase.google.com/ → Create Project

### "Build fails"
→ Run: `flutter doctor` and fix any issues

## Need Help?

- 📧 Email: support@vente.app
- 💬 Telegram: @vente_support
- 📱 WhatsApp: +251-XXX-XXX-XXX

---

**Remember: This is completely FREE. No credit card needed!**
