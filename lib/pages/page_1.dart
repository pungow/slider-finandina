import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70.0,
                    bottom: 25.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/finandina.svg',
                    width: 77,
                    height: 77,
                  ),
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      children: [
                        TextSpan(
                          text: 'Con ',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        TextSpan(
                          text: 'Banco Finandina',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: ' tienes el poder de ser libre',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              width: 370,
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 55.0,
                left: 16.0,
                right: 16.0,
              ),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  children: [
                    TextSpan(
                      text: 'Descubre lo que puedes hacer con tu ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: 'app Banco Finandina',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
