import 'package:flutter/material.dart';

class SecondScrollableCards extends StatelessWidget {
  final String imageAsset;
  final String name;

  const SecondScrollableCards(
      {Key? key, required this.imageAsset, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            child: Image.asset(
              imageAsset,
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: -10,
              left: 18,
              child: Container(
                padding: const EdgeInsets.only(left: 8.8, right: 8),
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        name,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Image.asset('assets/icons/verified.png')
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
