# 🌤 Flutter Weather App + Firebase + Tic-Tac-Toe AI Game

This project is a **multi-functional Flutter application** that combines:
1. **Weather Forecasting** (via OpenWeatherMap API)
2. **User Authentication & Data Storage** (via Firebase)
3. **Tic-Tac-Toe Game with AI Opponent** (using Minimax or Alpha-Beta Pruning algorithms)

---

## 📌 Features

### 1. **Weather Forecast**
- Fetches **real-time weather** for the current location or a searched city.
- Uses the **OpenWeatherMap API**.
- Displays:
  - Temperature
  - Weather condition (e.g., sunny, cloudy, rainy)
  - Location details
  - Icons representing the weather

### 2. **Firebase Integration**
- **User Authentication** (Sign Up / Sign In with email & password)
- **Firebase Firestore Database** to store user information
- Can track user preferences and history
- Secure **real-time database operations**

### 3. **Tic-Tac-Toe AI Game**
- Classic **Tic-Tac-Toe** (3x3 grid)
- Two modes:
  - **Player vs Computer** (AI-powered)
  - **Player vs Player**
- AI decision-making:
  - **Minimax Algorithm** for perfect play
  - **Alpha-Beta Pruning** for faster computation
- Game result tracking (win/draw/loss)

---

## 🛠 Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Firebase Firestore & Authentication
- **Weather API**: OpenWeatherMap
- **AI Logic**: Minimax / Alpha-Beta Pruning

---

## 📂 Project Structure


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
## 🎯 Future Improvements

- Add **Push Notifications** for weather alerts  
- Add **Leaderboard** for Tic-Tac-Toe scores  
- Implement **offline weather caching**  
- Add **multiple AI difficulty levels**


📜 License
This project is licensed under the MIT License.

## 👨‍💻 Author

**Hafiz Tanzeel**  
📧 [hafiztanzeel.pk@gmail.com](mailto:hafiztanzeel.pk@gmail.com)  
🌐 [GitHub](https://github.com/Hafiz-Tanzeel-Shamshad) | [LinkedIn](https://www.linkedin.com/in/hafiz-tanzeel-shamshad-8680a8309/)  

