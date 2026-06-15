import 'package:flutter/material.dart';
import 'package:app_responsive/Core/app_color.dart';

Widget buildProductList(int listId) {
  final List<Map<String, dynamic>> products;
  switch (listId) {
    case 1:
      products = [
        {
          'name': 'Bali',
          'location': 'Indonesia',
          'rating': '4.6',
          'price': 640,
        },
        {'name': 'Paris', 'location': 'France', 'rating': '4.7', 'price': 950},
      ];
      break;
    case 2:
      products = [
        {
          'name': 'Machu Picchu',
          'location': 'Peru',
          'rating': '4.9',
          'price': 1200,
        },
        {
          'name': 'Amalfi Coast',
          'location': 'Italy',
          'rating': '4.8',
          'price': 780,
        },
      ];
      break;
    default:
      products = [
        {
          'name': 'Iceland',
          'location': 'Europe',
          'rating': '4.9',
          'price': 1100,
        },
        {
          'name': 'Maldives',
          'location': 'Indian Ocean',
          'rating': '5.0',
          'price': 2400,
        },
      ];
  }

  return Container(
    child: ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: AppColors.primaryColor,
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              color: AppColors.textColor2,
              child: const Icon(Icons.location_on, color: Colors.white),
            ),
            title: Text(
              product['name'].toString(),
              style: const TextStyle(color: AppColors.textColor1),
            ),
            subtitle: Text(
              product['location'].toString(),
              style: const TextStyle(color: AppColors.textColor1),
            ),
            trailing: Text(
              '\$${product['price'].toString()}',
              style: const TextStyle(color: AppColors.textColor1),
            ),
          ),
        );
      },
    ),
  );
}
