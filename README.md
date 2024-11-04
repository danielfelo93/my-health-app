# My Health App

Aplicación Flutter para convertir monedas dentro de una app de salud.

## Configuración y Ejecución

### Requisitos previos
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) o [Xcode](https://developer.apple.com/xcode/) para emular en dispositivos Android o iOS respectivamente.

### Instalación

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu_usuario/my-health-app.git
   cd my-health-app
2. Instala las dependencias de Flutter:
    flutter pub get

### Ejecución

1. Conecta un dispositivo Android o iOS, o abre un emulador.
2. Ejecuta la aplicación:
    flutter run

### Uso
* Selecciona las monedas y la cantidad para convertir.
* Elige el botón de "Convertir" para ver el resultado.

### Estructura del Proyecto
* lib/main.dart: Archivo principal donde se inicia la aplicación.
* lib/src/feature/widgets/my_health_app_drawer.dart: Contiene el widget del menú de la aplicación.
* lib/src/feature/screens/currency_screen.dart: Pantalla de conversión de moneda.