import 'package:flutter/material.dart';
import 'package:veve/custom_widgets/appbar.dart';
import 'package:veve/custom_widgets/floating_overlay.dart';
import 'package:veve/custom_widgets/footer.dart';

class Brand {
  final String image;
  final String name;
  final String category;

  const Brand({
    required this.image,
    required this.name,
    required this.category,
  });
}

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  static const List<Brand> brands = [
    Brand(
      image: "assets/brand_assets/brand1.webp",
      name: "+Breadcat",
      category: "0-9",
    ),
    Brand(
      image: "assets/brand_assets/brand2.webp",
      name: "+Breadcat Box Co.",
      category: "0-9",
    ),
    Brand(
      image: "assets/brand_assets/brand3.webp",
      name: "Action Comics",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand4.webp",
      name: "Adventure Time",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand5.webp",
      name: "Anime Studio",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand6.webp",
      name: "Art Collective",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand7.webp",
      name: "Avengers",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand8.webp",
      name: "Amazing Comics",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand9.webp",
      name: "Artistic Works",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand10.jpeg",
      name: "Animation Plus",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand11.webp",
      name: "Atlas Comics",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand12.avif",
      name: "Awesome Brands",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand13.avif",
      name: "Abstract Art",
      category: "A",
    ),
    Brand(
      image: "assets/brand_assets/brand14.webp",
      name: "Anime Ultraman",
      category: "A",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, List<Brand>> groupedBrands = {};
    for (var brand in brands) {
      if (!groupedBrands.containsKey(brand.category)) {
        groupedBrands[brand.category] = [];
      }
      groupedBrands[brand.category]!.add(brand);
    }

    return FloatingOverlay(
      child: Scaffold(
        backgroundColor: const Color(0xff0f1729),
        appBar: AppBarNav(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Text(
                      "Brands",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 48),

                    ...groupedBrands.entries.map((entry) {
                      String category = entry.key;
                      List<Brand> categoryBrands = entry.value;

                      return Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(color: Color(0xff1f2939)),
                            child: Text(
                              category,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          ...categoryBrands.map((brand) {
                            return Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                      horizontal: 32.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          brand.image,
                                          width: 100,
                                          height: 100,
                                        ),
                                        SizedBox(width: 16),
                                        Expanded(
                                          child: Text(
                                            brand.name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            overflow: TextOverflow.visible,
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (brand != categoryBrands.last)
                                  SizedBox(height: 16),
                              ],
                            );
                          }).toList(),

                          SizedBox(height: 48),
                        ],
                      );
                    }).toList(),
                  ],
                ),
              ),
              SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0070e6),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: Text("Show more"),
              ),
              SizedBox(height: 48),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
