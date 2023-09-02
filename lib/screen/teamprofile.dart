import 'package:flutter/material.dart';
import 'package:me0w_portfolio/data/member_data.dart';
import 'package:me0w_portfolio/screen/members_deatils_screen.dart';

class TeamProfile extends StatelessWidget {
  const TeamProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < members.length; i++) ...[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MemberDetailScreen(
                        member: members[i],
                        tag: i.toString(),
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Hero(
                    tag: members[i].name,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(members[i].image),
                    ),
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
