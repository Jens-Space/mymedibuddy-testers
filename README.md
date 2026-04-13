# My Medi Buddy Website

## Overview
My Medi Buddy Website is an app-style tester portal for the My Medi Buddy Android app.

It helps early testers:
- download the latest APK,
- follow testing steps,
- understand what to test,
- submit feedback from inside the app.

## Project Structure
- index.html (root landing page)
- docs/index.html (home page used in docs path)
- docs/download.html (APK page)
- docs/MyMediBuddy-Beta.apk (APK served directly by GitHub Pages)
- docs/testing-guide.html (test guidance)
- docs/report-a-bug.html (feedback/reporting guidance)
- docs/styles.css (shared styles for all pages)
- progress.md (project progress log)
- RELEASE_MESSAGE_PACK.md (full tester message templates)
- WHATSAPP_MESSAGE_PACK.md (short message templates)

## Live Site
https://jens-space.github.io/mymedibuddy-testers/

## Local Run
1. Open the project in VS Code.
2. Use Live Server.
3. Open index.html.

## APK Download Flow (Current)
The download button uses a direct file hosted in this repository via GitHub Pages:

https://jens-space.github.io/mymedibuddy-testers/docs/MyMediBuddy-Beta.apk

Benefits:
- no Google Drive permission prompts,
- no GitHub Releases redirect chain,
- stable direct download from the website.

Tester page:

https://jens-space.github.io/mymedibuddy-testers/docs/download.html

## Release Checklist (For App Updates)
1. Increment Android versionCode (must be higher than previous build).
2. Update versionName.
3. Build a signed APK.
4. Sign with the same keystore as previous releases.
5. Replace docs/MyMediBuddy-Beta.apk with the new build (same filename).
6. Commit and push to main.

Important:
- Same signing key is required for update-in-place installs.
- Higher versionCode is required for Android to treat it as an update.

## Deployment Notes
- GitHub Pages deploys on push to main via GitHub Actions.
- HTML files use CSS query-string versioning for cache busting.
- A debug footer build marker can be shown with ?debug=1.
- The APK is now committed at docs/MyMediBuddy-Beta.apk and downloaded directly from the site.

## UX Notes Implemented
- consistent typography and spacing improvements across pages,
- improved card content fitting/wrapping,
- mobile layout improvements for text, spacing, cards, and download button,
- mobile navigation kept in a horizontal row,
- back-to-top button appears on scroll and hides near top,
- clearer installation guidance,
- unified sticky/header behavior removed so full page scrolls together,
- download confirmation message styling improved for visibility.

## Tester Launch Status
- The website is ready to send to the first tester.
- Use docs/download.html as the main entry point for installation.
- Use RELEASE_MESSAGE_PACK.md or WHATSAPP_MESSAGE_PACK.md when sending release messages.

## Copyright
© 2026 Jens-Space — My Medi Buddy Project. All rights reserved.