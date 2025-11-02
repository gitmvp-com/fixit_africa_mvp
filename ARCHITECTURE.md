# FixIt Africa MVP - Architecture Documentation

## Overview

FixIt Africa is a comprehensive Flutter-based automotive service platform that connects vehicle owners with mechanics, garages, and parts suppliers across Africa.

## Technology Stack

### Frontend
- **Flutter** (^3.6.0) - Cross-platform mobile framework
- **Dart** - Programming language
- **Sizer** (^2.0.15) - Responsive design
- **Google Fonts** (^6.1.0) - Typography

### Backend & Services
- **Supabase** (^2.9.0) - Backend as a Service (Authentication, Database, Storage)
- **Google Sign-In** (^6.2.1) - OAuth authentication

### AI & ML
- **OpenAI** - AI repair assistance
- **Google Gemini** - AI chat and recommendations
- **Anthropic Claude** - Advanced AI features
- **Perplexity** - AI-powered search

### Maps & Location
- **Google Maps Flutter** (^2.12.3) - Maps and navigation

### Media & Files
- **Camera** (^0.10.5+5) - Car part identification
- **Image Picker** (^1.0.4) - Image selection
- **File Picker** (^8.1.7) - File uploads

### UI & Visualization
- **FL Chart** (^0.65.0) - Analytics and performance charts
- **Flutter SVG** (^2.0.9) - Vector graphics
- **Cached Network Image** (^3.3.1) - Image caching

### Networking & Data
- **Dio** (^5.4.0) - HTTP client
- **Connectivity Plus** (^6.1.4) - Network status

### Utilities
- **Shared Preferences** (^2.2.2) - Local storage
- **Intl** (^0.19.0) - Internationalization
- **Permission Handler** (^11.1.0) - Permissions management
- **Fluttertoast** (^8.2.4) - Toast notifications
- **Crypto** (^3.0.6) - Cryptography
- **Decimal** (^3.2.4) - Precise calculations

## Project Structure

```
fixit_africa_mvp/
├── lib/
│   ├── core/
│   │   └── app_export.dart          # Central exports
│   ├── models/                       # Data models (to be implemented)
│   ├── presentation/                 # UI screens
│   │   ├── welcome_landing_screen/
│   │   ├── sign_in_screen/
│   │   ├── sign_up_screen/
│   │   ├── dashboard_screen/
│   │   ├── my_cars_screen/
│   │   ├── find_mechanics_screen/
│   │   ├── mechanic_profile_screen/
│   │   ├── service_booking_screen/
│   │   ├── service_tracking_screen/
│   │   ├── payment_screen/
│   │   ├── parts_marketplace_screen/
│   │   ├── garages_screen/
│   │   ├── ai_repair_assistant_screen/
│   │   ├── chat_messaging_screen/
│   │   ├── navigation_screen/
│   │   ├── analytics_screen/
│   │   ├── inventory_screen/
│   │   ├── loyalty_program_screen/
│   │   ├── admin_dashboard_screen/
│   │   └── ... (60+ screens)
│   ├── routes/
│   │   └── app_routes.dart          # Route definitions
│   ├── services/
│   │   └── supabase_service.dart    # Supabase client
│   ├── theme/
│   │   └── app_theme.dart           # Theme configuration
│   ├── utils/                        # Utility functions (to be implemented)
│   ├── widgets/
│   │   ├── custom_image_widget.dart
│   │   └── custom_icon_widget.dart
│   └── main.dart                     # Entry point
├── assets/
│   └── images/                       # Image assets
├── android/                          # Android configuration
├── ios/                              # iOS configuration
├── pubspec.yaml                      # Dependencies
├── env.json                          # Environment variables
└── README.md                         # Documentation
```

## Feature Architecture

### 1. Authentication Flow

```
Welcome Screen
    ↓
Account Type Selection (Customer/Mechanic/Garage)
    ↓
Sign Up / Sign In
    ↓
Email Verification
    ↓
Dashboard
```

**Technologies:**
- Supabase Authentication
- Google Sign-In
- Email/Password authentication

### 2. User Roles

#### Customer
- Browse mechanics and garages
- Book services
- Track service progress
- Manage vehicles
- Purchase parts
- Access AI repair assistant
- Loyalty program participation

#### Mechanic
- Create and manage profile
- Accept service requests
- Track earnings
- View performance analytics
- Manage availability
- Chat with customers

#### Garage/Parts Seller
- Manage inventory
- Bulk upload parts
- Dynamic pricing
- Order management
- Analytics dashboard

#### Admin
- User management
- Support tickets
- Reports and analytics
- Verification requests
- Platform oversight

### 3. Core Features

#### Service Booking
- Service selection
- Date and time scheduling
- Mechanic selection
- Real-time tracking
- Payment processing

#### Parts Marketplace
- Product listings
- Search and filter
- Price comparison
- Shopping cart
- Order tracking
- Bulk operations (for sellers)

#### AI Repair Assistant
- Natural language queries
- Car part identification via camera
- Repair guides
- Diagnostic assistance
- Multi-AI provider support (OpenAI, Gemini, Anthropic, Perplexity)

