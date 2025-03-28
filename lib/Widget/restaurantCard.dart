import 'package:dele/page_view/all_restaurant_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String cuisine;
  final double rating;
  final String deliveryTime;
  final String imageUrl;
  final String distance;
  final String priceLevel;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.cuisine,
    required this.rating,
    required this.deliveryTime,
    required this.imageUrl,
    required this.distance,
    required this.priceLevel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(5),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(width: 3,color: Theme.of(context).primaryColor)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Restaurant Image
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border(
                  top: BorderSide(width: 3,color: Theme.of(context).primaryColor),
                  right:  BorderSide(width: 3,color: Theme.of(context).primaryColor),
                  left:  BorderSide(width: 3,color: Theme.of(context).primaryColor),

                )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
                child: Image.asset(
                  imageUrl,
                  height: MediaQuery.of(context).size.height/7,
                  width: double.infinity,
                  fit: BoxFit.fill,

                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Restaurant Name and Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(

                        child: Text(
                          name,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ///Rating
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              rating.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  /// Cuisine Type and Price Level
                  Row(
                    children: [
                      Text(
                        cuisine,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "•",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        priceLevel,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  /// Delivery Time and Distance
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        deliveryTime,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        distance,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: (){

      },
    );
  }
}