# YouthConnect Burkina Faso

## Application Overview

YouthConnect Burkina Faso is the official mobile platform connecting young Burkinabe citizens with:
- Career opportunities
- Educational resources
- Community programs
- Government services

## Key Features

### Home Dashboard
- News carousel with latest updates
- Quick-access sections:
  -  Opportunities (Jobs, Internships, Tenders)
  -  Media programs (Radio, TV)
  -  Education (Scholarships, Trainings)

### Intuitive Navigation
- Bottom navigation bar with 5 main sections
- Category tabs for easy filtering
- Personalized user account

### Modern UI/UX
- Clean orange/white color scheme
- Responsive across all devices
- Custom iconography
- Smooth animations

## Technical Stack

**Core Technologies**:
- Flutter 3.16+
- Dart 3.0+
- Material Design 3

## Getting Started


### Project structure

lib/
├── main.dart              # Application entry point
├── constants/             # App constants and theming
├── models/                # Data models
├── screens/               # All application screens
│   ├── home_screen.dart   # Main dashboard
│   ├── news_screen.dart   # News feed
│   └── ...                # Other screens
├── services/              # Business logic
├── widgets/               # Reusable components
│   ├── custom_app_bar.dart
│   ├── opportunity_card.dart
│   └── ...
└── utils/                 # Utilities and helpers

### Prerequisites
- Flutter SDK (3.16+ recommended)
- Android Studio/Xcode (for emulators)
- Git version control

### Installation
```bash
# 1. Clone the repository
git clone https://github.com/enimal-bot/YouthConnectApp.git

# 2. Navigate to project directory
cd YouthConnectApp

# 3. Install dependencies
flutter pub get

# 4. Run the application
flutter run
