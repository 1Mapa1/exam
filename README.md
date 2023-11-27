# Описание

# Я уже выполнил все инструкции просто описываю что делал

## Смена имени приложения 

Android
Откройте файл AndroidManifest.xml, который находится в android/app/src/main.
Измените атрибут android:label в теге <application> на желаемое название. Например:
```
<application
    android:label="Новое Название">
```
iOS
Откройте файл Info.plist, который находится в ios/Runner.
Измените значение CFBundleName на желаемое название. Например:
```
<key>CFBundleName</key>
<string>Новое Название</string>
```
## Смена картинки

Добавил в файл pubspec.yaml вот такие строчки, чтобы указать путь на хранения данных
```
assets:
    - assets/
```

Так же создал файл assets в который поместил иконку приложения

Добавил библиотеку flutter_launcher_icons: ^0.13.1 в файл pubspec.yaml, для того чтобы автоматически поменять изображение у приложения

Прописываем в том же файле вот такие строчки, в которых указываем путь к иконки
```
flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon.png"
```
Прописываем данные команды в консоль и запускам проект
```
flutter pub run flutter_launcher_icons:main
flutter clean
flutter pub get
```

