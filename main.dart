void main() {
  //Liste hat gaarantiert immer drei Elemente
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // Erstelle leere Liste für Temperaturen, Niederschlagsmenge und Windgeschwindigkeit
  List<double?> temps = [];
  List<double?> rains = [];
  List<double?> winds = [];

  // Füge die Wetterdaten in die Listen ein
  if (weatherData[0]['temp'] != null) temps.add(weatherData[0]['temp']);
  if (weatherData[1]['temp'] != null) temps.add(weatherData[1]['temp']);
  if (weatherData[2]['temp'] != null) temps.add(weatherData[2]['temp']);

  if (weatherData[0]['rain'] != null) rains.add(weatherData[0]['rain']);
  if (weatherData[1]['rain'] != null) rains.add(weatherData[1]['rain']);
  if (weatherData[2]['rain'] != null) rains.add(weatherData[2]['rain']);

  if (weatherData[0]['wind'] != null) winds.add(weatherData[0]['wind']);
  if (weatherData[1]['wind'] != null) winds.add(weatherData[1]['wind']);
  if (weatherData[2]['wind'] != null) winds.add(weatherData[2]['wind']);
  //print(temps);

  // Berechne den Durchschnitte der Listen
  double? avgTemnp;
  double? avgRain;
  double? avgWind;

  if (temps.length == 1) avgTemnp = temps[0]! / temps.length;
  if (temps.length == 2) avgTemnp = (temps[0]! + temps[1]!) / temps.length;
  if (temps.length == 3)
    avgTemnp = (temps[0]! + temps[1]! + temps[2]!) / temps.length;

  if (rains.length == 1) avgRain = rains[0]! / rains.length;
  if (rains.length == 2) avgRain = (rains[0]! + rains[1]!) / rains.length;
  if (rains.length == 3)
    avgRain = (rains[0]! + rains[1]! + rains[2]!) / rains.length;

  if (winds.length == 1) avgWind = winds[0]! / winds.length;
  if (winds.length == 2) avgWind = (winds[0]! + winds[1]!) / winds.length;
  if (winds.length == 3)
    avgWind = (winds[0]! + winds[1]! + winds[2]!) / winds.length;

  // Ausgabe
  print('Durchschnittstemperatur: $avgTemnp');
  print('Durchschnittsniederschlag: $avgRain');
  print('Durchschnittswindgeschwindigkeiten: $avgWind');

  // BONUS
  double? x =
      weatherData[2]['temp'] ??
      (weatherData[0]['wind'] ?? ((4.5 >= (weatherData[1]['temp'] ?? 0.0))
          ? weatherData[1]['temp']
          : weatherData[1]['wind']));
  print(x);
}
