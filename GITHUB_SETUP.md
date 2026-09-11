# KDGRAM — GitHub setup

## Phone-friendly method
1. Create/open the public repository.
2. Upload the project files so that `apps/`, `services/`, `packages/`, `infra/`, and `assets/` are at the repository root.
3. The included workflow `.github/workflows/extract.yml` can also extract `KDGRAM_ANDROID_RELEASE_PREP.zip` automatically if the ZIP is uploaded to the repository root.
4. Wait for GitHub Actions to finish.

## Expo/EAS
The Android app is configured as `com.kdgram.app` with versionCode 1 and production output as an Android App Bundle (AAB).

The Expo account/project link is account-specific and is intentionally not hard-coded here. After the source is in GitHub, link `apps/mobile` to the existing Expo project using EAS CLI, or add the project's `extra.eas.projectId` to `apps/mobile/app.json`.

## Important before production
- Set the production API URL; the current mobile prototype uses a local development URL.
- Configure PostgreSQL and Redis environment variables.
- Move media uploads from local disk to S3-compatible object storage + CDN.
- Add refresh tokens, email/phone verification, rate limiting, moderation/report/block flows, push notifications, and production WebSocket authentication.
- Publish the privacy policy at a public HTTPS URL and complete Google Play Data Safety and account/developer requirements.
