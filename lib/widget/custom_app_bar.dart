import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter/model/profile.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Profile profile1 = Profile("Shitzu Photographers",
      DateTime(2021, 2, 10), 'assets/img/profile-image.png');
  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('d MMMM y');
    int days = profile1.daysLeft();
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[700],
        image: DecorationImage(
          image: AssetImage('assets/img/background.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(35),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.menu_rounded),
              color: Colors.white,
              onPressed: () {},
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(profile1.pathToImage),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    profile1.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Is counting the days with you!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '$days Days left until ${dateFormatter.format(profile1.dataOfRegistration)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Image.asset(
                'assets/img/toolbar.png',
                height: 25,
                width: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0,190);
}
