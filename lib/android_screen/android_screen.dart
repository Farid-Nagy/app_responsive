import 'package:app_responsive/Core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AndroidScreen extends StatelessWidget {
  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: AppColors.textColor1,
                    fontSize: 16,
                  ),
                  labelText: 'Search destinations,cities,experiences',
                  icon: Icon(Icons.menu, color: AppColors.textColor1),
                  prefixIcon: Icon(Icons.search, color: AppColors.textColor1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.textColor1),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    color: AppColors.textColor2,
                    padding: EdgeInsets.all(30),
                    width: 400,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
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
                                fontFamily: GoogleFonts.poetsenOne().fontFamily,
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
                    padding: EdgeInsets.all(16),
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
                        SizedBox(height: 5),
                        Text(
                          'Santorini, Greece',
                          style: TextStyle(
                            color: AppColors.textColor1,
                            fontFamily: GoogleFonts.poetsenOne().fontFamily,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 3),
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
              SizedBox(height: 20),
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
                    SizedBox(width: 265),
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
                    child: Text('All'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.textColor1,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Beach'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Mountain'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.backgroundColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: AppColors.textColor1,
                        fontFamily: GoogleFonts.poetsenOne().fontFamily,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(width: 300),
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  final products = [
                    {'name': 'Bali', 'location': 'Indonesia', 'price': 640},
                    {'name': 'Paris', 'location': 'France', 'price': 950},
                    {'name': 'Machu Picchu', 'location': 'Peru', 'price': 1200},
                    {'name': 'Amalfi Coast', 'location': 'Italy', 'price': 780},
                    {'name': 'Iceland', 'location': 'Europe', 'price': 1100},
                    {
                      'name': 'Maldives',
                      'location': 'Indian Ocean',
                      'price': 2400,
                    },
                  ];
                  final product = products[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    color: AppColors.primaryColor,
                    child: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        color: AppColors.textColor2,
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        product['name'].toString(),
                        style: const TextStyle(
                          color: AppColors.textColor1,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        product['location'].toString(),
                        style: const TextStyle(color: AppColors.textColor1),
                      ),
                      trailing: Text(
                        '\$${product['price']}',
                        style: const TextStyle(color: AppColors.textColor1),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
