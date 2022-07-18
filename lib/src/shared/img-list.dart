import 'package:counter_1/models/img-modal.dart';
import 'package:flutter/material.dart';

class ImgList extends StatelessWidget {
  final List<ImgModal> images;
  ImgList(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImgModal image) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 15,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

          Image.network(image.url),
          SizedBox(height:20),
          Text(
            image.title
            ,style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 16,
            ),),
          ],
        ),
      ),

    );
  }
}
