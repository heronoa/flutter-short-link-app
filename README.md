# Short Links Flutter App

A simple Flutter application with login functionality and a basic link shortening dashboard.

---

## Features

* Login screen with form validation
* Navigation to dashboard after successful login
* Dashboard with input for shortening links (simulated)
* List of shortened links with copy-to-clipboard feature
* Responsive layout with scroll and constrained width

---

## Project Structure

* `main.dart` — Entry point that starts the app on the login screen
* `screens/login_screen.dart` — Login screen that uses the login form widget
* `screens/dashboard_screen.dart` — Dashboard screen shown after login
* `widgets/login_form.dart` — Reusable login form component

---

## Requirements

* Flutter SDK (stable channel)
* No third-party dependencies beyond core Flutter

---

## How to Run

1. Make sure Flutter is installed and configured on your system
2. Clone this repository:

   ```bash
   git clone <repo-url>
   ```
3. Navigate to the project folder:

   ```bash
   cd short_links_flutter_app
   ```
4. Run the app on an emulator or real device:

   ```bash
   flutter run
   ```

---

## Future Improvements

* Real authentication with Firebase or custom backend
* Persist user session across app restarts
* Connect link shortener to a real API
* Add payment system for a premium plan
* Add error handling and improved UX feedback

---

## Contact

For questions, open an issue or reach out directly.