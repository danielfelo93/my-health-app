import 'package:flutter/material.dart';
import 'package:flutter_application/src/feature/widgets/my_health_app_drawer.dart';
import 'package:go_router/go_router.dart';

// Pantalla principal para el convertidor de monedas
class CurrencyScreen extends StatefulWidget {
  @override
  _CurrencyScreenState createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  // Lista de monedas disponibles para conversión
  final List<String> currencies = ['USD', 'EUR', 'COP', 'CAD', 'MXN'];
  
  // Variables para las monedas de entrada y salida
  String? fromCurrency;
  String? toCurrency;

  // Cantidad de dinero a convertir y el resultado de la conversión
  double? amount;
  double? result;

  // Controlador para el campo de texto donde se ingresa la cantidad
  final TextEditingController amountController = TextEditingController();

  // Función que convierte la cantidad de una moneda a otra
  void convertCurrency() {
    // Map con tasas de cambio simplificadas respecto al USD
    Map<String, double> exchangeRates = {
      'USD': 1.0,
      'EUR': 0.85,
      'COP': 4420.52,
      'CAD': 1.39,
      'MXN': 20.0,
    };

    // Verifica que las monedas de entrada y salida y la cantidad no sean nulas
    if (fromCurrency != null && toCurrency != null && amount != null) {
      double fromRate = exchangeRates[fromCurrency!]!;
      double toRate = exchangeRates[toCurrency!]!;

      // Calcula el resultado de la conversión y actualiza el estado para refrescar la interfaz
      setState(() {
        result = (amount! / fromRate) * toRate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHealthAppDrawer(),
      appBar: AppBar(
        title: Text('Currency Converter Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),  // Espacio alrededor del contenido principal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Fila con el campo de texto para la cantidad y el menú desplegable para seleccionar moneda de entrada
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cuadro de texto para la cantidad a convertir, con ancho fijo
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Cantidad a Convertir',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      // Actualiza el valor de `amount` con el texto ingresado
                      setState(() {
                        amount = double.tryParse(value);
                      });
                    },
                  ),
                ),
                SizedBox(width: 16), // Espacio entre el campo de texto y el menú desplegable

                // Menú desplegable para seleccionar la moneda de entrada
                DropdownButton<String>(
                  hint: Text('Selecciona'),
                  value: fromCurrency,
                  items: currencies.map((String currency) {
                    return DropdownMenuItem<String>(
                      value: currency,
                      child: Text(currency),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Actualiza el valor de `fromCurrency` y refresca la interfaz
                    setState(() {
                      fromCurrency = newValue;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16), // Espacio entre las filas

            // Fila para seleccionar la moneda de salida
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Moneda de Salida:'),
                SizedBox(width: 16), // Espacio entre el texto y el menú desplegable

                // Menú desplegable para seleccionar la moneda de salida
                DropdownButton<String>(
                  hint: Text('Selecciona'),
                  value: toCurrency,
                  items: currencies.map((String currency) {
                    return DropdownMenuItem<String>(
                      value: currency,
                      child: Text(currency),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Actualiza el valor de `toCurrency` y refresca la interfaz
                    setState(() {
                      toCurrency = newValue;
                    });
                  },
                ),
              ],
            ),
            
            SizedBox(height: 32), // Espacio entre la fila y el botón

            // Botón para realizar la conversión
            Center(
              child: ElevatedButton(
                onPressed: convertCurrency,  // Llama a la función convertCurrency
                child: Text('Convertir'),
              ),
            ),
            
            SizedBox(height: 32), // Espacio entre el botón y el resultado

            // Muestra el resultado de la conversión si `result` no es nulo
            if (result != null)
              Text(
                'Resultado: ${result!.toStringAsFixed(2)} $toCurrency',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}