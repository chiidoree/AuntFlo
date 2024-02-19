import 'package:aunt_flo/items.dart';
import 'package:flutter/material.dart';

class Items {
  final name;
  final image;

  Items({required this.name, required this.image,});
}

class Insights extends StatefulWidget {
  const Insights({super.key});

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  List<Items> itemsList = [
    Items(name: 'Image1', image: 'assets/images/img1.jpg')
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10),//padding around the grid
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, //no of rows
            mainAxisSpacing: 10, //spacing between rows
            crossAxisSpacing: 10,//spacing between columns
            childAspectRatio: 1 //aspect ratio of each grid item
          ),
          itemCount: itemsList.length,
          itemBuilder: (context, index){
            Items IL = itemsList[index];
            return GestureDetector(
              onTap: (){},
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(IL.name),
                    Image.asset(IL.image, height: 250, width: 250,),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }}