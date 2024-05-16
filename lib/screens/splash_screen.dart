import 'package:flutter/material.dart';
import 'package:rentcar/constants/constants.dart';
import 'package:rentcar/screens/car_screen.dart';
import 'package:audioplayers/audioplayers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      backgroundColor: CostumColor.bluGrey,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                const Image(
                  image: AssetImage('images/imagecarsplash.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    '''Premium cars.
Enjoy the luxury''',
                    style: TextStyle(
                        color: CostumColor.whait,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 35),
              child: Text(
                '''Premium and prestige car daily rental.
Experience the thrill at a lower price''',
                style: TextStyle(
                  color: CostumColor.gray,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                    onPressed: () async {
                      player.play(AssetSource('assets/c1.wav'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CarScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Let's Go",
                      style: TextStyle(
                          color: CostumColor.bluGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
