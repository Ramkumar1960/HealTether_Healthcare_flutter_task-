Flutter Task Project:

  This Flutter project demonstrates a simple authentication flow with multiple screens using the Get package for state management and navigation.

Project Structure:

The project consists of the following files:

- main.dart: Entry point of the application. It sets up the routing and initializes the main app widget.
- first_screen.dart: Defines the UI for the first screen of the application. Displays an image, a welcome message, and a button to navigate to the second screen.
- second_page.dart: Displays a form for user authentication. Includes fields for first name, last name, and email. Validates input and navigates to the home page upon successful submission.
- home_page.dart: Simple page displaying "Home" text.
- authentication.dart: Contains a controller class for managing authentication-related state and dependencies.

Dependencies:

 -flutter SDK: 3.16.5
 -get: 4.6.6

Usage:

- The application starts with the first screen, displaying a welcome message and a button.
- Clicking the button navigates to the second screen, where users can input their details for authentication.
- Upon successful validation, users are directed to the home page.
- Modify the authentication logic and UI according to your requirements.
  
Getting Started:

- Ensure you have Flutter installed. If not, follow the installation instructions.
- Clone this repository.
- Open the project in your preferred editor.
- Run the project using 'flutter run' command.

Folder Structure:

flutter_task_project:

lib -
  -controller
    -authentication.dart
  -view
    -first_screen.dart
    -second_page.dart
    -home_page.dart
- main.dart
pubspec.yaml

# ram_kumar_flutter_task

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
