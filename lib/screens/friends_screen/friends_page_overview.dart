import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import '../../utilities/decorations.dart';
import '../../utilities/friend_tile.dart';
import '../../utilities/person_icon.dart';
import 'create_friend_dialog.dart';

class FriendsPageOverview extends StatelessWidget {
  final _searchBarController = TextEditingController();

  FriendsPageOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final UserData? userData = context.watch();

    return userData == null
        ? const Placeholder()
        : Scaffold(
            appBar: AppBar(
              shape: appBarShape,
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              title: const Text("Friends"),
              centerTitle: true,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(MaterialSymbols.arrow_back_filled_outlined),
                iconSize:24.0,
              ),
              // actions: [
              //   IconButton(
              //     onPressed: () {},
              //     icon: const Icon(MaterialSymbols.settings_filled_outlined),
              //     iconSize: 24.0,
              //   ),
              // ],
            ),

            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Search Bar:
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12),
                    child: SearchBar(
                      elevation: const MaterialStatePropertyAll(2),
                      controller: _searchBarController,
                      hintText: "Search friends",
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
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Recent Victims",
                          style: TextStyle(fontSize: 20.0),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                    child: SizedBox(
                      height: 80,
                      child: ListView.builder(
                        
                        clipBehavior:Clip.antiAlias,
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
                                    PersonIcon(
                                        profile: userData
                                            .nonRegisteredFriends.values
                                            .elementAt(index)),

                                    // Truncating Long Text
                                    SizedBox(
                                        width: 60.0,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Text(
                                            userData.nonRegisteredFriends.values
                                                .elementAt(index)
                                                .name,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: false,
                                            textAlign: TextAlign.center,
                                          ),
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
                  ),
                  const Divider(),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Friends",
                              style: TextStyle(fontSize: 20.0),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(width: 10),
                            // Displays Friend Total
                            Container(
                              width: 24.0,
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                userData.nonRegisteredFriends.length.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: TextButton(
                            // onPressed: () async => await createFriendDialog(context),
                            onPressed: () async {
                              if (userData.nonRegisteredFriends.length <
                                  UserData.nonRegisteredFriendLimit) {
                                await createFriendDialog(context);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        icon: Icon(MaterialSymbols.warning,
                                            size: 40.0),
                                        title: Text("Friend Limit Exceeded!"),
                                        content: Text(
                                            "You can only have up to ${UserData.nonRegisteredFriendLimit} friends. Remove one to add a new friend.",
                                            textAlign: TextAlign.center),
                                      );
                                    });
                              }
                            },
                            
                            child: const Text("Add Friend",
                                style: TextStyle(fontSize: 16.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),

                  // Friend List (Slidable Tiles)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: userData.nonRegisteredFriends.length,
                      itemBuilder: (context, index) => FriendTile(
                        profile: userData.nonRegisteredFriends.values
                            .elementAt(index),
                        index: index,
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(height: 1),
                    ),
                  ),
                ],
              ),
            ), // End of Main Column (Wrapped in SingleChildScrollView)
          );
  }
}
