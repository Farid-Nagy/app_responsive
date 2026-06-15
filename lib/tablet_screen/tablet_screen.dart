import 'package:app_responsive/Core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_responsive/Widget/widget.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Wander',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: AppColors.textColor1,
                          fontSize: 16,
                        ),
                        labelText:
                            'Search destinations, cities, experiences...',
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.textColor1,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.textColor1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        color: AppColors.textColor2,
                        padding: const EdgeInsets.all(30),
                        width: 400,
                        height: 150,
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Card(
                            color: AppColors.primaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.textColor1,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Featured',
                                  style: TextStyle(
                                    color: AppColors.textColor1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: AppColors.primaryColor,
                        padding: const EdgeInsets.all(16),
                        width: 400,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'TOP DESTINATIONS',
                              style: TextStyle(
                                color: AppColors.textColor2,
                                fontFamily: GoogleFonts.poetsenOne().fontFamily,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Santorini, Greece',
                              style: TextStyle(
                                color: AppColors.textColor1,
                                fontFamily: GoogleFonts.poetsenOne().fontFamily,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Cliffside villages, deep blue domes & golden sunsets',
                              style: TextStyle(
                                color: AppColors.textColor1,
                                fontFamily: GoogleFonts.poetsenOne().fontFamily,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Container(
                        color: AppColors.textColor2,
                        padding: const EdgeInsets.all(30),
                        width: 300,
                        height: 150,
                        child: const Padding(padding: EdgeInsets.all(20.0)),
                      ),
                      Container(
                        color: AppColors.primaryColor,
                        padding: const EdgeInsets.all(16),
                        width: 300,
                        height: 110,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Kyoto',
                                  style: TextStyle(
                                    color: AppColors.textColor1,
                                    fontFamily:
                                        GoogleFonts.poetsenOne().fontFamily,
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text(
                                      'Japanese',
                                      style: TextStyle(
                                        color: AppColors.textColor1,
                                        fontFamily:
                                            GoogleFonts.poetsenOne().fontFamily,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: AppColors.textColor1,
                                        fontFamily:
                                            GoogleFonts.poetsenOne().fontFamily,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.textColor1,
                                      size: 20,
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
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: AppColors.textColor1,
                        fontFamily: GoogleFonts.poetsenOne().fontFamily,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 625),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: AppColors.textColor2,
                        fontFamily: GoogleFonts.poetsenOne().fontFamily,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('All'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.textColor1,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Beach'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Mountain'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('City'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.backgroundColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: AppColors.textColor1,
                        fontFamily: GoogleFonts.poetsenOne().fontFamily,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 650),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: AppColors.textColor2,
                        fontFamily: GoogleFonts.poetsenOne().fontFamily,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildProductList(1)),
                  SizedBox(width: 16),
                  Expanded(child: buildProductList(2)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
