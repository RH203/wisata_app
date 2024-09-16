import 'package:flutter/material.dart';
import 'package:wisata_app/data/constant.dart';
import 'package:wisata_app/widgets/detail_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return _tourismPlaceList();
          } else {
            return _tourismPlaceGrid();
          }
        },
      ),
    );
  }

  ListView _tourismPlaceList() {
    return ListView.builder(
      itemCount: tourismPlaceList.length,
      itemBuilder: (context, index) {
        String title = tourismPlaceList[index].name;
        String imageAssets = tourismPlaceList[index].imageAsset;
        String location = tourismPlaceList[index].location;
        String description = tourismPlaceList[index].description;
        String openDays = tourismPlaceList[index].openDays;
        String openTime = tourismPlaceList[index].openTime;
        String ticketPrice = tourismPlaceList[index].ticketPrice;
        List<String> imageUrls = tourismPlaceList[index].imageUrls;

        return DetailCard(
          description: description,
          imageAsset: imageAssets,
          title: title,
          imageUrls: imageUrls,
          openDays: openDays,
          openTime: openTime,
          ticketPrice: ticketPrice,
          location: location,
        );
      },
    );
  }

  GridView _tourismPlaceGrid() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 100,
      ),
      itemCount: tourismPlaceList.length,
      itemBuilder: (context, index) {
        String title = tourismPlaceList[index].name;
        String imageAssets = tourismPlaceList[index].imageAsset;
        String location = tourismPlaceList[index].location;
        String description = tourismPlaceList[index].description;
        String openDays = tourismPlaceList[index].openDays;
        String openTime = tourismPlaceList[index].openTime;
        String ticketPrice = tourismPlaceList[index].ticketPrice;
        List<String> imageUrls = tourismPlaceList[index].imageUrls;

        return DetailCard(
          description: description,
          imageAsset: imageAssets,
          title: title,
          imageUrls: imageUrls,
          openDays: openDays,
          openTime: openTime,
          ticketPrice: ticketPrice,
          location: location,
        );
      },
    );
  }
}
