import 'package:flutter/material.dart';
import 'package:me0w_portfolio/data/member_data.dart';
import '../utils/text_utlis.dart';
import '../utils/Animation_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MemberDetailScreen extends StatelessWidget {
  final Member member;
  final String tag;

  MemberDetailScreen({Key? key, required this.member, required this.tag});

  int delayAmount = 200;

  // Function to open a URL when the respective social media icon is tapped
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned.fill(
            right: -350,
            top: -100,
            bottom: -100,
            child: Hero(tag: tag, child: Image.asset(member.image)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShowUpAnimation(
                    delay: delayAmount,
                    child: TextUtil(
                      text: member.name,
                      size: 40,
                      weight: true,
                      color: Colors.black,
                    ),
                  ),
                  ShowUpAnimation(
                    delay: delayAmount + 200,
                    child: TextUtil(
                      text: "Team Member",
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 60),
                  // ShowUpAnimation(
                  //   delay: delayAmount + 400,
                  //   child: TextUtil(
                  //     text: "Email: ${member.email}",
                  //     size: 18,
                  //   ),
                  // ),
                  // ShowUpAnimation(
                  //   delay: delayAmount + 600,
                  //   child: TextUtil(
                  //     text: "Phone: ${member.phone}",
                  //     size: 18,
                  //   ),
                  // ),
                  // ShowUpAnimation(
                  //   delay: delayAmount + 800,
                  //   child: TextUtil(
                  //     text: "LinkedIn: ${member.linkedIn}",
                  //     size: 18,
                  //   ),
                  // ),
                  // ShowUpAnimation(
                  //   delay: delayAmount + 1000,
                  //   child: TextUtil(
                  //     text: "GitHub: ${member.github}",
                  //     size: 18,
                  //   ),
                  // ),
                  ShowUpAnimation(
                    delay: delayAmount + 1200,
                    child: TextUtil(
                      text: "Tech Stack: ${member.techStack}",
                      size: 18,
                    ),
                  ),
                  const Spacer(),

                  GestureDetector(
                    onTap: () {
                      _launchURL(member.linkedIn);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/icons/linkedin.png"),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _launchURL(member.github);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/icons/github.png"),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _launchEmail(member.email);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/icons/mail.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
