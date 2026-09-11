# KDGRAM — Android Release Preparation

این بسته برای انتشار Android آماده‌سازی شده است.

## خروجی انتشار
- Package: `com.kdgram.app`
- Version: `1.0.0`
- Version code: `1`
- Store artifact: Android App Bundle (`.aab`)
- Preview artifact: APK
- Story lifetime: 36 hours

## ساخت AAB
در محیط دارای Node.js و دسترسی اینترنت:

```bash
npm install -g eas-cli
cd apps/mobile
eas login
eas build --platform android --profile production
```

پس از ساخت، EAS لینک دریافت AAB را می‌دهد.

## تست APK قبل از انتشار
```bash
eas build --platform android --profile preview
```

## نکات مهم
1. برای انتشار واقعی باید حساب Google Play Console متعلق به مالک برنامه باشد.
2. رمز عبور، کد 2FA، کلید بانکی یا اطلاعات محرمانه را در اختیار شخص/چت دیگری قرار ندهید.
3. قبل از ارسال به Google Play باید Privacy Policy عمومی، Data Safety، اسکرین‌شات‌ها، آیکون/گرافیک‌های نهایی و تست ورود آماده باشند.
4. این پروژه هنوز نیازمند تست امنیتی و عملیاتی نهایی است؛ ساخت AAB به معنی تأیید کامل Production نیست.
