import 'package:flutter/material.dart';
import 'package:veve/custom_widgets/appbar.dart';
import 'package:veve/custom_widgets/floating_overlay.dart';
import 'package:veve/custom_widgets/footer.dart';
import 'package:veve/views/comics/comics_string.dart';

class ComicsDetailPage extends StatelessWidget {
  final Comic comic;

  const ComicsDetailPage({super.key, required this.comic});

  @override
  Widget build(BuildContext context) {
    return FloatingOverlay(
      child: Scaffold(
        backgroundColor: const Color(0xff0f1729),
        appBar: AppBarNav(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      SizedBox(height: 16),

                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                          ),
                          Spacer(),
                        ],
                      ),

                      SizedBox(height: 16),

                      Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            comic.image,
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            
                          ),
                        ),
                      ),

                      SizedBox(height: 24),

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffB8860B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.white, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  "Ultra Rare",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 12),

                          if (comic.blindBox)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff6B46C1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "Blind Box",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 24),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F9FA),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffE5E7EB)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              comic.title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              comic.subtitle,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  comic.like,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.comment,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  comic.comment,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F9FA),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffE5E7EB)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Blind Box series",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              comic.subtitleDesc,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,
                                height: 1.4,
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff3B82F6),
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                child: Text("See details"),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F9FA),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffE5E7EB)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Details",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 20),
                            _buildDetailRow("Drop Date", comic.dropDate, false),
                            _buildDetailRow(
                              "Total Editions",
                              comic.totalEditions,
                              false,
                            ),
                            _buildDetailRow(
                              "Remaining Editions",
                              comic.remainingEditions,
                              false,
                            ),
                            _buildDetailRow(
                              "Edition Type",
                              comic.editionType,
                              false,
                            ),
                            _buildDetailRow("Rarity", comic.rarity, true),
                            _buildDetailRow(
                              "List Price",
                              comic.listPrice,
                              false,
                            ),
                            _buildDetailRow("License", comic.license, true),
                            _buildDetailRow("Brand", comic.brand, true),
                            _buildDetailRow("Series", comic.series, true),
                            _buildDetailRowLast("Season", comic.season, false),
                          ],
                        ),
                      ),

                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffF8F9FA),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffE5E7EB)),
                    ),
                    child: Text(
                      "Riding a STOP sign with reckless energy, this Rabbid quarterback is all gear, no strategy. Game or gridlock, expect pure mayhem. This animated 3D digital collectible goes full throttle into absurdity. Through action animation, the chaos continues—with a flailing tongue, wild eyes, and a jetpack smoke trail blasting behind him!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/comics_details_assets/brand_image.webp",
                      width: double.infinity,
                      fit: BoxFit.contain,
                   
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "In This Series",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                  color: Color(0xff3B82F6),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff3B82F6),
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 280,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 180,
                              margin: EdgeInsets.only(
                                right: index < 2 ? 12 : 0,
                              ),
                              child: _buildSeriesCard(
                                _getSeriesData(index)['image'],
                                _getSeriesData(index)['title'],
                                _getSeriesData(index)['odds'],
                                _getSeriesData(index)['leftCount'],
                                _getSeriesData(index)['rarity'],
                                _getSeriesData(index)['coinValue'],
                                _getSeriesData(index)['rarityColor'],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, bool isBlueText) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  color: isBlueText ? Color(0xff3B82F6) : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey[300], thickness: 1, height: 1),
      ],
    );
  }

  Widget _buildDetailRowLast(String label, String value, bool isBlueText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: isBlueText ? Color(0xff3B82F6) : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Map<String, dynamic> _getSeriesData(int index) {
    List<Map<String, dynamic>> seriesData = [
      {
        'image':
            "assets/collectibles_assets/drops/transparent_background_image (1).png",
        'title': "Rabbid Knightmare",
        'odds': "Odds: 1 in...",
        'leftCount': "1200 left",
        'rarity': "U",
        'coinValue': "15",
        'rarityColor': Color(0xff3B82F6),
      },
      {
        'image':
            "assets/collectibles_assets/drops/transparent_background_image (2).png",
        'title': "Rabbid Patrol",
        'odds': "Odds: 1 in...",
        'leftCount': "1200 left",
        'rarity': "U",
        'coinValue': "15",
        'rarityColor': Color(0xff3B82F6),
      },
      {
        'image':
            "assets/collectibles_assets/drops/transparent_background_image (3).png",
        'title': "Rabbid Outlaw",
        'odds': "Odds: 1 in...",
        'leftCount': "775 left",
        'rarity': "R",
        'coinValue': "15",
        'rarityColor': Color(0xffD946EF),
      },
    ];
    return seriesData[index];
  }

  Widget _buildSeriesCard(
    String imagePath,
    String title,
    String odds,
    String leftCount,
    String rarity,
    String coinValue,
    Color rarityColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xffF3F4F6),
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
             
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  odds,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                Text(
                  leftCount,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: rarityColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.white, size: 12),
                          SizedBox(width: 2),
                          Text(
                            rarity,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Color(0xff3B82F6),
                          size: 16,
                        ),
                        SizedBox(width: 2),
                        Text(
                          coinValue,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
