import 'dart:math';

import 'package:clubhouse_ui/widgets/room_suer_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../data.dart';
import '../models/room.dart';
import '../widgets/user_profilimage.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          leadingWidth: 160,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8.0, 2.0, 0),
            child: TextButton.icon(
              label: Text(
                'Hallway',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      letterSpacing: 1.0,
                      color: kLightBlack,
                      fontSize: 22,
                    ),
              ),
              icon: const Icon(
                CupertinoIcons.chevron_left,
                size: 35,
                color: kLightBlack,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 12.0, 0),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.doc,
                  size: 35,
                  color: kLightBlack,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 12.0, 12.0, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/room');
                },
                child: UserProfilImage(
                  imageUrl: currentUser.imageURL,
                  size: 40,
                ),
              ),
            ),
          ],
          elevation: 0,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${room.club} 🏠'.toUpperCase(),
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 18.0,
                                    letterSpacing: 1.0,
                                    color: kLightBlack,
                                  )),
                      const Icon(
                        CupertinoIcons.ellipsis,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(room.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 16.0,
                            color: kLightBlack,
                          )),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 15.0,
                children: room.speakers
                    .map((speaker) => RoomUserProfile(
                          imageUrl: speaker.imageURL,
                          name: speaker.firstName,
                          size: 66,
                          isNew: Random().nextBool(),
                          isMuted: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Followed by Speakers',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: kLightBlack,
                    ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 0.8,
                children: room.followedBySpeakers
                    .map((speaker) => RoomUserProfile(
                          imageUrl: speaker.imageURL,
                          name: speaker.firstName,
                          size: 55,
                          isNew: Random().nextBool(),
                          isMuted: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Others in The room',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: kLightBlack,
                    ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 0.8,
                children: room.other
                    .map((speaker) => RoomUserProfile(
                          imageUrl: speaker.imageURL,
                          name: speaker.firstName,
                          size: 55,
                          isNew: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 50)),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
        color: Colors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: const Color(0xffE0E0E0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )
              ),
              child: Text(
                '👋  Leave Quietly',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color:  Colors.red,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color(0xffE0E0E0),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      CupertinoIcons.add,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(width: 12.0,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color(0xffE0E0E0),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      CupertinoIcons.hand_raised,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
