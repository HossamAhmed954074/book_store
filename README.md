# 📚 Book Store Flutter App

A modern, feature-rich Flutter application that provides users with an elegant book browsing and discovery experience. The app integrates with Google Books API to offer a vast collection of books across multiple categories with a clean, responsive user interface.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Google](https://img.shields.io/badge/google-4285F4?style=for-the-badge&logo=google&logoColor=white)



## ✨ Features

### 🎯 Core Functionality
- **📖 Book Browsing**: Explore books across 30+ categories including Programming, Fantasy, Romance, Science Fiction, and more
- **🔍 Advanced Search**: Search books by title, author, genre, or keywords with real-time results
- **📚 Book Categories**: Organized category system with dedicated views for different genres
- **📄 Book Details**: Comprehensive book information including title, author, description, ratings, and pricing
- **🖼️ Rich Media**: High-quality book cover images with cached loading for optimal performance
- **🔗 External Links**: Direct links to book previews and purchase options
- **⭐ Rating System**: Display book ratings and reviews
- **💰 Price Information**: Show book pricing and availability status
- **📑 Similar Books**: Discover related books based on current selection

### 🎨 User Experience
- **🌙 Dark Theme**: Modern dark theme interface for comfortable reading
- **📱 Responsive Design**: Optimized for various screen sizes and orientations
- **🎭 Splash Screen**: Animated splash screen with smooth transitions
- **⚡ Fast Loading**: Efficient caching and lazy loading for optimal performance
- **🔄 Pull to Refresh**: Easy content refresh with intuitive gestures
- **📊 Loading States**: Professional loading indicators and error handling

## 🛠️ Technologies & Architecture

### 🏗️ Architecture Pattern
- **Clean Architecture**: Organized code structure with clear separation of concerns
- **Repository Pattern**: Abstract data layer for flexible data source management
- **BLoC State Management**: Reactive state management using Flutter BLoC pattern
- **Feature-Based Structure**: Modular organization by features (home, search, categories, splash)

### 📦 Core Dependencies
```yaml
dependencies:
  # Framework
  flutter: ^3.7.0
  
  # State Management
  flutter_bloc: ^9.1.1
  bloc: ^9.0.0
  equatable: ^2.0.7
  
  # Network & API
  dio: ^5.8.0+1
  cached_network_image: ^3.4.1
  
  # Navigation
  go_router: ^15.1.2
  
  # UI & Design
  google_fonts: ^6.2.1
  font_awesome_flutter: ^10.8.0
  material_floating_search_bar_2: ^0.5.0
  animation_search_bar: ^0.0.10
  
  # Utilities
  get_it: ^8.0.3
  dartz: ^0.10.1
  url_launcher: ^6.3.1
```

### 🔧 Key Technologies

#### **Flutter Framework**
- **Cross-platform development** for iOS and Android
- **Material Design** components and principles
- **Responsive UI** with adaptive layouts

#### **State Management - BLoC Pattern**
- **Cubit Implementation** for simplified state management
- **Reactive Programming** with streams and events
- **Separation of Business Logic** from UI components
- **States**: Loading, Loaded, Error, Initial states for all features

#### **Network Layer**
- **Dio HTTP Client** for API communication
- **Google Books API** integration for book data
- **Error Handling** with custom failure classes
- **Response Caching** for improved performance

#### **UI/UX Components**
- **Custom Widgets** for reusable components
- **Cached Network Images** for efficient image loading
- **Font Awesome Icons** for consistent iconography
- **Google Fonts** (Montserrat) for typography
- **Animated Transitions** and smooth navigation

#### **Navigation & Routing**
- **GoRouter** for declarative routing
- **Type-safe Navigation** with parameter passing
- **Deep Linking** support
- **Route Management** with centralized configuration

## 📁 Project Structure

```
lib/
├── core/                     # Core utilities and shared components
│   ├── errors/              # Error handling and failure classes
│   ├── models/              # Data models (BookModel, VolumeInfo, etc.)
│   ├── router/              # App routing configuration
│   ├── secret/              # API keys and secrets
│   ├── theme/               # App theming and styling
│   ├── utils/               # Utility functions and services
│   └── widgets/             # Shared widgets
├── features/                # Feature-based modules
│   ├── categories/          # Book categories feature
│   ├── home/                # Home screen with featured books
│   ├── search/              # Book search functionality
│   └── splash/              # Splash screen and app initialization
├── constants.dart           # App-wide constants
└── main.dart               # App entry point
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (≥3.7.0)
- Dart SDK (≥3.0.0)
- Android Studio / VS Code
- Android SDK / Xcode (for device testing)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/HossamAhmed954074/book_store.git
   cd book_store
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Configuration

The app uses Google Books API. The API endpoint is configured in:
```dart
// lib/core/secret/secret_key.dart
static const String googleBookApiLink = 'https://www.googleapis.com/books/v1/';
```

## 📱 App Flow

1. **Splash Screen** → Animated introduction with app branding
2. **Categories Screen** → Browse 30+ book categories
3. **Home Screen** → Featured books and bestsellers for selected category
4. **Search Screen** → Search books by title, author, or keywords
5. **Book Details** → Comprehensive book information with preview options

## 🎯 Features in Detail

### 📚 Category Management
- **30+ Categories**: Programming, Fantasy, Romance, Horror, Science Fiction, Mystery, etc.
- **Dynamic Loading**: Category-based book fetching
- **Responsive Grid**: Adaptive category layout

### 🏠 Home Screen
- **Featured Books**: Horizontal scrollable list of recommended books
- **Best Sellers**: Vertical list of popular books
- **Category Filtering**: Books filtered by selected category
- **Navigation**: Easy access to search and book details

### 🔍 Search Functionality
- **Real-time Search**: Instant results as you type
- **Multiple Parameters**: Search by title, author, genre
- **Result Management**: Clean result display with book cards
- **Error Handling**: Graceful handling of no results or errors

### 📖 Book Details
- **Complete Information**: Title, author, description, ratings
- **Price Display**: Book pricing and availability
- **Preview Links**: Direct access to book previews
- **Similar Books**: Recommendations based on current book
- **Responsive Layout**: Optimized for different screen sizes

## 🎨 Design System

### Color Palette
- **Primary**: `#100B20` (Dark Purple)
- **Accent**: `#EF8262` (Orange)
- **Background**: Dark theme with Material Design principles

### Typography
- **Primary Font**: Montserrat (via Google Fonts)
- **Hierarchical Text Styles**: Consistent typography scale
- **Responsive Text**: Adaptive text sizing

### Components
- **Custom Book Cards**: Elegant book display components
- **Loading Indicators**: Smooth loading animations
- **Error Widgets**: User-friendly error displays
- **Search Bars**: Interactive search components

## 🧪 Testing

The app includes widget tests and can be extended with:
```bash
flutter test                 # Run unit and widget tests
flutter integration_test     # Run integration tests
```

## 📦 Build & Deployment

### Android
```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Hossam Ahmed**
- GitHub: [@HossamAhmed954074](https://github.com/HossamAhmed954074)

## 🙏 Acknowledgments

- Google Books API for providing comprehensive book data
- Flutter team for the amazing framework
- Open source community for the excellent packages used

---

*Built with ❤️ using Flutter*
