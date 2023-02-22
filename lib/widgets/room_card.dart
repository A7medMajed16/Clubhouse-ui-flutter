import 'package:clubhouse_ui/models/room.dart';
import 'package:clubhouse_ui/pages/room_screen.dart';
import 'package:clubhouse_ui/widgets/user_profilimage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).push(
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (_)=>RoomScreen(room: room),
              )
          ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${room.club} 🏠'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'nunito',
                    letterSpacing: 1.0,
                    color: kLightBlack,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  room.name,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'nunito',
                    fontWeight: FontWeight.w400,
                    color: kLightBlack,
                  ),
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 28.0,
                              top: 24.0,
                              child: UserProfilImage(
                                imageUrl: room.speakers[0].imageURL,
                                size: 48,
                              ),
                            ),
                            UserProfilImage(
                              imageUrl: room.speakers[1].imageURL,
                              size: 48,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((speaker) =>
                                Column(
                                  children: [
                                    Text(
                                      '${speaker.firstName} ${speaker
                                          .lastName} ',
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'nunito',
                                        color: kLightBlack,
                                      ),
                                    ),
                                    const SizedBox(height: 3.0),
                                  ],
                                )),
                            const SizedBox(height: 10.0),
                            Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${room.speakers.length +
                                          room.followedBySpeakers.length +
                                          room.other.length} ',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'nunito',
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: Icon(
                                        CupertinoIcons.person_fill,
                                        size: 18.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '  / ${room.speakers.length } ',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'nunito',
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: Icon(
                                        CupertinoIcons.chat_bubble_fill,
                                        size: 18.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ]
                              ),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
