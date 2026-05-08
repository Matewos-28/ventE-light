@echo off
echo ==========================================
echo   VentE Lite - Free Web Deployment
echo ==========================================
echo.

REM Check Flutter
flutter --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Flutter not found. Please install Flutter first:
    echo    https://docs.flutter.dev/get-started/install
    pause
    exit /b 1
)

echo ✅ Flutter found

REM Check Firebase
firebase --version >nul 2>&1
if errorlevel 1 (
    echo ⚠️ Firebase CLI not found. Installing...
    npm install -g firebase-tools
)

echo ✅ Firebase CLI found

echo.
echo 📦 Installing dependencies...
call flutter pub get

echo.
echo 🔨 Building for web (optimized for slow internet)...
call flutter build web --release --web-renderer html

echo.
echo 🚀 Deploying to Firebase Hosting...
call firebase deploy --only hosting

echo.
echo ==========================================
echo   ✅ Deployment Complete!
echo ==========================================
echo.
echo Your app is now live! Check the URL above.
echo.
pause
