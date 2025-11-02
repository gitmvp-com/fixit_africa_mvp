# FixIt Africa MVP

A comprehensive Flutter-based automotive service application connecting vehicle owners with mechanics, garages, and parts suppliers.

## Features

- ✅ Authentication (Supabase + Google Sign-in)
- ✅ Dashboard & User Profiles
- ✅ My Cars Management
- ✅ Find Mechanics & Garages
- ✅ Service Booking & Tracking
- ✅ Payment Processing
- ✅ Parts Marketplace with Price Comparison
- ✅ Reviews & Ratings
- ✅ Chat/Messaging
- ✅ Notifications
- ✅ AI Repair Assistant
- ✅ Car Part Identification
- ✅ Repair Guides
- ✅ Roadside Assistance
- ✅ Navigation (Google Maps)
- ✅ Maintenance Reminders
- ✅ Mechanic Onboarding
- ✅ Financial Management
- ✅ Analytics & Performance
- ✅ Inventory Management
- ✅ Loyalty Program
- ✅ Admin Dashboard

## Prerequisites

- Flutter SDK (^3.6.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android SDK / Xcode (for iOS development)

## Installation

1. Install dependencies:
```bash
flutter pub get
```

2. Create an `env.json` file in the root directory:
```json
{
  "SUPABASE_URL": "your-supabase-url",
  "SUPABASE_ANON_KEY": "your-supabase-anon-key",
  "OPENAI_API_KEY": "your-openai-api-key",
  "GEMINI_API_KEY": "your-gemini-api-key",
  "ANTHROPIC_API_KEY": "your-anthropic-api-key",
  "PERPLEXITY_API_KEY": "your-perplexity-api-key",
  "GOOGLE_WEB_CLIENT_ID": "your-google-web-client-id"
}
```

3. Run the application:
```bash
flutter run --dart-define-from-file=env.json
```

## Project Structure

```
lib/
├── core/               # Core utilities and exports
├── models/             # Data models
├── presentation/       # UI screens
├── routes/             # App routing
├── services/           # Backend services
├── theme/              # Theme configuration
├── utils/              # Utility functions
├── widgets/            # Reusable widgets
└── main.dart           # Entry point
```

## Building for Production

```bash
# Android
flutter build apk --release --dart-define-from-file=env.json

# iOS
flutter build ios --release --dart-define-from-file=env.json
```

## Based on

This MVP is based on [jolems123/fixit_africa](https://github.com/jolems123/fixit_africa)

Built with ❤️ using Flutter
