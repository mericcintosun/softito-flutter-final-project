import 'package:flutter/material.dart';
import 'package:veve/custom_widgets/appbar.dart';
import 'package:veve/custom_widgets/floating_overlay.dart';
import 'package:veve/custom_widgets/footer.dart';

class CollectiblePage extends StatefulWidget {
  const CollectiblePage({super.key});

  @override
  State<CollectiblePage> createState() => _CollectiblePageState();
}

class _CollectiblePageState extends State<CollectiblePage> {
  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Text(
              'See All',
              style: TextStyle(
                color: Color(0xff3690e7),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, color: Color(0xff3690e7), size: 18),
          ],
        ),
      ],
    );
  }

  Widget _buildHorizontalCardList(List<Map<String, String>> items) {
    return Container(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            margin: EdgeInsets.only(right: 16),
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff1a1f35),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      items[index]['image']!,
                      fit: BoxFit.cover,
                      width: 300,
                      height: 250,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xff1a1f35),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.schedule, color: Colors.white70, size: 20),
                      SizedBox(width: 12),
                      Text(
                        items[index]['date']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final comingSoonItems = [
      {
        'image':
            'assets/collectibles_assets/coming_soon/comic_type_image.1f73551d-3359-476d-bf8b-225bbe6d8835.956bbe70-8962-45da-b981-36747e913665.webpFull.webp',
        'date': 'Drops: 5 Jul, 6:00 PM',
      },
      {
        'image':
            'assets/collectibles_assets/coming_soon/series_image.85e6688d-5061-4035-b761-17f0eecc7f58.46359d95-58d1-4c3c-93f8-c55ef5908e08.webpFull.webp',
        'date': 'Drops: 9 Jul, 6:00 PM',
      },
    ];

    final dropsItems = [
      {
        'image':
            'assets/collectibles_assets/drops/transparent_background_image (1).webp',
        'date': 'Live Now',
      },
      {
        'image':
            'assets/collectibles_assets/drops/transparent_background_image (2).png',
        'date': 'Ends: 12 Jul, 8:00 PM',
      },
    ];

    final craftsItems = [
      {
        'image':
            'assets/collectibles_assets/crafts/comic_cover.06320a77-2bf1-4495-b52e-4e283e1d997d.257e9275-757e-41ee-a90f-b256b3527757.full.jpeg',
        'date': 'Available Now',
      },
      {
        'image':
            'assets/collectibles_assets/crafts/comic_cover.0ac8e2c3-c2f5-4b4f-bb71-634ca4e020ac.012a1d10-b5f3-429a-afb3-ac6f22658594.full.jpeg',
        'date': 'Limited Edition',
      },
    ];

    final collectiblesItems = [
      {
        'image': 'assets/collectibles_assets/collectibles/ultraman.webp',
        'date': 'Rare Collection',
      },
      {
        'image':
            'assets/collectibles_assets/collectibles/comic_type_image.3b2adc27-13fc-4914-af0a-0c79fe6ce967.ebb9294d-bfb3-4b30-82ff-6b8f695bfafe.webpFull.webp',
        'date': 'Epic Series',
      },
    ];

    return FloatingOverlay(
      child: Scaffold(
        backgroundColor: const Color(0xff0f1729),
        appBar: AppBarNav() as PreferredSizeWidget,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader('Coming Soon'),
                    SizedBox(height: 32),
                    _buildHorizontalCardList(comingSoonItems),
                    SizedBox(height: 48),
                    _buildSectionHeader('Drops'),
                    SizedBox(height: 32),
                    _buildHorizontalCardList(dropsItems),
                    SizedBox(height: 48),
                    _buildSectionHeader('Crafts'),
                    SizedBox(height: 32),
                    _buildHorizontalCardList(craftsItems),
                    SizedBox(height: 48),
                    _buildSectionHeader('Collectibles'),
                    SizedBox(height: 32),
                    _buildHorizontalCardList(collectiblesItems),
                    SizedBox(height: 48),
                  ],
                ),
              ),

              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
