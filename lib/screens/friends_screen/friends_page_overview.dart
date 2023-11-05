import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import '../../services/user_data_repository.dart';
import '../../utilities/friend_tile.dart';
import '../../utilities/person_icon.dart';
import 'create_friend_dialog.dart';

class FriendsPageOverview extends StatelessWidget {
  final _searchBarController = TextEditingController();

  FriendsPageOverview({super.key});

  @override
  Widget build(BuildContext context) => StreamBuilder(
        stream: context.read<UserDataRepository>().userDataStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Placeholder();

          final UserData userData = snapshot.data!;

          return Scaffold(
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
                      itemCount: userData.nonRegisteredFriends.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  PersonIcon(personName: userData.nonRegisteredFriends[index].name),

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
                            onPressed: () async => await createFriendDialog(context),
                            child: const Text("Add Friend", style: TextStyle(fontSize: 18.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),

                  // Friend List (Slidable Tiles)
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: userData.nonRegisteredFriends.length,
                    itemBuilder: (context, index) =>
                        FriendTile(profile: userData.nonRegisteredFriends[index]),
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
