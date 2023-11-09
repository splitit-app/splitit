import 'dart:math';

//import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/bill/bill_data.dart';
import '../../runtime_models/user/public_profile.dart';
import '../person_icon.dart';

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

class BillInfo extends StatefulWidget {
  final BillData billData;

  const BillInfo({super.key, required this.billData});

  @override
  State<BillInfo> createState() => _BillInfoState();
}

class CloseTitle extends StatelessWidget {
  const CloseTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final PublicProfile payer = context.select((BillData billData) => billData.payer!);
    final List<PublicProfile> primarySplits =
        context.select((BillData billData) => billData.primarySplits);

    return SizedBox(
      height: 60,
      child: CustomScrollView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          //Payer
          SliverToBoxAdapter(child: PersonIcon(profile: payer)),
          SliverToBoxAdapter(
              child: VerticalDivider(thickness: 2, color: Theme.of(context).dividerColor)),

          //Primary Splits
          SliverList.builder(
            itemCount: min(primarySplits.length, 3),
            itemBuilder: (context, index) => PersonIcon(profile: primarySplits[index]),
          ),
          SliverToBoxAdapter(
            child: primarySplits.length > 3
                ? const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(Icons.keyboard_control),
                  )
                : const SizedBox.shrink(),
          ),
          // RowSuper(innerDistance: -10.0, children: [
          //   PersonIcon(profile: _dummyProfile),
          //   PersonIcon(profile: _dummyProfile),
          //   PersonIcon(profile: _dummyProfile),
          // ]),
          // const SizedBox(width: 5.0),
        ],
      ),
    );
  }
}

class OpenTitle extends StatelessWidget {
  const OpenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final UserData? userData = context.watch();
    final PublicProfile payer = context.select((BillData billData) => billData.payer!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Paid by", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10.0),
        Row(children: [
          PersonIcon(profile: payer),
          const SizedBox(width: 10),
          Text(payer.uid == userData?.uid ? 'Me' : payer.name),
        ]),
      ],
    );
  }
}

class PeopleInvolved extends StatelessWidget {
  final _searchBarController = TextEditingController();
  PeopleInvolved({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
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

class _BillInfoState extends State<BillInfo> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  Widget onDisplay = const CloseTitle();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: widget.billData,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.billData.name),
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
                    Text(DateFormat.yMMMMd().format(widget.billData.dateTime),
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),

                // People involved in the bill
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("People",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),

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
                    setState(() => onDisplay = isExpanded ? const OpenTitle() : const CloseTitle());
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
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10.0),
                          Container(
                            height: 75.0,
                            //padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              //! Change Colors if needed
                              //color: Theme.of(context).colorScheme.secondaryContainer,
                            ),
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: CustomScrollView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: const NeverScrollableScrollPhysics(),
                                  slivers: [
                                    //Primary Splits
                                    SliverList.builder(
                                      itemCount: min(widget.billData.primarySplits.length, 5),
                                      itemBuilder: (context, index) =>
                                          PersonIcon(profile: widget.billData.primarySplits[index]),
                                    ),
                                    SliverToBoxAdapter(
                                      child: widget.billData.primarySplits.length > 5
                                          ? Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Center(
                                                child: Text(
                                                    '+ ${widget.billData.primarySplits.length - 5}'),
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     RowSuper(
                            //       innerDistance: -10.0,
                            //       children: [
                            //         PersonIcon(profile: _dummyProfile),
                            //         PersonIcon(profile: _dummyProfile),
                            //         PersonIcon(profile: _dummyProfile),
                            //         PersonIcon(profile: _dummyProfile),
                            //         const SizedBox(width: 5.0),
                            //       ],
                            //     ),
                            //     const Text("+ 999 others"),
                            //   ],
                            // ),
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceVariant), //! Change Colors if needed
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: widget.billData.primarySplits.length,
                        itemBuilder: (context, index) {
                          return Slidable(
                            closeOnScroll: false,
                            startActionPane: ActionPane(
                              motion: const BehindMotion(),
                              extentRatio: 0.2,
                              children: [
                                SlidableAction(
                                  onPressed: ((context) {}),
                                  backgroundColor: Theme.of(context).colorScheme.primary,
                                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(index == 0 ? 25 : 0),
                                    bottomLeft: Radius.circular(
                                        index == widget.billData.primarySplits.length - 1 ? 25 : 0),
                                  ),
                                  icon: Symbols.check,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      PersonIcon(profile: widget.billData.primarySplits[index]),
                                      const SizedBox(width: 15.0),
                                      SizedBox(
                                          width: 100.0,
                                          child: Text(widget.billData.primarySplits[index].name,
                                              overflow: TextOverflow.ellipsis, maxLines: 1)),
                                    ],
                                  ),
                                  Text(
                                    '\$ Money',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).colorScheme.error),
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
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("Total", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("\$ Pending Total",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(widget.billData.totalSpent.toString(),
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
