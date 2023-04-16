import 'package:flutter/material.dart';
import 'package:love_chat/utils/constant.dart';

class ListContainer extends StatelessWidget {
  final String name;
  final String status;
  final String imageAsset;
  final String time;
  final String remaining;
  final Color color;
  final double? width;

  const ListContainer(
      {Key? key,
      required this.name,
      required this.status,
      required this.imageAsset,
      required this.time,
      required this.remaining,
      required this.color,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Constants.primaryColor,
              child: Image.asset(imageAsset),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    name == "James"
                        ? const SizedBox(
                            width: 5,
                          )
                        : Image.asset("assets/icons/verify.png"),
                  ],
                ),
                Text(
                  status,
                  style: status == "Typing..."
                      ? const TextStyle(
                          color: Color(0xffFF5F8F),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic)
                      : const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              width: width,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Text(
                      remaining,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
