import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      decoration: const BoxDecoration(color: Color(0xff1f2939)),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              children: [
                const Text(
                  'Keep up to date with all things VeVe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Join our mailing list to stay in the loop with our newest feature releases, drops, and tips and tricks for navigating VeVe.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 1),
                        color: Colors.transparent,
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'First name',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 1),
                        color: Colors.transparent,
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Your email address',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0070e6),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Sign up now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              children: [
                const Text(
                  'Join the community',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIcon('assets/footer_assets/x.svg'),
                        SizedBox(width: 16),
                        _buildSocialIcon('assets/footer_assets/discord.svg'),
                        SizedBox(width: 16),
                        _buildSocialIcon('assets/footer_assets/youtube.svg'),
                        SizedBox(width: 16),
                        _buildSocialIcon('assets/footer_assets/facebook.svg'),
                        SizedBox(width: 16),
                        _buildSocialIcon('assets/footer_assets/instagram.svg'),
                        SizedBox(width: 16),
                        _buildSocialIcon('assets/footer_assets/tiktok.svg'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 60),

          Column(
            children: [
              Container(width: double.infinity, height: 1, color: Colors.white),

              const SizedBox(height: 60),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: SvgPicture.asset(
                      'assets/const_assets/VeVe-word-mark-1.svg',
                      height: 48,
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: const Text(
                      'Discover, collect and showcase your favorite collectibles and comics.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 80),

              Container(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _buildVerticalLinkSection('Discover', [
                            'Latest drops',
                            'Collectibles',
                            'Comics',
                            'Artworks',
                            'Brands',
                          ]),
                        ),
                        const SizedBox(width: 60),
                        Expanded(
                          flex: 2,
                          child: _buildVerticalLinkSection('Your Account', [
                            'Your Collection',
                            'Comics',
                            'Your Profile',
                            'Your Sets',
                            'Settings',
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _buildVerticalLinkSection('Quick help', [
                            'FAQ',
                            'VeVe 101',
                            'Master Collector Program',
                            'Blog',
                            'Help center',
                          ]),
                        ),
                        const SizedBox(width: 60),
                        Expanded(
                          flex: 2,
                          child: _buildVerticalLinkSection(
                            'Company information',
                            [
                              'About us',
                              'Careers at VeVe',
                              'Affiliate Program',
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(String svgPath) {
    return Center(
      child: SvgPicture.asset(
        svgPath,
        width: 32,
        height: 32,
      ),
    );
  }

  Widget _buildVerticalLinkSection(String title, List<String> links) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16),
        ...links
            .map(
              (link) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    link,
                    style: const TextStyle(
                      color: Color(0xFF4A90FF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
