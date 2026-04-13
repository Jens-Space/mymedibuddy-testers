# Progress Log

## Date
13 April 2026

## Summary
This log captures the latest website updates made during this session.

## Completed Updates
- Updated typography and readability across all pages (size, weight, spacing, contrast).
- Tuned hero/title behavior so emoji and title stay together on one line for home.
- Updated About text copy on home pages.
- Adjusted section text fit and wrapping inside card borders.
- Added back-to-top button that appears on scroll and hides at top.
- Refined back-to-top icon style (centering, bolder look, then SVG chevron, larger size).
- Navigation text made bold.
- Download button arrow icon removed.
- "Latest Beta" text size matched to version text.
- Download source switched from Google Drive to GitHub latest release direct URL.

## Current APK Download URL
https://github.com/Jens-Space/mymedibuddy-testers/releases/latest/download/MyMediBuddy-Beta.apk

## Release Process (Current Best Practice)
1. Keep APK filename as MyMediBuddy-Beta.apk.
2. Create new GitHub Release for each app update.
3. Upload new APK asset with same filename.
4. Ensure Android build uses same signing key and higher versionCode.

## Notes
- Site deploys via GitHub Pages workflow on push to main.
- CSS cache-busting query string updates are in place.
- Debug build footer can be viewed with ?debug=1.
