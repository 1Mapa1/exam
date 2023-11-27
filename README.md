# Описание

## Смена картинки

Добавил в файл pubspec.yaml вот такие строчки, чтобы указать путь на хранения данных
```
assets:
    - assets/
```

Так же создал файл assets в который поместил иконку и задний фон приложения

Добавил библиотеку flutter_launcher_icons: ^0.13.1 в файл pubspec.yaml, для того чтобы автоматически поменять изображение у приложения

Прописываем в том же файле вот такие строчки для создания адаптивных изображений, в которых указываем путь к иконки
```
flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/ison.png"
  adaptive_icon_background: "assets/back.png"
  adaptive_icon_foreground: "assets/ison.png"
```
Прописываем данные команды в консоль и запускам проект
```
flutter pub run flutter_launcher_icons:main
flutter clean
flutter pub get
```
