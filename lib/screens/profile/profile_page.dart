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
          title:
              const Text("My Profile", style: TextStyle(fontWeight: FontWeight.w400, height: 28)),
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
          Text("Max J. Tsai", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500)),
          SizedBox(height: 10.0),
          Text(
            "Innovation champion in digital disruption | Proven leadership in the development and realization of emergence of Digital Transformation strategies",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
        ],
      );

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2.0;
    final bottom = profileHeight / 2.0;
    return Stack(
      clipBehavior: Clip.none, //* very cool!
      alignment: Alignment.center,
      children: [
        Container(margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() => Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/9/98/Tom_Lea_-_2000_Yard_Stare.jpg",
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover);
  // => Placeholder(fallbackHeight: coverHeight),

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2.0,
        backgroundColor: Colors.grey,
        backgroundImage: const NetworkImage(
            "https://i.kym-cdn.com/entries/icons/facebook/000/045/324/cover19.jpg"),
        // "https://media.licdn.com/dms/image/D5603AQE44yJ6jXdDVQ/profile-displayphoto-shrink_400_400/0/1696912315664?e=1702512000&v=beta&t=K2Zxdgjrz8Zi9NzNQsKko85z0P4r0CxhUr4GpG9nwyU"),
      );
}
