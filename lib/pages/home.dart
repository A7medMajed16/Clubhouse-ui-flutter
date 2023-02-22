import 'package:clubhouse_ui/constants.dart';
import 'package:clubhouse_ui/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/room_card.dart';
import '../widgets/user_profilimage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0),
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.search,
                size: 35,
                color: kLightBlack,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.envelope_open,
                  size: 35,
                  color: kLightBlack,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.calendar,
                  size: 35,
                  color: kLightBlack,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 12.0, 0),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.bell,
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
      body: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100.0),
              children: [
                ...roomList.map((oneRoom) => RoomCard(room: oneRoom)),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor
                    ])),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor
                    ])),
              ),
            ),
            Positioned(
              bottom: 40,
              child: ElevatedButton.icon(
                onPressed: (){},
                icon: const Padding(
                  padding: EdgeInsets.fromLTRB(12.0,0,0,0),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                label: const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,12.0,0),
                  child: Text(
                    'Create room',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
