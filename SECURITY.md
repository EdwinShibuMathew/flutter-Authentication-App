# Security Policy

## Firebase Configuration Security

### Protected Files
The following files contain sensitive Firebase configuration and are excluded from version control:

- `lib/firebase_options.dart` - Contains API keys and project configuration
- `android/app/google-services.json` - Android Firebase configuration
- `ios/Runner/GoogleService-Info.plist` - iOS Firebase configuration
- `.env` files - Environment variables

### Setup Instructions

1. Copy `lib/firebase_options_template.dart` to `lib/firebase_options.dart`
2. Replace placeholder values with your Firebase project configuration
3. Get configuration from [Firebase Console](https://console.firebase.google.com/)

### API Key Restrictions

Firebase API keys are restricted to authorized domains:
- `*.web.app` (Firebase Hosting)
- `*.firebaseapp.com` (Firebase Hosting)
- `localhost:*` (Development)

### Reporting Security Issues

If you discover a security vulnerability, please email the maintainer instead of using the issue tracker.
