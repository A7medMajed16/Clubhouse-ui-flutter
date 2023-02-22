import 'package:clubhouse_ui/constants.dart';
import 'package:clubhouse_ui/widgets/user_profilimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:clubhouse_ui/data.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile({
    super.key,
    required this.imageUrl,
    required this.name,
     this.size = 80,
    this.isNew=true,
    this.isMuted=false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: UserProfilImage(
                imageUrl:imageUrl,
                size: size,
              ),
            ),
            if (isNew)
              Positioned(
                left: 0,
                bottom: 5,
                child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          )
                        ]),
                    child: const Text(
                      '🎉',
                      style: TextStyle(fontSize: 15),
                    )),
              ),
            if (isMuted)
              Positioned(
                right: 5,
                bottom: 5,
                child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          )
                        ]),
                    child: const Icon(
                      CupertinoIcons.mic_slash_fill,
                      size: 20,
                    )),
              ),
          ],
        ),
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 18,
              color: kLightBlack,
            )
          ),
        ),
      ],
    );
  }
}
