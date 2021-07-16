import 'package:flutter/material.dart';
import 'package:flutter_bird_demo/models/bird_model.dart';

class DetailsScreen extends StatelessWidget {
  final BirdModel bird;
  DetailsScreen({required this.bird});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(bird.image), fit: BoxFit.cover)),
            height: height / 3,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bird.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(54, 54, 54, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  bird.shortDetail,
                  style: TextStyle(
                      color: Color.fromRGBO(74, 74, 74, 1), height: 1.5),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ),
        ],
      ),
    );
  }
}
