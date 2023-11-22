import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final double coverHeight = 200.0;
  final double profileHeight = 150.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        title: const Text("Profile Mock-Up",style: TextStyle(fontWeight: FontWeight.w400, height: 28)),
        centerTitle: true,
      ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            buildContent(),
          ],
        ),
      ),
    );
  }

  Widget buildContent() => const Column(
    children: [
      SizedBox(height: 10.0),
      Text("Tester"),
      SizedBox(height: 10.0),
      Text("About me Page, all about me and only me!"),
    ],
    );

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2.0;
    final bottom = profileHeight / 2.0;
    return Stack(
      clipBehavior: Clip.none, //* very cool!
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage()
          ),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        // child: Placeholder(fallbackHeight: coverHeight),
        child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/9/98/Tom_Lea_-_2000_Yard_Stare.jpg",
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2.0,
        backgroundColor: Colors.grey,
        backgroundImage: const NetworkImage(
            "https://i.kym-cdn.com/entries/icons/facebook/000/045/324/cover19.jpg"),
      );
}
