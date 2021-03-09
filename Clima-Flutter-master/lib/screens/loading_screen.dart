
import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var latitude;
  var longitude;
  @override
  void initState() {
    super.initState();
    getLocationdata();

}
  void getLocationdata() async{
   var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder:(context){
    return LocationScreen(weatherData);
  }));

  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SpinKitChasingDots(
          color: Colors.greenAccent,
          size: 100.0,
        ),
      ),
    );
  }
}