#### Navigation & Maps
- Google Maps integration
- Route to mechanic/garage
- Roadside assistance
- Location-based search

#### Analytics & Reporting
- FL Chart visualizations
- Revenue tracking
- Performance metrics
- Customer feedback analysis
- Transaction history

#### Loyalty Program
- Points system
- Rewards catalog
- Gift cards
- Referral program

## Data Architecture

### Supabase Database Schema (Recommended)

```sql
-- Users
CREATE TABLE users (
  id UUID PRIMARY KEY,
  email TEXT UNIQUE,
  full_name TEXT,
  role TEXT, -- customer, mechanic, garage, admin
  phone TEXT,
  created_at TIMESTAMP
);

-- Vehicles
CREATE TABLE vehicles (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id),
  model TEXT,
  plate_number TEXT,
  year INTEGER,
  created_at TIMESTAMP
);

-- Mechanics
CREATE TABLE mechanics (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id),
  specialty TEXT,
  rating DECIMAL,
  latitude DECIMAL,
  longitude DECIMAL,
  verified BOOLEAN
);

-- Services
CREATE TABLE services (
  id UUID PRIMARY KEY,
  name TEXT,
  description TEXT,
  base_price DECIMAL
);

-- Bookings
CREATE TABLE bookings (
  id UUID PRIMARY KEY,
  customer_id UUID REFERENCES users(id),
  mechanic_id UUID REFERENCES mechanics(id),
  vehicle_id UUID REFERENCES vehicles(id),
  service_id UUID REFERENCES services(id),
  scheduled_date TIMESTAMP,
  status TEXT, -- pending, confirmed, in_progress, completed, cancelled
  total_amount DECIMAL,
  created_at TIMESTAMP
);

-- Parts
CREATE TABLE parts (
  id UUID PRIMARY KEY,
  seller_id UUID REFERENCES users(id),
  name TEXT,
  description TEXT,
  price DECIMAL,
  stock INTEGER,
  images TEXT[]
);

-- Orders
CREATE TABLE orders (
  id UUID PRIMARY KEY,
  customer_id UUID REFERENCES users(id),
  total_amount DECIMAL,
  status TEXT,
  created_at TIMESTAMP
);

-- Loyalty Points
CREATE TABLE loyalty_points (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id),
  points INTEGER,
  updated_at TIMESTAMP
);
```

## State Management

**Current Implementation:** StatefulWidget with setState()

**Recommended for Production:**
- **Provider** or **Riverpod** for simple state management
- **BLoC** for complex business logic
- **GetX** for rapid development

## Navigation

**Current:** Named routes with MaterialApp

```dart
Navigator.pushNamed(context, AppRoutes.dashboardScreen);
```

## Theming

**Color Scheme:**
- Primary: #1172d4 (Trust Blue)
- Background: #f0f2f4 (Light Gray)
- Success: #059669 (Green)
- Warning: #dc6803 (Orange)
- Error: #dc2626 (Red)

**Typography:** Google Fonts - Inter

## Security Considerations

1. **Environment Variables**: Never commit env.json to version control
2. **API Keys**: Rotate keys regularly
3. **Supabase RLS**: Implement Row Level Security policies
4. **Input Validation**: Validate all user inputs
5. **HTTPS Only**: Enforce secure connections
6. **Payment Security**: Use secure payment gateways

## Performance Optimization

1. **Image Caching**: Using cached_network_image
2. **Lazy Loading**: Implement pagination for lists
3. **Code Splitting**: Lazy load screens
4. **Minification**: Enable in release builds
5. **Asset Optimization**: Compress images and assets

## Testing Strategy

### Unit Tests
- Services (Supabase, API calls)
- Utilities and helpers
- Data models

### Widget Tests
- Individual widgets
- Screens
- Custom widgets

### Integration Tests
- User flows
- Authentication
- Booking process
- Payment flow

## CI/CD Pipeline (Recommended)

```yaml
# .github/workflows/flutter.yml
name: Flutter CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: subosito/flutter-action@v2
      - run: flutter pub get
      - run: flutter analyze
      - run: flutter test
      - run: flutter build apk
```

## Deployment

### Android
- **Play Store**: Follow Google Play guidelines
- **Signing**: Configure release signing
- **App Bundle**: Use AAB format

### iOS
- **App Store**: Follow Apple guidelines
- **Code Signing**: Configure certificates
- **TestFlight**: Beta testing

## Monitoring & Analytics (To Implement)

- **Firebase Analytics**: User behavior
- **Crashlytics**: Error tracking
- **Sentry**: Performance monitoring
- **Supabase Analytics**: Database insights

## Future Enhancements

1. **Real-time Features**: WebSocket integration for live updates
2. **Push Notifications**: Firebase Cloud Messaging
3. **Offline Mode**: Local database with sync
4. **Multi-language**: Full i18n support
5. **Voice Commands**: Speech-to-text integration
6. **AR Features**: Augmented reality for part identification
7. **Payment Integration**: Stripe, PayPal, Mobile Money
8. **Video Calls**: For remote diagnostics

## Contributing

See parent repository for contribution guidelines:
[jolems123/fixit_africa](https://github.com/jolems123/fixit_africa)
