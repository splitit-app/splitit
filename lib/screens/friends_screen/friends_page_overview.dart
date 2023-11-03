import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/services/authentication_service.dart';
import 'package:project_bs/services/bill_data_repository.dart';
import 'package:project_bs/services/user_data_repository.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import '../../utilities/person_icon.dart';
import 'create_friend_dialog.dart';

class FriendsPageOverview extends StatelessWidget {
  final _searchBarController = TextEditingController();

  FriendsPageOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final uid = context.watch<User?>()?.uid;

    try {
      context.read<UserDataRepository>().uid;
      context.read<BillDataRepository>().uid;
    } catch (e) {
      if (uid != null) {
        //context.read<UserDataRepository>().uid = uid;
        //context.read<BillDataRepository>().uid = uid;
      }
    }

    return StreamProvider.value(
      value: context.read<UserDataRepository>().userDataStream,
      initialData: null,
      builder: (context, child) {
        final UserData? userData = context.watch();

        return userData == null
            ? const Placeholder()
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  title: const Text("Friends"),
                  centerTitle: true,
                  leading: IconButton(
                    onPressed: () => Navigator.pop(context),
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
                body: SingleChildScrollView(
                  child: Column(
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
                          // itemCount: _names.length,
                          itemCount: userData.nonRegisteredFriends.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // PersonIcon(personName: _names[index]),
                                      PersonIcon(
                                          personName: userData.nonRegisteredFriends[index].name),

                                      // Truncating Long Text
                                      SizedBox(
                                          width: 60.0,
                                          child: Text(
                                            userData.nonRegisteredFriends[index].name,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: false,
                                            textAlign: TextAlign.center,
                                          )),
                                      // Text(_names[index], style: const TextStyle(fontSize: 16.0)),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Friends",
                                  style: TextStyle(fontSize: 20.0),
                                  textAlign: TextAlign.right,
                                ),
                                const SizedBox(width: 10),
                                // Displays Friend Total
                                Container(
                                  height: 25.0,
                                  width: 65.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Text(
                                    userData.nonRegisteredFriends.length.toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      //color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextButton(
                                onPressed: () {
                                  addFriendDialog(context);
                                },
                                child: const Text("Add Friend", style: TextStyle(fontSize: 18.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      // Friend List (Slidable Tiles)
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: userData.nonRegisteredFriends.length,
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
                                  leading: PersonIcon(
                                      personName: userData.nonRegisteredFriends[index].name),
                                  trailing: const Icon(Symbols.drag_handle),
                                ),
                              ));
                        },
                        separatorBuilder: (BuildContext context, int index) => const Divider(),
                      ),
                    ],
                  ),
                ), // End of Main Column (Wrapped in SingleChildScrollView)
              );
        // Add Friend Method
      },
    );
  }
}
