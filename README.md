# rentify

## Getting Started

This project is a starting point for a Flutter application.

Sure, here's a combined explanation for your README file:

**Rentify - Where Renting Meets Simplicity**

Welcome to Rentify, the easy way to rent and lease properties.

**About:**

Rentify is a platform built using Flutter and Dart, offering a seamless experience for both property owners (sellers) and tenants (buyers). It leverages technologies like Retrofit for efficient HTTP requests and GetX for lightweight state management.

**Technologies Used:**

1. **Flutter and Dart:** Flutter is an open-source UI toolkit for building natively compiled applications across mobile, web, and desktop from a single codebase. Dart is the programming language used for building Flutter apps, offering a reactive programming model.

2. **Retrofit:** Retrofit is a type-safe HTTP client for Dart and Flutter, simplifying the process of making HTTP requests and handling responses in Flutter apps. It allows for easy definition of API endpoints, request methods, and data models.

3. **GetX:** GetX is a lightweight state management library for Flutter, providing a simple yet powerful solution for managing application state, navigation, and dependency injection. It follows a reactive programming paradigm, making UI updates easy and efficient.

**Clean Architecture:**

Rentify follows the principles of Clean Architecture, emphasizing separation of concerns, testability, and maintainability. The architecture is divided into layers, each with a specific responsibility and dependency direction. This ensures a modular and scalable codebase.

**Features:**

1. **User Registration:** Sign up with basic details as a seller or buyer.

2. **Seller Flow:**
   - Post property details.
   - Manage listings easily.
   - Update or delete properties anytime.

3. **Buyer Flow:**
   - Browse available rental properties.
   - Contact property owners directly.
   - Find your perfect rental home hassle-free.

**Getting Started:**

1. Clone the repository.
2. Install dependencies.
3. Configure and launch the application.
4. Register as a seller or buyer.
5. Follow the respective flows.
6. Enjoy renting with Rentify!


## Architecture

Follows `Clean Architecture` and modularized by features.

Each feature will be separated by folders:
1. data - Responsible for Data (Remote & Local)
2. domain - Responsible for Business Logic
3. presentation - Responsible for UI & State Management

### Data Flow:

UI ⇄ Controller ⇄ UseCase ⇄ Repository ⇄ APIService

For Example take Login Usecase will be like:

1. User Clicks Login Button (UI)
2. Controller validates if they entered data and calls LoginUseCase (Controller)
3. UseCase do any business logic (If any) and request AuthRepository (UseCase)
4. Repository request the respective APIService. (Repository)
5. APIService make a network call and return data to Repository. (APIService)
6. Repository handles the data received from network call like success failure and returns the DataResponse to UseCase (Repository)
7. UseCase returns the data to controller (UseCase)
8. Controller update UI to reflect respective response.



## Instructions for Code Generation:

To generate code with build_runner

```shell
dart run build_runner build 
```

To generate Native Launch Screen
```shell
dart run flutter_native_splash:create
```

To generate App Icons
```shell
dart run flutter_launcher_icons
```


## Build

To build for Android

```shell
flutter build appbundle --release
```
