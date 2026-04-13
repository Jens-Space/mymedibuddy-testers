# Progress Log

## Date
13 April 2026

## Summary
This log captures the latest website updates made during this session and the current tester launch status.

## Completed Updates
- Updated typography and readability across all pages (size, weight, spacing, contrast).
- Tuned hero/title behavior so emoji and title stay together on one line for home.
- Updated About text copy on home pages.
- Adjusted section text fit and wrapping inside card borders.
- Added back-to-top button that appears on scroll and hides at top.
- Refined back-to-top icon style (centering, bolder look, then SVG chevron, larger size).
- Navigation text made bold.
- Mobile navigation now stays horizontal instead of stacking into a list.
- Mobile text layout, spacing, card padding, and button sizing improved across pages.
- Download button arrow icon removed.
- "Latest Beta" text size matched to version text.
- Download source switched from Google Drive to GitHub Pages direct APK hosting.
- Download button now uses native browser download behavior for better reliability.
- Download feedback message styling improved for visibility.
- Release message template files added at repository root.

## Current APK Download URL
https://jens-space.github.io/mymedibuddy-testers/docs/MyMediBuddy-Beta.apk

## Main Tester Entry Page
https://jens-space.github.io/mymedibuddy-testers/docs/download.html

## Release Process (Current Best Practice)
1. Keep APK filename as MyMediBuddy-Beta.apk.
2. Build a signed APK with the same signing key and a higher versionCode.
3. Replace docs/MyMediBuddy-Beta.apk with the new build.
4. Commit and push to main.
5. Wait for GitHub Pages deploy to complete.
6. Send testers the website link and message template.

## Notes
- Site deploys via GitHub Pages workflow on push to main.
- CSS cache-busting query string updates are in place.
- Debug build footer can be viewed with ?debug=1.
- RELEASE_MESSAGE_PACK.md contains full tester message templates.
- WHATSAPP_MESSAGE_PACK.md contains short reminder versions.

## Launch Status
- Website is ready to send to the first tester.
- Recommended link to share: https://jens-space.github.io/mymedibuddy-testers/docs/download.html
