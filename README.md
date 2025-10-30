# Fitnest

Fitnest is a Flutter-based mobile application that provides a modern architecture for authentication, theming, localization, and state management. The project integrates Firebase, Riverpod, GoRouter, and custom themes to serve as a scalable template for Flutter apps.

## Features

- **Authentication**: Email/password signup and login using Firebase Auth (`firebase_auth`).
- **State Management**: Powered by Riverpod 3.x (`flutter_riverpod` and code generation).
- **Navigation**: Declarative routing with `go_router`.
- **Custom Theming**: Light and dark themes with Material 3, custom palettes, and typography.
- **Localization**: Built-in support for English via custom localizations.
- **Firebase Integration**: Configuration out-of-the-box (Android/iOS/other platforms).
- **Project Structure**: Cleanly separated by domain (`lib/config`, `lib/data`, `lib/domain`, `lib/ui`, `lib/routing`, etc.).

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (≥ 3.9.2)
- Firebase project and setup (Google Services files already included for Android and iOS)

### Installation

1. **Clone** the repo:
   ```bash
   git clone https://github.com/youruser/fitnest.git
   cd fitnest
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app** (for example, Android/iOS):
   ```bash
   flutter run
   ```

   Make sure your Firebase configuration is correct for all platforms you target.

### Project Structure

- `lib/`
  - `config/` - App theming and style configuration
  - `data/` - Repositories, services (API, Firebase)
  - `domain/` - Core business models
  - `routing/` - App-wide router, route definitions, and state management for authentication
  - `ui/` - Widgets and screens grouped by feature
  - `utils/` - Common utility functions

### Key Packages

- `firebase_core`, `firebase_auth` – Backend authentication
- `go_router` – Modern navigation framework
- `flutter_riverpod` – State management
- `freezed`, `json_serializable` – Immutable models and JSON serialization
- `google_fonts` – Font theming

### Theming and Localization

- **Light/Dark themes**: Easily switchable and extendable (`lib/config/theme`).
- **Localization**: App text is customizable and ready for extension (`lib/ui/core/localization/app_localization.dart`).

### Authentication Flows

- Signup and login with form validation
- Secure session persistence using Firebase
- Logout and error handling

### Routing

- Guards navigation based on authentication state
- Sample routes: `login`, `signup`, `home`

### Testing

Run all widget and integration tests using:
```bash
flutter test
```

### Contributing

Feel free to fork, submit issues or pull requests!

---

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [GoRouter Docs](https://pub.dev/packages/go_router)
- [Firebase for Flutter](https://firebase.flutter.dev/)

---

© 2025 Fitnest Project
