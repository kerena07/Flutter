import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exercise Geolocation Week 11",
    theme: ThemeData(
        primarySwatch: Colors.brown,
        //scaffoldBackgroundColor: Color.fromARGB(255, 218, 187, 176)
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)
    ),
    home: HomePage(),
  ));

}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position? _currentPosition;
  String _currentAddress= " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Location",style:
          TextStyle(fontSize: 25),
          ),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: unnecessary_null_comparison
                if (_currentPosition !=null)
                  Text(
                      "LAT: ${_currentPosition?.latitude}, LNG: ${_currentPosition?.longitude}"),
                if (_currentAddress.isNotEmpty) Text(_currentAddress),

                ElevatedButton(
                    onPressed: () {

                      _getCurrentLocation();
                      print(_currentPosition);
                    },
                    child: const Text("Get Location")
                ),
              ],
            )
        )

    );
  }
  // function get the the current location - LAT & LNG
  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        _getAddressFromLatLng();
      });
    }).catchError((e) {
      print(e);
    });
  }
  // Convert the LAT & LNG to Human Readable Address
  _getAddressFromLatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(_currentPosition!.latitude, _currentPosition!.longitude);
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
        "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }


}