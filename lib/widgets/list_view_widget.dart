import 'package:flutter/material.dart';
import '../theme/custom_color.dart';

class WidgetListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => Divider(
        color: CustomColor.secondaryColor,
        thickness: 1.0,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.videogame_asset,
                  color: CustomColor.primaryColor, size: 110),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // Menghapus const untuk membuat index dinamis
                      'Game Title ${index + 1}', // Menambahkan nomor game
                      style: const TextStyle(
                        color: CustomColor.thirthColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Explore new levels and unlock powerful upgrades...',
                      style: TextStyle(
                        color: CustomColor.thirthColor,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star,
                                color: CustomColor.thirthColor, size: 32.0),
                            SizedBox(width: 4.0),
                            Text(
                              'Rating: 4.5',
                              style: TextStyle(
                                color: CustomColor.thirthColor,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        const Icon(Icons.download,
                            color: CustomColor.thirthColor, size: 32.0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
