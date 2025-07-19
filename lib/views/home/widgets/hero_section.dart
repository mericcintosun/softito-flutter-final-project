import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veve/views/home/widgets/cta_buttons.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/homepage_assets/banner-mesh.png'),
              fit: BoxFit.cover,
           
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Container(
                  height: 400,
                  child: Image.asset(
                    'assets/homepage_assets/mobilespiderman.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 32),

                SvgPicture.asset(
                  'assets/const_assets/VeVe-word-mark-1.svg',
                  height: 48,
            
                ),

                const SizedBox(height: 24),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "The future of collecting is here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      height: 1.2,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "VeVe is the world's home of premium collectibles, comics and artworks. Start your digital collection today and be part of the next evolution in collecting.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),

                const SizedBox(height: 32),
                CtaButtons(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
