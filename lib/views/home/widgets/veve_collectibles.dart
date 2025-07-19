import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VeveCollectibles extends StatelessWidget {
  const VeveCollectibles({super.key});

  final List<Map<String, String>> brands = const [
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.coca-cola_1licensor_image.coca-cola.avif',
    },
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.disney_1licensor_image.disney.avif',
    },
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.funko_1licensor_image.funko.avif',
    },
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.Marvel_1licensor_image.Marvel.avif',
    },
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.masarati_1licensor_image.masarati.avif',
    },
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.startrek_1licensor_image.startrek.avif',
    },
    {
      'imageUrl':
          'assets/homepage_assets/licensor_image.ubisoft_1licensor_image.ubisoft.avif',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 24.0)),
          const SizedBox(height: 16),

          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: brands.length,
              itemBuilder: (context, index) {
                final brand = brands[index];
                return Container(
                  width: 140,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2D3A),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        brand['imageUrl']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'assets/const_assets/VeVe-word-mark-1.svg',
                      height: 24,
                   
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Text(
                      "Collectibles",
                      style: TextStyle(
                        color: Color(0xff0086ff),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              child: Image.asset("assets/homepage_assets/mobilevolverine.jpg"),
            ),
          ),
          SizedBox(height: 20),

          Center(
            child: Container(
              width: 250,
              alignment: Alignment.center,
              child: Text(
                "Collecting like you've never seen before!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 380,
              alignment: Alignment.center,
              child: Text(
                "Find your fandom and join the growing community of collectors who are celebrating their passion with digital collectibles!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0281FA), Color(0xFF004CB9)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Browse Collectibles",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 201, 201),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 201, 201),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: 5,
              itemBuilder: (context, index) {
                final features = [
                  {
                    'image': 'assets/homepage_assets/licensed.svg',
                    'text': 'Officially Licensed',
                  },
                  {
                    'image': 'assets/homepage_assets/limited.svg',
                    'text': 'Exclusive Limited Editions',
                  },
                  {
                    'image': 'assets/homepage_assets/quality.svg',
                    'text': 'High quality models',
                  },
                  {
                    'image': 'assets/homepage_assets/friendly.svg',
                    'text': 'Environmentally friendly',
                  },
                  {
                    'image': 'assets/homepage_assets/secure.svg',
                    'text': '100% Secure',
                  },
                ];

                return Container(
                  width: 250,
                  height: 175,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: SvgPicture.asset(
                          width: 50,
                          height: 50,
                          features[index]['image']!,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            features[index]['text']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'assets/const_assets/VeVe-word-mark-1.svg',
                      height: 24,
                
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Text(
                      "Comics",
                      style: TextStyle(
                        color: Color(0xff01a758),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
