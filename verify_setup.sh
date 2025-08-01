#!/bin/bash
# Quick verification script for Firebase Auth setup

echo "🔥 Firebase Authentication App Setup Verification"
echo "=================================================="
echo ""

echo "✅ Checking project structure..."
echo "📁 Main files:"
if [ -f "lib/main.dart" ]; then echo "  ✓ lib/main.dart"; else echo "  ✗ lib/main.dart"; fi
if [ -f "lib/services/auth_service.dart" ]; then echo "  ✓ lib/services/auth_service.dart"; else echo "  ✗ lib/services/auth_service.dart"; fi
if [ -f "lib/pages/auth_page.dart" ]; then echo "  ✓ lib/pages/auth_page.dart"; else echo "  ✗ lib/pages/auth_page.dart"; fi
if [ -f "lib/pages/home_page.dart" ]; then echo "  ✓ lib/pages/home_page.dart"; else echo "  ✗ lib/pages/home_page.dart"; fi
if [ -f "lib/widgets/auth_wrapper.dart" ]; then echo "  ✓ lib/widgets/auth_wrapper.dart"; else echo "  ✗ lib/widgets/auth_wrapper.dart"; fi

echo ""
echo "📁 Firebase configuration:"
if [ -f "android/app/google-services.json" ]; then echo "  ✓ android/app/google-services.json"; else echo "  ✗ android/app/google-services.json"; fi

echo ""
echo "🎯 Next steps:"
echo "1. Enable Email/Password authentication in Firebase Console"
echo "2. Test user registration flow"
echo "3. Test user login flow"
echo "4. Test logout functionality"
echo ""
echo "🚀 Ready to test! Run 'flutter run' if not already running."
