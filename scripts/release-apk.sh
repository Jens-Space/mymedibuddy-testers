#!/bin/bash
# Build and release MyMediBuddy APK to testers website

set -e

echo "Building APK..."
flutter build apk --debug

APK_PATH=$(ls -t build/app/outputs/flutter-apk/*.apk 2>/dev/null | head -1)

if [ -z "$APK_PATH" ] || [ ! -f "$APK_PATH" ]; then
    echo "Error: No APK found in build/app/outputs/flutter-apk/"
    exit 1
fi

echo "Using APK: $APK_PATH"
echo "Uploading to GitHub release..."
gh release upload v0.3.6 "$APK_PATH" --repo Jens-Space/mymedibuddy-testers --clobber

echo "Done! APK uploaded to website."