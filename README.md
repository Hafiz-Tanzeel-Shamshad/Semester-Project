# 🌤 Flutter Weather App + Firebase CRUD + Authentication + Tic-Tac-Toe AI Game

This project is a **multi-functional Flutter application** that combines:

- 🌦 **Weather Forecasting** – Fetches real-time weather updates using the [OpenWeatherMap API](https://openweathermap.org/api) with geolocation or city-based search.
- 🔥 **Firebase CRUD Operations** – Manage, store, and retrieve user data in Cloud Firestore with full **Create, Read, Update, Delete** capabilities.
- 🔑 **User Authentication** – Secure sign-up, login, and logout functionality with Firebase Authentication (Email/Password or Google Sign-In).
- 🎮 **Tic-Tac-Toe Game with AI Opponent** – Play against an AI opponent powered by **Minimax** or **Alpha-Beta Pruning** algorithms for optimal moves.

---

## 📌 Features

### 🌦 Weather Module
- Current weather based on **GPS location**  
- **City-based** weather search  
- Beautiful UI with icons and temperature details  

### 🔥 Firebase Integration
- Real-time **Firestore database** for storing custom data  
- CRUD operations with **authentication-based access control**  

### 🔑 Authentication
- Sign up & login with **email/password**  
- Password reset functionality  
- **Session persistence**  

### 🎮 Tic-Tac-Toe AI Game
- Single-player mode vs. AI  
- **Minimax** & **Alpha-Beta Pruning** algorithms for decision-making  
- Clean UI & responsive animations  

---

## 🛠 Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Firebase Firestore & Authentication
- **Weather API**: OpenWeatherMap
- **AI Logic**: Minimax / Alpha-Beta Pruning

---

## 📂 Folder Structure

```yaml
lib/
├── Authentication/         # User authentication (Firebase login/signup)
├── CRUD/                    # Create, Read, Update, Delete operations
├── Project_Files/           # Core project-related Dart files
├── Weather_API/             # Weather fetching logic & API integration
├── Home_page.dart           # Main home page UI
├── firebase_options.dart    # Firebase configuration
└── main.dart                # App entry point
```

---

## 🚀 Getting Started

### 1️⃣ Prerequisites
- Flutter SDK installed
- Firebase account set up
- OpenWeatherMap API key

### 2️⃣ Clone Repository
```bash
git clone https://github.com/yourusername/flutter-weather-tictactoe.git
cd flutter-weather-tictactoe
```

### 3️⃣ Install Dependencies
```bash
flutter pub get
```

## 4️⃣ Firebase Setup

1. Create a Firebase project in [Firebase Console](https://console.firebase.google.com/).  
2. Enable **Authentication** (Email & Password).  
3. Enable **Cloud Firestore**.  
4. Add `google-services.json` (for **Android**) and `GoogleService-Info.plist` (for **iOS**) to the project.  

---

## 5️⃣ API Key Setup

1. Get an API key from [OpenWeatherMap](https://openweathermap.org/api).  
2. Store it securely in `weather_service.dart`.
## 6️⃣ Run the App

```bash
flutter run
```
## 🎯 Future Improvements

- Add **Push Notifications** for weather alerts  
- Add **Leaderboard** for Tic-Tac-Toe scores  
- Implement **offline weather caching**  
- Add **multiple AI difficulty levels**

---

## 👨‍💻 Author

**Hafiz Tanzeel**  
📧 [hafiztanzeel.pk@gmail.com](mailto:hafiztanzeel.pk@gmail.com)  
🌐 [GitHub](https://github.com/Hafiz-Tanzeel-Shamshad) | [LinkedIn](https://www.linkedin.com/in/hafiz-tanzeel-shamshad-8680a8309/)  

---
📜 License
This project is licensed under the MIT License.
