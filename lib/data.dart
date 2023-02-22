import 'package:clubhouse_ui/models/user.dart';

import 'models/room.dart';

const User currentUser = User(
  firstName: 'Ahmed',
  lastName: 'Maged',
  imageURL:
    'https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/326368868_708084107610161_7522429744823227404_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3Hi-DDyK06gAX-55wBE&_nc_ht=scontent.fcai20-5.fna&oh=00_AfDa1xSDiEAXHdJAlfYvVxy_kz3UxeMhVJ3p1cBbWK0QUg&oe=63FBEED8',
);

const List<User> allUsers = [
  User(
    firstName: 'Maged',
    lastName: 'Farag',
    imageURL:
      'https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/291066976_5086107951509074_2513812400810176437_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LgGRWTbs-3UAX8Lqspq&_nc_ht=scontent.fcai20-5.fna&oh=00_AfCcT70HEf19555CzQxaSjxNrXZAdpIWrbvz9DRT99xCtA&oe=63FB55E8',
  ),
  User(
    firstName: 'Kareem',
    lastName: 'Khaled',
    imageURL:
      'https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/309578934_786232415979116_4498625197082843983_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=oApMNjDF19sAX-swYR6&tn=BU2rgzSq0MkCr5ts&_nc_ht=scontent.fcai20-5.fna&oh=00_AfC6T3aieXvjVm-AihIi_3hdPvjTgZtBP7uAuOk52nnZxw&oe=63F95275',
  ),
  User(
    firstName: 'Ahmed',
    lastName: 'Shoman',
    imageURL:
        'https://scontent.fcai20-5.fna.fbcdn.net/v/t1.6435-9/69334814_2000955390005033_4671578104714493952_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=_smqlED-ceYAX-LMDby&tn=BU2rgzSq0MkCr5ts&_nc_ht=scontent.fcai20-5.fna&oh=00_AfDiVDSZnO49jNe6ylm_s4EddGuehWIreNnbzIL5Nwwtxw&oe=6411C65D',
  ),
  User(
    firstName: 'Mohamed',
    lastName: 'Mandooh',
    imageURL:
      'https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/329938798_1212131106343717_637160101870537251_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=cr_S2NHU2kcAX-cLk71&tn=BU2rgzSq0MkCr5ts&_nc_ht=scontent.fcai20-5.fna&oh=00_AfCo-4DrbWUv048g3-nL5joEsbgiHMlSbyowSGlbi0MxdQ&oe=63FB65E1',
  ),
  User(
    firstName: 'Mohamed',
    lastName: 'Fouad',
    imageURL:
      'https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/311769773_3487645358224970_4982344816438661021_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=U6iHvQney_wAX9t1ILq&tn=BU2rgzSq0MkCr5ts&_nc_ht=scontent.fcai20-5.fna&oh=00_AfDNHb9808WgghV-CBtz1y7ePJQ2Y6jTit98HiahM4h-YA&oe=63FA522F',
  ),
];

final List<Room> roomList = [
  Room(
    club: 'Flutter Time',
    name: 'Special time to play with Flutter and Dart',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    other: List<User>.from(allUsers),
  ),
  Room(
    club: 'Winter',
    name: 'Winter is coming',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    other: List<User>.from(allUsers),
  ),
  Room(
    club: 'HTI',
    name: 'F HTI',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    other: List<User>.from(allUsers),
  ),
  Room(
    club: 'New Version',
    name: 'Ant f letters',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    other: List<User>.from(allUsers),
  ),
  Room(
    club: 'Microsoft',
    name: 'Don\'t f f f f f',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    other: List<User>.from(allUsers),
  ),
  Room(
    club: 'Me and me and me',
    name: 'you and you and you',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    other: List<User>.from(allUsers),
  ),
];
