# Flutter Firebase Authentication App

A simple Flutter app demonstrating Firebase Authentication with email/password registration and login.

## Features

- ✅ User registration with full name, email, and password
- ✅ Input validation for all fields
- ✅ User login with email and password
- ✅ Automatic user state management
- ✅ Home page with personalized greeting
- ✅ Logout functionality
- ✅ Error handling with user-friendly messages

## Prerequisites

- Flutter SDK (>=3.8.1)
- Firebase Account
- Android Studio or VS Code with Flutter extension

## Firebase Setup

### 1. Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project"
3. Name: "authenticationapp" (or your preferred name)
4. Disable Google Analytics (optional)
5. Click "Create project"

### 2. Add Android App

1. In Firebase Console, click the Android icon
2. **Package name:** `com.example.authenticationapp`
3. **App nickname:** "AuthenticationApp"
4. Click "Register app"

### 3. Download Configuration File

1. Download the `google-services.json` file
2. **IMPORTANT:** Place it in `android/app/` directory (replace the placeholder file)
3. The file structure should be:
   ```
   android/
     app/
       google-services.json  ← Place here
   ```

### 4. Enable Authentication

1. In Firebase Console, go to "Authentication"
2. Click "Get started"
3. Go to "Sign-in method" tab
4. Enable "Email/Password" provider
5. Click "Save"

## Installation

1. **Clone/Download the project**

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Replace Firebase configuration:**

   - Replace `android/app/google-services-placeholder.json` with your actual `google-services.json`

4. **Run the app:**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart                    # App entry point with Firebase initialization
├── services/
│   └── auth_service.dart        # Firebase Auth service wrapper
├── pages/
│   ├── auth_page.dart          # Login/Registration page
│   └── home_page.dart          # Home page after login
└── widgets/
    └── auth_wrapper.dart       # Authentication state wrapper
```

## Testing the App

### Test Registration Flow:

1. **Open the app** - you'll see the Sign Up form
2. **Fill in the form:**
   - Full Name: "John Doe"
   - Email: "john.doe@example.com"
   - Password: "password123"
3. **Tap "Sign Up"**
4. **Expected:** User should be registered and redirected to home page
5. **Verify:** Home page shows "Hey, John Doe! You're successfully logged in."

### Test Login Flow:

1. **Logout** from the home page
2. **You'll be back at the auth page** - notice it shows "Sign In" form
3. **Enter the same credentials:**
   - Email: "john.doe@example.com"
   - Password: "password123"
4. **Tap "Sign In"**
5. **Expected:** User should be logged in and redirected to home page

### Test Validation:

1. **Try submitting empty fields** - should show validation errors
2. **Try invalid email** (e.g., "notanemail") - should show email validation error
3. **Try short password** (less than 6 characters) - should show password validation error
4. **Try existing email during registration** - should show "account already exists" error
5. **Try wrong password during login** - should show "wrong password" error

### Test User State Persistence:

1. **Close and reopen the app** while logged in
2. **Expected:** Should open directly to home page (user stays logged in)
3. **Logout and close/reopen**
4. **Expected:** Should open to auth page

## Key Features Explained

### Input Validation

- **Full Name:** Required, minimum 2 characters
- **Email:** Required, valid email format
- **Password:** Required, minimum 6 characters

### Error Handling

The app handles various Firebase Auth errors:

- Invalid email format
- Weak password
- Email already in use
- User not found
- Wrong password
- Invalid credentials

### User State Management

- Uses `StreamBuilder` to listen to authentication state changes
- Automatically redirects users based on login status
- Persists user session across app restarts

### Security Features

- Passwords are securely handled by Firebase Auth
- User display name is stored using Firebase's `updateDisplayName`
- Proper input sanitization with `trim()`

## Troubleshooting

### Common Issues:

1. **"google-services.json not found"**

   - Ensure you've downloaded the file from Firebase Console
   - Place it exactly in `android/app/` directory
   - File name must be exactly `google-services.json`

2. **"FirebaseException: No Firebase App"**

   - Ensure `Firebase.initializeApp()` is called in `main()`
   - Check that `google-services.json` is in the correct location

3. **Build errors on Android**

   - Run `flutter clean`
   - Run `flutter pub get`
   - Try `flutter run` again

4. **Authentication not working**
   - Verify Email/Password is enabled in Firebase Console
   - Check Firebase project configuration
   - Ensure package name matches in Firebase and Android config

### Debug Mode:

Enable more detailed Firebase logs by running:

```bash
flutter run --verbose
```

## Next Steps

This app can be extended with:

- Password reset functionality
- Email verification
- Social login (Google, Facebook, etc.)
- User profile management
- Biometric authentication
- Remember me functionality

## Dependencies

- `firebase_core: ^3.8.0` - Firebase Core SDK
- `firebase_auth: ^5.3.3` - Firebase Authentication

## License

This project is for educational purposes.
