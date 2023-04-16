import 'package:flutter/material.dart';

class ScrollableCards extends StatelessWidget {
  final String imageAsset;

  const ScrollableCards({Key? key, required this.imageAsset}) : super(key: key);

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
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, left: 27),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  )),
              const SizedBox(
                height: 5,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 27),
                  child: const Text(
                    '10',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
          Positioned(
              bottom: -10,
              left: 24,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Likes',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
