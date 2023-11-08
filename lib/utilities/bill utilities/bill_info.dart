import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/utilities/person_icon.dart';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class BillInfo extends StatefulWidget {
  final String billName;
  final double billTotal;
  final String billDate;
  const BillInfo(
      {super.key,
      required this.billName,
      required this.billTotal,
      required this.billDate});

  @override
  State<BillInfo> createState() => _BillInfoState();
}

class _BillInfoState extends State<BillInfo> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  Widget onDisplay = const CloseTitle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.billName),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(widget.billDate,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),

              // People involved in the bill
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text("People",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500))),

              ExpansionTileCard(
                trailing: InkWell(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) => PeopleInvolved()));
                      Navigator.of(context).push(_createRoute());
                    },
                    borderRadius: BorderRadius.circular(15.0),
                    child: const Icon(Symbols.edit, size: 30.0)),
                onExpansionChanged: (isExpanded) {
                  setState(() {
                    onDisplay = isExpanded ? const OpenTitle() : const CloseTitle();
                  });
                },
                title: onDisplay,
                shadowColor: Theme.of(context).colorScheme.surface,
                elevation: 0.0,
                key: cardA,
                baseColor: Theme.of(context).colorScheme.secondaryContainer,
                expandedColor: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),

                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Primary Split",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 75.0,
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25.0)),
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer), //! Change Colors if needed
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RowSuper(
                                innerDistance: -10.0,
                                children: const [
                                  PersonIcon(),
                                  PersonIcon(),
                                  PersonIcon(),
                                  PersonIcon(),
                                  SizedBox(width: 5.0),
                                ],
                              ),
                              const Text("+ 999 others"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),

              // Overview Group
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Overview",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)),
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceVariant), //! Change Colors if needed
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Slidable(
                          closeOnScroll: false,
                          startActionPane: ActionPane(
                            motion: const BehindMotion(),
                            extentRatio: 0.2,
                            children: [
                              SlidableAction(
                                onPressed: ((context) {}),
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                foregroundColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                borderRadius: index == 0
                                    ? const BorderRadius.only(
                                        topLeft: Radius.circular(25.0))
                                    : index == 4 //! Replace with length
                                        ? const BorderRadius.only(
                                            bottomLeft: Radius.circular(25.0))
                                        : const BorderRadius.horizontal(
                                            left: Radius.circular(0.0)),
                                icon: Symbols.check,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    PersonIcon(),
                                    SizedBox(width: 15.0),
                                    SizedBox(
                                        width: 100.0,
                                        child: Text("A Person's Long Name",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1)),
                                  ],
                                ),
                                Text(
                                  "\$ Money",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Theme.of(context).colorScheme.error),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(height: 0, thickness: 2.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25.0),

              // Pending and Total Costs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pending",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Total",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("\$ Pending Total",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("\$${widget.billTotal}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PeopleInvolved(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // const begin = Offset(0.0, 1.0);
      // const end = Offset.zero;
      // const curve = Curves.ease;
      // final tween = Tween(begin: begin, end: end);
      // final offsetAnimation = animation.drive(tween);
      // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
      return FadeTransition(
        opacity: animation,
        child: child,
      );

      // return ScaleTransition(
      //   scale: animation,
      //   child: child,
      // );

      // return SlideTransition(
      //   position: animation.drive(tween),
      //   child: child,
      // );
    },
  );
}

class CloseTitle extends StatelessWidget {
  const CloseTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const PersonIcon(),
        SizedBox(
            height: 35.0,
            child: VerticalDivider(
                thickness: 4.0,
                color: Theme.of(context).dividerColor,
                width: 15.0)),
        RowSuper(innerDistance: -10.0, children: const [
          PersonIcon(),
          PersonIcon(),
          PersonIcon(),
        ]),
        // const SizedBox(width: 5.0),
        const Text("+ 999 others", style: TextStyle(fontSize: 12.0)),
      ],
    );
  }
}

class OpenTitle extends StatelessWidget {
  const OpenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Paid by",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 10.0),
        PersonIcon(),
      ],
    );
  }
}

class PeopleInvolved extends StatelessWidget {
  PeopleInvolved({super.key});
  final _searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("People Involved"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      ),
      body: Column(
        children: [
          // Search Bar:
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SearchBar(
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

          Flexible(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, index) {
                      return Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png"),
                          ),
                          const SizedBox(width: 5.0),
                          Text("Tech Bro $index")
                        ],
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
