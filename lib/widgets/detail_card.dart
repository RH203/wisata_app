import 'package:flutter/material.dart';
import 'package:wisata_app/page/detail_screen.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
    required this.title,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });

  final String title;
  final String location;
  final String description;
  final String openDays;
  final String openTime;
  final String ticketPrice;
  final String imageAsset;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            ticketPrice: ticketPrice,
            openTime: openTime,
            openDays: openDays,
            imageAsset: imageAsset,
            imageUrls: imageUrls,
            description: description,
            location: location,
            title: title,
          ),
        ),
      ),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(imageAsset),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '$title',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('$location'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
