# FixIt Africa MVP - Setup Guide

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (^3.6.0 or later)
- **Dart SDK** (comes with Flutter)
- **Android Studio** or **VS Code** with Flutter extensions
- **Git**

### For Android Development:
- Android SDK
- Android Studio
- Android Emulator or physical device

### For iOS Development (macOS only):
- Xcode
- CocoaPods
- iOS Simulator or physical device

## Installation Steps

### 1. Clone the Repository

```bash
git clone https://github.com/gitmvp-com/fixit_africa_mvp.git
cd fixit_africa_mvp
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Configure Environment Variables

Create an `env.json` file in the root directory with the following structure:

```json
{
  "SUPABASE_URL": "your-supabase-project-url",
  "SUPABASE_ANON_KEY": "your-supabase-anon-key",
  "OPENAI_API_KEY": "your-openai-api-key",
  "GEMINI_API_KEY": "your-gemini-api-key",
  "ANTHROPIC_API_KEY": "your-anthropic-api-key",
  "PERPLEXITY_API_KEY": "your-perplexity-api-key",
  "GOOGLE_WEB_CLIENT_ID": "your-google-web-client-id"
}
```

### 4. Set Up Supabase

1. Create a Supabase project at [supabase.com](https://supabase.com)
2. Copy your project URL and anon key
3. Add them to your `env.json` file

### 5. Set Up AI Services (Optional)

For AI Repair Assistant functionality:

- **OpenAI**: Get API key from [platform.openai.com](https://platform.openai.com)
- **Google Gemini**: Get API key from [ai.google.dev](https://ai.google.dev)
- **Anthropic**: Get API key from [console.anthropic.com](https://console.anthropic.com)
- **Perplexity**: Get API key from [perplexity.ai](https://www.perplexity.ai)

### 6. Set Up Google Maps (Optional)

For navigation features:

1. Get Google Maps API key from [Google Cloud Console](https://console.cloud.google.com)
2. Enable Google Maps SDK for Android/iOS
3. Add the API key to your Android and iOS configurations

#### Android Configuration:

Edit `android/app/src/main/AndroidManifest.xml`:

```xml
<application>
    <meta-data
        android:name="com.google.android.geo.API_KEY"
        android:value="YOUR_GOOGLE_MAPS_API_KEY"/>
</application>
```

#### iOS Configuration:

Edit `ios/Runner/AppDelegate.swift`:

```swift
import GoogleMaps

GMSServices.provideAPIKey("YOUR_GOOGLE_MAPS_API_KEY")
```

### 7. Set Up Google Sign-In (Optional)

1. Create OAuth 2.0 credentials in Google Cloud Console
2. Add the Web client ID to `env.json`
3. Configure Android and iOS apps in Google Cloud Console

## Running the App

### Using CLI

```bash
flutter run --dart-define-from-file=env.json
```

### Using VS Code

1. Create `.vscode/launch.json`:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "fixit_africa",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "args": [
        "--dart-define-from-file",
        "env.json"
      ]
    }
  ]
}
```

2. Press F5 or click "Run and Debug"

### Using Android Studio

1. Go to Run > Edit Configurations
2. Add to "Additional arguments":
   ```
   --dart-define-from-file=env.json
   ```
3. Click Run

## Building for Production

### Android APK

```bash
flutter build apk --release --dart-define-from-file=env.json
```

### Android App Bundle

```bash
flutter build appbundle --release --dart-define-from-file=env.json
```

### iOS

```bash
flutter build ios --release --dart-define-from-file=env.json
```

## Troubleshooting

### Common Issues

1. **Supabase initialization fails**
   - Ensure `env.json` has correct credentials
   - Check if Supabase project is active

2. **Google Maps not showing**
   - Verify API key is correct
   - Enable required APIs in Google Cloud Console
   - Check billing is enabled

3. **Build fails on iOS**
   - Run `pod install` in ios directory
   - Clean build: `flutter clean && flutter pub get`

4. **Dependencies conflict**
   - Update Flutter: `flutter upgrade`
   - Clear cache: `flutter pub cache repair`

## Testing

```bash
flutter test
```

## Code Analysis

```bash
flutter analyze
```

## Format Code

```bash
flutter format .
```

## Support

For issues or questions:
- Open an issue on GitHub
- Check the main README.md for documentation
- Review parent repository: [jolems123/fixit_africa](https://github.com/jolems123/fixit_africa)
