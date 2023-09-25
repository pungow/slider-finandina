import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:slider_finandina/pages/page_1.dart';
import 'package:slider_finandina/pages/page_2.dart';
import 'package:slider_finandina/pages/page_3.dart';
import 'package:slider_finandina/pages/page_4.dart';
import 'package:slider_finandina/pages/page_5.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _controller = PageController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/bg-img1.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // page view
              Expanded(
                child: SizedBox(
                  child: PageView(
                    controller: _controller,
                    children: const [
                      Page1(),
                      Page2(),
                      Page3(),
                      Page4(),
                      Page5(),
                    ],
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 25.0,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(50.0), // Borde
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        _controller.jumpToPage(4);
                      },
                      child: const Text(
                        'Saltar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // Dot indicators
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 5,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.white.withOpacity(0.7),
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 15,
                      ),
                    ),

                    // Botón para avanzar a la siguiente página
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
