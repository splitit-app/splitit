import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/utilities/friends_page_view.dart';
import 'package:project_bs/utilities/group_container.dart';
import 'package:project_bs/utilities/person_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  // The controller keeps track on the user input from the Search Bar.
  final _textController = TextEditingController();

  // Page Controller for Page Indicator
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // Using TextField as Search Bar to get User Input
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  // fillColor: Theme.of(context).colorScheme.onSurface,   // surface_container_high
                  fillColor: Colors.grey[500],

                  // Prefix and Suffix Icon Styling
                  prefixIconColor: Theme.of(context)
                      .colorScheme
                      .surfaceVariant, // on_surface_variant
                  suffixIconColor: Theme.of(context)
                      .colorScheme
                      .surfaceVariant, // on_surface_variant
                  prefixStyle: const TextStyle(fontSize: 24.0),
                  suffixStyle: const TextStyle(fontSize: 24.0),

                  // Padding and Border Radius
                  contentPadding: const EdgeInsets.all(20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  prefixIcon: IconButton(
                    // Menu icon Button
                    onPressed: () {},
                    icon: const Icon(Symbols.menu),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: "Search Friends & Groups",
                  suffixIcon: IconButton(
                    // Search icon Button
                    onPressed: () {},
                    icon: const Icon(Symbols.search),
                  ),

                  // suffixIcon: IconButton(
                  //   // Clear Search Input
                  //   onPressed: () {
                  //     _textController.clear(); // Clears the Search Input
                  //   },
                  //   icon: const Icon(Symbols.close),
                  // ),
                ),
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
                            Navigator.push(
                              // Pushes the FriendsPageOverview onto the Route Stack
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    FriendsPageOverview(), // Navigates the FriendsPageOverview Page
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
                        controller:
                            _controller, // Sets the controller for the Page View
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

class FriendsPageOverview extends StatelessWidget {
  FriendsPageOverview({super.key});

  final _textController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        title: const Text("Friends"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context); // Pops the Route, returns back to the previous page.
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
      body: SingleChildScrollView(
        // Fixes the RenderFlex Overflow on SearchBar Focus
        child: Column(
          children: [
            // Search Bar:
            // Using TextField as Search Bar to get User Input
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  // fillColor: Theme.of(context).colorScheme.onSurface,   // surface_container_high
                  fillColor: Colors.grey[500],

                  // Prefix and Suffix Icon Styling
                  prefixIconColor: Theme.of(context)
                      .colorScheme
                      .surfaceVariant, // on_surface_variant
                  suffixIconColor: Theme.of(context)
                      .colorScheme
                      .surfaceVariant, // on_surface_variant
                  prefixStyle: const TextStyle(fontSize: 24.0),
                  suffixStyle: const TextStyle(fontSize: 24.0),

                  // Padding and Border Radius
                  contentPadding: const EdgeInsets.all(20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  prefixIcon: IconButton(
                    // Menu icon Button
                    onPressed: () {},
                    icon: const Icon(Symbols.menu),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: "Search Friends",
                  suffixIcon: IconButton(
                    // Clear Search Input
                    onPressed: () {
                      _textController.clear(); // Clears the Search Input
                    },
                    icon: const Icon(Symbols.close),
                  ),
                ),
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
                            Text(_names[index],
                                style: const TextStyle(fontSize: 16.0)),
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
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centering Text
                    children: [
                      Text(
                        // "0",
                        '${_names.length}',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 600,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return Slidable(
                      // Slide from the Left (or Top)
                      startActionPane: ActionPane(
                        // Controls how the Pane animates
                        motion: const StretchMotion(),
                        // dismissible: DismissiblePane(onDismissed: () {}),

                        // All Actions:
                        children: [
                          SlidableAction(
                            onPressed: ((context) {


                              // action
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text('No. No no no no.'),
                                  action: SnackBarAction(
                                    label: 'Yeeeeaaah',
                                    onPressed: () {
                                      // Code to execute.
                                    },
                                  ),
                                ),
                              );


                            }),
                            backgroundColor: const Color(0xFFD42B2B),
                            foregroundColor: Colors.white,
                            borderRadius:  const BorderRadius.only(bottomLeft: Radius.circular(25.0)),
                            icon: Symbols.delete,
                            label: "Delete",
                          ),
                        ],
                      ),

                      // Slide from the Right (or Bottom)
                      endActionPane: ActionPane(
                        motion: const StretchMotion(),

                        // All Actions:
                        children: [
                          SlidableAction(
                            // flex: 2,
                            onPressed: ((context) {
                              // action
                            }),
                            backgroundColor: const Color(0xFF2B82D4),
                            foregroundColor: Colors.white,
                            borderRadius:  const BorderRadius.only(bottomRight: Radius.circular(25.0)),
                            icon: Symbols.chat,
                            label: "Chat'em up",
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF1EFEF),
                          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
                          ),
                        child: ListTile(
                          title: Text('${_names[index]}'),
                          subtitle: const Text("Subtitles Subtitles Subtitles"),
                          leading: PersonIcon(personName: _names[index]),
                          trailing: const Icon(Symbols.drag_handle),
                          // leading: const CircleAvatar(
                          //   radius: 30,
                          //   backgroundImage: NetworkImage(
                          //       "https://i.pinimg.com/originals/14/2f/a7/142fa7f209297073e4648f11ed842a6a.jpg"),
                          // ),
                        ),
                      ));
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ), // End of Main Column (Wrapped in SingleChildScrollView)
    );
  }
}

class GroupPageOverview extends StatelessWidget {
  const GroupPageOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          title: const Text("Groups"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context); // Pops the Route, returns back to the previous page.
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Groups",
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
                  child: const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centering Text
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
