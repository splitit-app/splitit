import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project_bs/services/user_data_repository.dart';
import 'package:project_bs/utilities/person_icon.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import 'friend_creation_form.dart';

class FriendsPageOverview extends StatefulWidget {
  const FriendsPageOverview({super.key});

  @override
  State<FriendsPageOverview> createState() => _FriendsPageOverviewState();
}

class _FriendsPageOverviewState extends State<FriendsPageOverview> {
  final List _names = [
    "Sydney",
    "Ronald",
    "Brandon",
    "Trumpy",
    "Roberto",
    "RFP",
    "Ren",
    "Browny",
    "Wei",
    "SDLC",
    "Max",
    "Spiderman",
  ];

  final _searchBarController = TextEditingController();
  final friendNameList = [];

  @override
  Widget build(BuildContext context) {
    final userData = context.watch<UserData?>();

    if (userData != null) print(userData.uid);

    return userData == null
        ? const Placeholder()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              title: const Text("Friends"),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context); // Pops the Route, returns back to the previous page.
                },
                icon: const Icon(Symbols.arrow_back),
                iconSize: 30.0,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Symbols.settings),
                  iconSize: 30.0,
                ),
              ],
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Search Bar:
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SearchBar(
                    controller: _searchBarController,
                    leading: const Icon(Symbols.menu),
                    trailing: const <Widget>[
                      Tooltip(
                        message: "Search",
                        child: Icon(Symbols.search),
                      ),
                    ],
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 15.0)),
                  ),
                ),

                // Friend Profile View using Instagram Stories like UI with ListView Builder
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        "Recent Victims",
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _names.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PersonIcon(
                                  personName: _names[index],
                                ),
                                Text(_names[index], style: const TextStyle(fontSize: 16.0)),
                              ],
                            ),
                            const SizedBox(width: 25.0),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Divider(),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            "Friends",
                            style: TextStyle(fontSize: 20.0),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        // Displays Friend Total
                        Container(
                          height: 25.0,
                          width: 65.0,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center, // Centering Text
                            children: [
                              Text(
                                userData!.nonRegisteredFriends.length.toString(),
                                //userData!.nonRegisteredFriends.length.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextButton(
                        onPressed: () {
                          _addFriendDialog();
                        },
                        child: const Text("Add Friend", style: TextStyle(fontSize: 18.0)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),

                // Friend List (Slidable Tiles)
                Expanded(
                  child: ListView.separated(
                    itemCount: userData!.nonRegisteredFriends.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                          // Slide from the Left (or Top)
                          startActionPane: ActionPane(
                            // Controls how the Pane animates
                            motion: const StretchMotion(),

                            // All Actions:
                            children: [
                              SlidableAction(
                                onPressed: ((context) {
                                  // Snackbar Message on action:
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text('You\'ve abandoned your friend!'),
                                      action: SnackBarAction(
                                        label: 'Adios',
                                        onPressed: () {
                                          // (Delete) Removing Friend
                                        },
                                      ),
                                    ),
                                  );
                                }),
                                backgroundColor: const Color(0xFFD42B2B),
                                foregroundColor: Colors.white,
                                borderRadius:
                                    const BorderRadius.only(bottomLeft: Radius.circular(25.0)),
                                icon: Symbols.delete,
                                label: "Abandon",
                              ),
                            ],
                          ),
                          // Slide from the Right (or Bottom)
                          endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            // All Actions:
                            children: [
                              SlidableAction(
                                onPressed: ((context) {}),
                                backgroundColor: const Color(0xFF2B82D4),
                                foregroundColor: Colors.white,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(25.0)),
                                icon: Symbols.chat,
                                label: "Nothing",
                              ),
                            ],
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFF1EFEF),
                            ),
                            child: ListTile(
                              title: Text(userData.nonRegisteredFriends[index].name),
                              subtitle: const Text("Subtitles Subtitles Subtitles"),
                              leading:
                                  PersonIcon(personName: userData.nonRegisteredFriends[index].name),
                              trailing: const Icon(Symbols.drag_handle),
                            ),
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
              ],
            ), // End of Main Column (Wrapped in SingleChildScrollView)
          );
  }

  // Add Friend Method
  void _addFriendDialog() {
    UserData? userData = context.read<UserData>();

    showDialog(
      context: context,
      builder: (context) {
        final friendCreationForm = FriendCreationForm(userData: userData);

        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            title: const Text("Add Friend"),
            content: TextFormField(
              controller: friendCreationForm.nameFieldController,
              autofocus:
                  true, // Auto-focuses on the text to allow for the keyboard to automatically display
              decoration: InputDecoration(
                labelText: "Name: ",
                hintText: "Roberto Cruz",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: friendCreationForm.nameFieldController.clear, // Clears the input
                  icon: const Icon(Symbols.close),
                ),
              ),
            ),
            actions: [
              // Add Button
              MaterialButton(
                onPressed: () {
                  friendCreationForm.createFriend();
                  // setState(() {
                  //   //friendNameList.add(addFriendTextController.text); // Adds user inputs into list
                  // });
                  //addFriendTextController.clear(); // Clears the input
                  Navigator.of(context).pop(); // Exits out of the Dialog
                  setState(() {});
                },
                color: Theme.of(context).colorScheme.tertiaryContainer,
                child: const Text("Add"),
              ),
            ],
          ),
        );
      },
    );
  }
}
