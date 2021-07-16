import 'package:flutter/material.dart';
import 'package:flutter_bird_demo/models/bird_model.dart';
import 'package:flutter_bird_demo/screens/details_screen.dart';

class BirdListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birds"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: listOfBirds.length,
          itemBuilder: (context, index) {
            BirdModel bird = listOfBirds[index];
            return BirdCardView(
              image: bird.image,
              name: bird.name,
              shortDetail: bird.shortDetail,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(bird: bird)),
                );
              },
            );
          }),
    );
  }
}

class BirdCardView extends StatelessWidget {
  final String name;
  final String shortDetail;
  final String image;
  final void Function()? onTap;

  BirdCardView(
      {required this.name,
      required this.shortDetail,
      required this.image,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(54, 54, 54, 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              shortDetail,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      )),
    );
  }
}
