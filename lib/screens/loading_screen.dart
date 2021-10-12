import 'package:weather_app/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/services/weather.dart';

// const apiKey = '07a3966d2806a6fe38ac550c69866354';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // double latitude;
  // double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
    // print('This line of code is triggered');
  }

  void getLocationData() async {
    // Location location = Location();

    // await location.getCurrentLocation();  //? MOVED TO WEATHER.DART

    // latitude = location.latitude;
    // longitude = location.longitude;
    // print(location.latitude);
    // print(location.longitude);

    // NetworkHelper networkHelper = NetworkHelper(
    //     'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric'); //? MOVED TO WEATHER.DART

    // double temperature = decodedData['main']['temp'];
    // int condition = decodedData['weather'][0]['id'];
    // String cityName = decodedData['name'];   MOVED TO LOCATION SCREEN

    // var weatherData = await networkHelper.getData();

    // WeatherModel weatherModel = WeatherModel();
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
    // print(temperature);
    // print(condition);
    // print(cityName);
  }

  // void getData() async {
  // http.Response response = await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22'));
  // http.Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'));
  // print(response.body);

  // if (response.statusCode == 200){
  //   String data = response.body;
  // print(data);

  // var longitude = jsonDecode(data) ['coord']['lon'];
  // print(longitude);
  //
  // var weatherDescription = jsonDecode(data)['weather'][0]['description'];
  // print(weatherDescription);

  // var decodedData = jsonDecode(data);

  // double temperature = jsonDecode(data)['main']['temp'];
  // int condition = jsonDecode(data)['weather'][0]['id'];
  // String cityName = jsonDecode(data)['name'];

  // double temperature = decodedData['main']['temp'];
  // int condition = decodedData['weather'][0]['id'];
  // String cityName = decodedData['name'];
  //
  // print(temperature);
  // print(condition);
  // print(cityName);
  // }
  // else{
  //   print(response.statusCode);
  // }
  // }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      body: Center(
        child: SpinKitWanderingCubes(
          color: Colors.white,
          size: 100.0,
        ),
      ),
      // body: Center(
      //   child: Container(
      //     // color: Colors.blue.shade900,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10.0),
      //       color: Colors.blue.shade900
      //     ),
      //     child: TextButton(
      //       onPressed: () {
      //           getLocation();
      //       },
      //       child: Text(
      //           'Get Location',
      //         style: TextStyle(
      //           color: Colors.white
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
