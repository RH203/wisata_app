import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              _buildColumn(),
              _buildButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Align _buildButton(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        child: IconButton.outlined(
          onPressed: () => Navigator.of(context).pop(),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.4),
          ),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }

  Column _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(
          imageAsset,
        ),
        Container(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Icon(Icons.calendar_today),
                  Text(openDays),
                ],
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.access_time),
                  Text(openTime),
                ],
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.attach_money),
                  Text(ticketPrice),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.network(imageUrls[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
