# 🏨 Grand Hotel

Grand Hotel is a modern and responsive hotel booking mobile application UI built with **Flutter**.

The project provides a complete hotel browsing and booking experience, including authentication, hotel discovery, hotel details, booking management, messages, and user profile screens.

> This project was developed as part of the **Digital Egypt Pioneers Initiative (DEPI)** Flutter training.

---

## ✨ Features

### 🔐 Authentication
- Splash Screen
- Onboarding
- Sign In
- Sign Up
- OTP Verification
- Forgot Password
- Create New Password

### 🏠 Home & Discovery
- Home Screen
- Popular Hotels
- Recommended Hotels
- Nearby Hotels
- Search
- Favorites
- Hotel Details
- Hotel Reviews

### 📅 Booking
- Request to Book
- Payment Method
- Booking Confirmation
- My Bookings
- Booking Details

### 💬 User Experience
- Messages
- User Profile
- Bottom Navigation
- Responsive UI

---

## 📱 App Navigation

The application uses a centralized routing system to manage navigation between screens.

The main application navigation includes:

- Home
- My Bookings
- Messages
- Profile

These sections are accessible through a reusable bottom navigation bar.

---

## 🛠️ Built With

- **Flutter**
- **Dart**
- **Flutter ScreenUtil** – Responsive UI
- **Flutter SVG** – SVG asset support
- **Cached Network Image** – Network image handling
- **Pinput** – OTP input
- **Syncfusion Flutter DatePicker**
- **Flutter Gap**
- **Google Nav Bar**

---

## 🏗️ Project Structure

```text
lib/
│
├── core/
│   ├── constants/
│   ├── routes/
│   ├── shared/
│   ├── theme/
│   └── validators/
│
├── features/
│   ├── auth/
│   ├── booking/
│   ├── home/
│   ├── hotel_details/
│   ├── message/
│   ├── profile/
│   └── reviews/
│
└── main.dart
```

The project follows a **feature-based structure** to keep the code organized, scalable, and easier for team collaboration.

---

## 📸 Screenshots

### Authentication

 <img src="assets\screenshots\flutter_01.png" width="180"/>  <img src="assets\screenshots\flutter_02.png" width="180"/>  <img src="assets\screenshots\flutter_03.png" width="180"/>  <img src="assets\screenshots\flutter_04.png" width="180"/> 
 <img src="assets\screenshots\flutter_05.png" width="180"/> <img src="assets\screenshots\flutter_06.png" width="180"/>  <img src="assets\screenshots\flutter_07.png" width="180"/>  <img src="assets\screenshots\flutter_08.png" width="180"/> 

### Home & Hotel Discovery

 <img src="assets\screenshots\flutter_01 copy.png" width="180"/>  <img src="assets\screenshots\flutter_02 copy.png" width="180"/>  <img src="assets\screenshots\flutter_03 copy.png" width="180"/>  <img src="assets\screenshots\flutter_04 copy.png" width="180"/> 
 <img src="assets\screenshots\flutter_05 copy.png" width="180"/> <img 
 <img src="assets\screenshots\flutter_01 copy 2.png" width="180"/> <img 
 <img src="assets\screenshots\flutter_02 copy 2.png" width="180"/>  <img 
<img src="assets\screenshots\flutter_03 copy 2.png" width="180"/>  <img 
 <img src="assets\screenshots\flutter_04 copy 2.png" width="180"/>  <img 
|<img src="assets\screenshots\flutter_05 copy 2.png" width="180"/>  <img 



### Messages & Profile

 <img src="assets\screenshots\flutter_06 copy.png" width="180"/>  <img src="assets\screenshots\flutter_07 copy.png" width="180"/> <img 

---

## 🚀 Getting Started

### Prerequisites

Make sure you have installed:

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android Emulator or physical device

### Installation

Clone the repository:

```bash
git clone https://github.com/Aya3bdelbaset/Grand_Hotel_UI.git
```

Navigate to the project:

```bash
cd Grand_Hotel_UI
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

## 🌿 Git Workflow

The project uses a team-based Git workflow:

```text
main
  │
  └── dev
       ├── feature/auth
       ├── feature/Home-mariam
       ├── feature/ibrahim-task
       └── feature/my-part
```

Feature development is handled on separate branches and integrated into the `dev` branch through Pull Requests.

---

## 👥 Team Collaboration

Grand Hotel was developed collaboratively as a Flutter team project.

The application was divided into independent features, allowing team members to work on different sections while maintaining a shared project structure, reusable components, centralized routing, and consistent UI styling.

---

## 🎯 Project Goals

The project focuses on:

- Building responsive Flutter interfaces
- Creating reusable widgets
- Applying organized project architecture
- Implementing centralized navigation
- Practicing Git & GitHub team collaboration
- Translating UI designs into Flutter screens
- Maintaining consistent styling across multiple features

---

## 📌 Project Status

🚧 **Under Development**

The UI and navigation are actively being developed and refined.

---

## 📄 License

This project was created for educational and training purposes.