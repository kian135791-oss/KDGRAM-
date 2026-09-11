# KDGRAM — MVP واقعی

این نسخه Prototype قبلی را به یک **MVP چندسکویی قابل توسعه** تبدیل می‌کند.

## قابلیت‌های فعلی
- Web با Next.js و UI فارسی/RTL
- Mobile با React Native + Expo
- Backend با NestJS
- PostgreSQL + Redis با Docker
- ثبت‌نام و ورود با JWT و password hashing مبتنی بر scrypt
- Feed و انتشار پست
- Like
- Story API با انقضای دقیق **۳۶ ساعت**
- مدل‌های اولیه Chat / Group / Channel / Message
- لوگوی KDGRAM در assets

## اجرا
```bash
pnpm install
pnpm db:up
pnpm --filter @kdgram/api start:dev
pnpm --filter @kdgram/web dev
# برای موبایل:
pnpm --filter @kdgram/mobile start
```

برای موبایل، مقدار API در فایل `apps/mobile/app/index.tsx` را با IP سیستم توسعه‌دهنده روی شبکه محلی تنظیم کنید؛ `localhost` روی دستگاه فیزیکی به خود گوشی اشاره می‌کند.

## نکته انتشار
این پروژه **MVP/Release Candidate نیست** و قبل از انتشار عمومی هنوز باید تست امنیتی، تست بار، مدیریت فایل و CDN، WebSocket واقعی برای چت، Push Notification، گزارش/Moderation، Privacy Policy و Store metadata تکمیل شود.
