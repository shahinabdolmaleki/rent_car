import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:rentcar/constants/constants.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String S = r'$';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
            initialCenter: LatLng(50.107221, 8.687696), initialZoom: 17),
        children: [
          TileLayer(
            urlTemplate:
            //API from Flutter_map or another map api
                '',
            
            userAgentPackageName: 'com.example.rentcar',
            // Plenty of other options available!
          ),
          const MarkerLayer(
            markers: [
              Marker(
                rotate: true,
                point: LatLng(50.107221, 8.687696),
                width: 90,
                height: 90,
                child: Icon(Icons.navigation),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 575),
                child: Container(
                  width: double.infinity,
                  height: 375,
                  decoration: BoxDecoration(
                      color: CostumColor.backblue,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 22, left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fortuner GR',
                          style: TextStyle(color: Colors.white, fontSize: 27),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.near_me_sharp,
                              color: Colors.white,
                            ),
                            Text('> 870km',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.local_gas_station,
                              color: Colors.white,
                            ),
                            Text('50',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 690),
                child: Container(
                  width: double.infinity,
                  height: 375,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Features',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 160,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: CostumColor.textweit2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15))),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 12.0, top: 10, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.local_gas_station,
                                        size: 40,
                                      ),
                                      Text('Diesel',
                                          style: TextStyle(fontSize: 20)),
                                      Text(
                                        'Common Rail Fuel Injection',
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 160,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: CostumColor.textweit2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15))),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 12.0, top: 10, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.speed,
                                        size: 40,
                                      ),
                                      Text('Acceleration',
                                          style: TextStyle(fontSize: 20)),
                                      Text(
                                        '0 - 100km / 11s',
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 160,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: CostumColor.textweit2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15))),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 12.0, top: 10, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.airline_seat_recline_extra,
                                        size: 40,
                                      ),
                                      Text('Cool Seat',
                                          style: TextStyle(fontSize: 20)),
                                      Text(
                                        'Temp Control on seat',
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '$S 45,00/day',
                              style: const TextStyle(fontSize: 25),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(147, 54),
                                    backgroundColor: Colors.black),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 200,
                right: 20,
                child: Image(
                  image: AssetImage('images/image 31.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
