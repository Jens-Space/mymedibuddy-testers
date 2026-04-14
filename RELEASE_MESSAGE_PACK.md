# My Medi Buddy Release Message Pack

## Quick Use
1. Replace placeholders: vX.Y.Z, [date], [feature].
2. Send Initial Message when release is live.
3. Send 24h Reminder to people who have not confirmed.
4. Send Final Reminder before the test window ends.

---

## Initial Release Message

Hi testers, new My Medi Buddy update is live: **vX.Y.Z**

### What's new
- [Feature/change 1]
- [Feature/change 2]
- [Feature/change 3]

### Download
https://jens-space.github.io/mymedibuddy-testers/docs/download.html

### Please do this today
- Install the update
- Test: [area/feature A]
- Test: [area/feature B]
- Reply with: Updated ✅ once done

If you find a bug, please include:
- what happened
- what you expected
- screenshot/screen recording if possible

---

## 24h Reminder Message

Quick reminder to update to **vX.Y.Z** today.

Download:
https://jens-space.github.io/mymedibuddy-testers/docs/download.html

Please reply with Updated ✅ after install.
Focus test areas:
- [area/feature A]
- [area/feature B]

---

## Final Reminder Message

Final reminder for this test cycle: please install **vX.Y.Z** by [date/time].

Download:
https://jens-space.github.io/mymedibuddy-testers/docs/download.html

Reply with:
- Updated ✅ if done
- Need help if install is failing

Thank you all for helping improve My Medi Buddy.

---

## Confirmation Tracker Format

- Name - Updated ✅ / Pending / Need help
- Name - Updated ✅ / Pending / Need help
- Name - Updated ✅ / Pending / Need help

---

## Release Checklist (Owner)

1. Build signed APK with higher versionCode.
2. Replace APK at docs/MyMediBuddy-Beta.apk.
3. Push to main and wait for GitHub Pages deploy.
4. Open the download page and test install on one phone.
5. Send Initial Release Message.
6. Track confirmations.
7. Send reminders.
