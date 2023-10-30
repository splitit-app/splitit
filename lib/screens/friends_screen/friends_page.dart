import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/utilities/friends_page_view.dart';
import 'package:project_bs/utilities/group_container.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../services/user_data_repository.dart';
import 'friends_page_overview.dart';
import 'group_page_overview.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  // The controller keeps track on the user input from the Search Bar.
  final _searchBarController = TextEditingController();

  // Page Controller for Page Indicator
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    UserData? userData = context.read<UserData?>();

    return userData == null
        ? const SizedBox.shrink()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              title: const Text("People"),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Symbols.notifications),
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
              // Fixes the RenderFlex Overflow on SearchBar Focus
              child: Column(
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

                  // Using TextField as Search Bar to get User Input
                  // Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: TextField(
                  //     controller: _textController,
                  //     decoration: InputDecoration(
                  //       filled: true,
                  //       // fillColor: Theme.of(context).colorScheme.onSurface,   // surface_container_high
                  //       fillColor: Colors.grey[500],

                  //       // Prefix and Suffix Icon Styling
                  //       prefixIconColor: Theme.of(context)
                  //           .colorScheme
                  //           .surfaceVariant, // on_surface_variant
                  //       suffixIconColor: Theme.of(context)
                  //           .colorScheme
                  //           .surfaceVariant, // on_surface_variant
                  //       prefixStyle: const TextStyle(fontSize: 24.0),
                  //       suffixStyle: const TextStyle(fontSize: 24.0),

                  //       // Padding and Border Radius
                  //       contentPadding: const EdgeInsets.all(20.0),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(color: Colors.white),
                  //         borderRadius: BorderRadius.circular(20.0),
                  //       ),
                  //       enabledBorder: UnderlineInputBorder(
                  //         borderSide: const BorderSide(color: Colors.white),
                  //         borderRadius: BorderRadius.circular(20.0),
                  //       ),

                  //       prefixIcon: IconButton(
                  //         // Menu icon Button
                  //         onPressed: () {},
                  //         icon: const Icon(Symbols.menu),
                  //       ),
                  //       border: const OutlineInputBorder(),
                  //       hintText: "Search Friends & Groups",
                  //       suffixIcon: IconButton(
                  //         // Search icon Button
                  //         onPressed: () {},
                  //         icon: const Icon(Symbols.search),
                  //       ),

                  //       // suffixIcon: IconButton(
                  //       //   // Clear Search Input
                  //       //   onPressed: () {
                  //       //     _textController.clear(); // Clears the Search Input
                  //       //   },
                  //       //   icon: const Icon(Symbols.close),
                  //       // ),
                  //     ),
                  // ),
                  // ),

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
                                    MaterialPageRoute(
                                      builder: (context) {
                                        final userDataRepository =
                                            context.read<UserDataRepository>();

                                        print(userDataRepository.uid);

                                        return StreamProvider.value(
                                          value: userDataRepository.userDataStream,
                                          initialData: null,
                                          child: const FriendsPageOverview(),
                                        );
                                      },
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

                        // Profile List Row in PageView Format
                        SizedBox(
                          height: 200,
                          child: PageView.builder(
                              // PageView Builder
                              scrollDirection: Axis.horizontal,
                              controller: _controller, // Sets the controller for the Page View
                              // itemCount: ((_names.length / 6).ceil()),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return const FriendsPageView();
                              }),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  // Animated Page indicator for the PageView (package: https://pub.dev/packages/smooth_page_indicator)
                  SmoothPageIndicator(
                    controller: _controller,
                    // Set the number of Pages in the PageView
                    // count: ((_names.length / 6).ceil()), // Determines the page count by taking the number of elements in the list, divided by the number displayed in each page and rounds up.
                    count: 3,

                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.black54,
                      dotHeight: 12.0,
                      dotWidth: 15.0,
                      expansionFactor: 2.5,
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
                                  height: 150.0, // To set the height for the ListView
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
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
