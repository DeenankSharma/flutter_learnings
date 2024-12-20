import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageWidget"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          color: Colors.red,
          child: CachedNetworkImage(
            imageUrl: "http://via.placeholder.com/350x150",
            placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // child: Image.network('',fit: BoxFit.cover,), // if used as child directly
          // decoration: BoxDecoration(
          //   boxShadow: [BoxShadow(
          //     blurRadius: 10,
          //     color: Colors.grey.shade800
          //   )],
          //   image: DecorationImage(
          //     image: NetworkImage(''),
          //     fit: BoxFit.cover),
          //     ),
          // child: CachedN,
        ),
      ),
    );
  }
}
