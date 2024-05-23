import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal1 extends StatefulWidget {
  const Principal1({super.key});

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Primeira Tela',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Stack(
          children: [
            FlutterMap(
                options:
                MapOptions(center: LatLng(54.276094, -1.694883), zoom: 5),

                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=4aa8204ac81e4209842f54c177b0420f',
                    subdomains: ['a', 'b', 'c'],
                    userAgentPackageName: 'com.example.app',
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(54.276094, -1.694883),
                        builder: (ctx) => Container(
                          child: Icon(Icons.location_on, color: Colors.white),
                        ),
                      ),
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(54.276094, -1.694883),
                        builder: (ctx) => Container(
                          child: Icon(Icons.location_on, color: Colors.white),
                        ),
                      )
                    ],
                  )
                ])
          ],
        ));
  }
}
