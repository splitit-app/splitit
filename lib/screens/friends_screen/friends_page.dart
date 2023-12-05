import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../runtime_models/user/user_data.dart';
import '../../utilities/decorations.dart';
import '../../utilities/group_container.dart';
import '../../utilities/scroll_animations.dart';
import 'friends_page_overview.dart';
import 'friends_page_view.dart';
import 'group_page_overview.dart';

class FriendsPage extends StatelessWidget {
  // The controller keeps track on the user input from the Search Bar.
  final _searchBarController = TextEditingController();

  // Page Controller for Page Indicator
  final _controller = PageController(initialPage: 0);

  FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserData? userData = context.watch();

    return userData == null
        ? const Placeholder()
        : Scaffold(
            appBar: AppBar(
              shape: appBarShape,
              //backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              title: const Text("People"),
              centerTitle: true,
              // leading: IconButton(
              //   color: Theme.of(context).colorScheme.onSurfaceVariant,
              //   icon: const Icon(MaterialSymbols.notifications),
              //   onPressed: () {},
              // ),
              actions: [
                IconButton(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ],
            ),
            body: SingleChildScrollView(
              // Fixes the RenderFlex Overflow on SearchBar Focus
              child: Column(
                children: [
                  // Search Bar:
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SearchBar(
                      elevation: const MaterialStatePropertyAll(2),
                      controller: _searchBarController,
                      hintText: "Search friends & groups",
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

                  // Contains Friend Profiles
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Friends - Title Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Friends", style: TextStyle(fontSize: 24.0)),
                            IconButton(
                                onPressed: () {
                                  // Pushes the FriendsPageOverview onto the Route Stack
                                  Navigator.of(context).push(
                                    // Navigates the FriendsPageOverview Page
                                    MaterialPageRoute(builder: (context) => FriendsPageOverview()),
                                  );
                                },
                                icon: const Icon(
                                  // Symbols.manage_accounts,
                                  Symbols.manage_search,
                                  size: 30.0,
                                )),
                          ],
                        ),

                        // Profile List Row in PageView Format
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            height: 260,
                            child: PageView.builder(
                                // PageView Builder
                                scrollDirection: Axis.horizontal,
                                controller: _controller, // Sets the controller for the Page View
                                // itemCount: ((_names.length / 6).ceil()),
                                itemCount: (max(userData.nonRegisteredFriends.length, 1) / 6).ceil(),
                                itemBuilder: (context, index) =>
                                    FriendsPageView(startingIndex: index * 6)),
                          ),
                        ),
                        //const SizedBox(height: 6.0),
                        // Animated Page indicator for the PageView (package: https://pub.dev/packages/smooth_page_indicator)
                        SmoothPageIndicator(
                          controller: _controller,
                          // Set the number of Pages in the PageView
                          // count: ((_names.length / 6).ceil()), // Determines the page count by taking the number of elements in the list, divided by the number displayed in each page and rounds up.
                          count: (max(userData.nonRegisteredFriends.length, 1) / 6).ceil(),
                          effect: const WormEffect(dotHeight: 8, dotWidth: 8, activeDotColor: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),

                  if (true) // Displays on True. False to Hide.
                    // Group Containers
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          // Groups - Title Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Groups", style: TextStyle(fontSize: 24.0)),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      // Pushes the GroupPageOverview onto the Route Stack
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const GroupPageOverview(), // Navigates the GroupPageOverview Page
                                      ),
                                    );
                                  },
                                  icon: const Icon(
                                    // Symbols.manage_accounts,
                                    Symbols.manage_search,
                                    size: 30.0,
                                  )),
                            ],
                          ),

                          Row(
                            // ListView throws a Render Box error if not contained within an Expanded and SizedBox/Container Widget
                            children: [
                              Expanded(
                                //To inform of the maximum available horizontal size for the ListView
                                child: SizedBox(
                                  height: 200.0, // To set the height for the ListView
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return const Row(
                                        children: [
                                          GroupContainer(),
                                          SizedBox(width: 25.0),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), // End
                ],
              ),
            ), // End of Main Column (Wrapped in SingleChildScrollView)
          );
  }
}
