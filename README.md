# DHC Internship - Week 1: Login & Navigation UI

A premium, modern Flutter application showcasing a styled login interface, email/password validation, and secure-looking navigation to a dashboard home screen. Built as part of the DHC Internship Week 1 curriculum.

---

## 🌟 Features

### 1. Modern Glassmorphic UI Aesthetics
* **Theme**: Deep dark mode theme (`0xFF0F0E17` background, `0xFF1E1E2A` containers) combined with high-contrast accent colors (`0xFFFF8906` orange) to provide a visually stunning, premium user experience.
* **Layout Structures**: Implemented using modular combination of `Column`, `Row`, and styled `Container` widgets for proper padding, spacing, and structured layouts.

### 2. Form Validation
* **Email Validation**: Validated using a regular expression (`r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'`) to check for proper email syntax.
* **Password Validation**: Validated to ensure it is not empty.
* **Inline Errors**: Built-in interactive validation displaying clean real-time error borders (`0xFFEF4565` red) and helper messages.

### 3. Route Navigation
* Uses `Navigator.push()` to transition from the **Login Screen** to the **Home Screen** upon successful validation.
* Back/Logout navigation is cleanly handled using `Navigator.pop()`.

### 4. Interactive Elements
* Password visibility toggle (show/hide password).
* Mock "Forgot Password?" feedback via a SnackBar overlay.
* Functional logout action.

---

## 📂 Project Architecture

```
lib/
│
├── main.dart                  # App configuration & unified dark theme
└── screens/
    ├── login_screen.dart      # Login Form UI, validators, layout columns/rows
    └── home_screen.dart       # Dashboard welcome card, stats layout, and logout
```

---

## ⚙️ Getting Started

### Prerequisites
* [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.0.0 or higher recommended)
* Dart SDK

### Installation

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd week_1
   ```

2. **Get Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the Application**:
   Choose your target emulator or web browser and run:
   ```bash
   flutter run
   ```

---

## 💡 Implementation Details

### Validation Code Snippet (`lib/screens/login_screen.dart`)
```dart
// Email regex matching
bool _isValidEmail(String email) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}

// Inside TextFormField Validator
validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return 'Email is required';
  }
  if (!_isValidEmail(value.trim())) {
    return 'Please enter a valid email address';
  }
  return null;
}
```
