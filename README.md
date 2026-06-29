# MiPanel — مدیریت VLESS

پنل مدیریت سرور VLESS با قابلیت دیپلوی روی Railway.

## دیپلوی روی Railway

1. این ریپو رو Fork کنید
2. به [railway.app](https://railway.app) برید
3. **New Project → Deploy from GitHub repo** رو انتخاب کنید
4. ریپوی Fork شده رو انتخاب کنید
5. Railway خودکار Dockerfile رو شناسایی و دیپلوی می‌کنه
6. از Settings → Networking دامنه عمومی بگیرید

## ساختار فایل‌ها

```
mipanel/
├── index.html      # پنل اصلی
├── Dockerfile      # تنظیمات Docker
├── railway.json    # تنظیمات Railway
└── README.md
```

## قابلیت‌ها

- مدیریت کاربران VLESS
- پشتیبانی از پروتکل‌های: WS+TLS, Reality, gRPC+TLS
- تنظیمات ضد فیلتر (Fragment, CDN, Mux)
- تولید لینک و config.json برای Xray
- راهنمای دیپلوی روی Railway
