import 'package:flutter/material.dart';

class MAppImage extends StatelessWidget {
  final double height, width;
  final String image;

  const MAppImage(
      {super.key, this.height = 200, this.width = 250, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
            height: height,
            width: width,
            fit: BoxFit.fill,
            image: AssetImage(image),
            errorBuilder: (context, error, stackTrace) {
              return SizedBox(
                height: height,
                width: width,
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                ),
              );
            },
            loadingBuilder:
                (BuildContext context, Widget child, ImageChunkEvent? loading) {
              if (loading == null) return child;
              return SizedBox(
                height: height,
                width: width,
                child: Center(
                    child: CircularProgressIndicator(
                  value: loading.expectedTotalBytes != null
                      ? loading.cumulativeBytesLoaded /
                          loading.expectedTotalBytes!
                      : null,
                )),
              );
            }),
      ),
    );
  }
}
