import 'package:flutter/material.dart';
import 'package:rentcar/constants/constants.dart';
import 'package:rentcar/screens/map_screen.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  String S = r'$';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 25.0, left: 20, right: 20, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Information',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notification_important_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    width: 390,
                    height: 250,
                    decoration: BoxDecoration(
                      color: CostumColor.grayweitmehr,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65.0, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NEAREST CAR',
                        style: TextStyle(
                            color: CostumColor.grayweit, fontSize: 16),
                      ),
                      const Image(
                        image: AssetImage('images/image_29.png'),
                      ),
                      Text(
                        'Fortuner GR',
                        style:
                            TextStyle(color: CostumColor.bluGrey, fontSize: 27),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.near_me_sharp,
                              color: CostumColor.grayweit,
                            ),
                            const Text('> 870km'),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.local_gas_station,
                              color: CostumColor.grayweit,
                            ),
                            const Text('50'),
                            const SizedBox(
                              width: 105,
                            ),
                            Text(
                              '$S 45,00/h',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 185,
                    height: 200,
                    decoration: BoxDecoration(
                      color: CostumColor.grayweitmehr,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 42,
                          backgroundImage: AssetImage('images/photo_2.jpg'),
                        ),
                        Column(
                          children: [
                            const Text(
                              'Shahin Abdolmaleki',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              '$S 4,253',
                              style: const TextStyle(
                                  fontSize: 24, color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 185,
                    height: 200,
                    decoration: BoxDecoration(
                      color: CostumColor.grayweitmehr,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MapScreen()));
                      },
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'images/Maps.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30, top: 20),
              child: Container(
                width: 390,
                height: 270,
                decoration: BoxDecoration(
                  color: CostumColor.backblue,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'More Cars',
                            style: TextStyle(
                                fontSize: 18, color: CostumColor.textweit),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: CostumColor.grayweit,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, top: 12, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Corolla Cross',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.near_me_sharp,
                                    color: CostumColor.textweit2,
                                  ),
                                  Text(
                                    '> 4km',
                                    style: TextStyle(
                                        color: CostumColor.textweit2,
                                        fontSize: 15),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.local_gas_station,
                                    color: CostumColor.textweit2,
                                  ),
                                  Text('50L',
                                      style: TextStyle(
                                          color: CostumColor.textweit2,
                                          fontSize: 15)),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: CostumColor.textweit2,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, top: 12, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Ionic 5',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.near_me_sharp,
                                    color: CostumColor.textweit2,
                                  ),
                                  Text(
                                    '> 8km',
                                    style: TextStyle(
                                        color: CostumColor.textweit2,
                                        fontSize: 15),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.battery_1_bar,
                                    color: CostumColor.textweit2,
                                  ),
                                  Text('80%',
                                      style: TextStyle(
                                          color: CostumColor.textweit2,
                                          fontSize: 15)),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: CostumColor.textweit2,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
