#!/bin/bash
# VentE Lite - Free Deployment Script
# No Google Play Console needed!

echo "=========================================="
echo "  VentE Lite - Free Web Deployment"
echo "=========================================="
echo ""

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter not found. Please install Flutter first:"
    echo "   https://docs.flutter.dev/get-started/install"
    exit 1
fi

echo "✅ Flutter found"

# Check if Firebase CLI is installed
if ! command -v firebase &> /dev/null; then
    echo "⚠️  Firebase CLI not found. Installing..."
    npm install -g firebase-tools
fi

echo "✅ Firebase CLI found"

# Get dependencies
echo ""
echo "📦 Installing dependencies..."
flutter pub get

# Build for web (HTML renderer = smaller bundle)
echo ""
echo "🔨 Building for web (optimized for slow internet)..."
flutter build web --release --web-renderer html

# Check if Firebase project is initialized
if [ ! -f ".firebaserc" ]; then
    echo ""
    echo "🔥 Initializing Firebase..."
    echo "   You'll need to:"
    echo "   1. Login with your Google account"
    echo "   2. Select or create a Firebase project"
    echo "   3. Choose 'Hosting' when asked"
    echo ""
    firebase init hosting
fi

# Deploy
echo ""
echo "🚀 Deploying to Firebase Hosting..."
firebase deploy --only hosting

echo ""
echo "=========================================="
echo "  ✅ Deployment Complete!"
echo "=========================================="
echo ""
echo "Your app is now live at:"
echo "   https://$(grep -o '"default": "[^"]*"' .firebaserc | cut -d'"' -f4).web.app"
echo ""
echo "Share this link with your users!"
echo ""
echo "Features:"
echo "   • Works on 2G/3G connections"
echo "   • No app store needed"
echo "   • Installable as PWA"
echo "   • Completely FREE"
echo ""
