#!/bin/bash
# Build and release MyMediBuddy APK to testers website

set -e

# Get version number (e.g., v0.3.7)
VERSION="${1:-}"
if [ -z "$VERSION" ]; then
    read -p "Enter version (e.g., v0.3.7): " VERSION
fi

if [ -z "$VERSION" ]; then
    echo "Error: Version required. Usage: ./release.sh v0.3.7"
    exit 1
fi

echo "Building APK..."
flutter build apk --debug

APK_PATH=$(ls -t build/app/outputs/flutter-apk/*.apk 2>/dev/null | head -1)

if [ -z "$APK_PATH" ] || [ ! -f "$APK_PATH" ]; then
    echo "Error: No APK found in build/app/outputs/flutter-apk/"
    exit 1
fi

APK_NAME="MyMediBuddyBeta-$VERSION.apk"

echo "Using APK: $APK_PATH"
echo "Copying to $APK_NAME..."
cp "$APK_PATH" "build/app/outputs/flutter-apk/$APK_NAME"

echo "Creating/Updating GitHub release $VERSION..."

# Check if release exists, create if not
if ! gh release view "$VERSION" --repo Jens-Space/mymedibuddy-testers &>/dev/null; then
    echo "Creating new release $VERSION..."
    gh release create "$VERSION" --title "MyMediBuddy $VERSION" --notes "Automated release for MyMediBuddy $VERSION" --repo Jens-Space/mymedibuddy-testers
fi

echo "Uploading APK..."
gh release upload "$VERSION" "build/app/outputs/flutter-apk/$APK_NAME" --repo Jens-Space/mymedibuddy-testers --clobber

echo "Done! APK uploaded to website as $VERSION."