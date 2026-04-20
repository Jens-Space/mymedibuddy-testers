#!/bin/bash
# Build and release MyMediBuddy APK to testers website

set -e

echo "Building APK..."
flutter build apk --debug

APK_PATH="build/app/outputs/flutter-apk/MyMediBuddy-Beta.apk"

if [ ! -f "$APK_PATH" ]; then
    echo "Error: APK not found at $APK_PATH"
    exit 1
fi

echo "Uploading to GitHub release..."
gh release upload v0.3.6 "$APK_PATH" --repo Jens-Space/mymedibuddy-testers --clobber

echo "Done! APK uploaded to website."