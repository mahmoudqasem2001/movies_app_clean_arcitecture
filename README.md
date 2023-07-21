# Flutter Movies App - Clean Architecture

Welcome to the Flutter Movies App! This application is built using the principles of Clean Architecture to ensure a robust and maintainable codebase. Clean Architecture emphasizes the separation of concerns, making it easier to manage complexity and facilitate testing.

## Getting Started

To run the app, follow these steps:

1. Ensure you have Flutter installed on your machine.
2. Clone this repository and navigate to the project directory.
3. Run `flutter pub get` to install the required dependencies.
4. Connect a physical device or emulator to your development environment.
5. Run `flutter run` to launch the app on your device.

## Architecture Overview

The Flutter Movies App follows Clean Architecture, comprising three layers:

1. **Presentation Layer**: This layer contains the UI, user interaction components, and view models. It is responsible for rendering the data and handling user inputs.

2. **Domain Layer**: The domain layer holds the business logic and use cases of the application. It is independent of any specific framework and defines the core functionalities of the app.

3. **Data Layer**: The data layer handles data retrieval from various sources, such as API calls, databases, or local storage. It includes repositories and data mappers to convert raw data into domain models.

## Folder Structure

```
|-- lib
    |-- data
    |   |-- repositories
    |   |-- data_sources
    |   |-- models
    |   
    |
    |-- domain
    |   |-- entities
    |   |-- repositories
    |   |-- use_cases
    |
    |-- presentation
    |   |-- screens
    |   |-- controllers
    |   |-- components
    |
    |-- main.dart
```

## Dependencies

The Flutter Movies App uses various packages for state management, dependency injection, and networking. Some of the key dependencies include:

- `flutter_bloc` for managing the application's state using the BLoC pattern.
- `get_it` for handling dependency injection in a simple and efficient manner.
- `http` package for making API calls to fetch movie data.
- `equatable` for simplifying equality comparisons between objects.

## Contributing

We welcome contributions to improve the Flutter Movies App! If you find any issues or have ideas for enhancements, please feel free to submit a pull request. Make sure to follow the coding guidelines and write tests for new features to ensure the app's stability.

Thank you for using the Flutter Movies App, and we hope you find it helpful and educational! Happy coding! 🚀
