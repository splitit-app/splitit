import 'package:flutter/material.dart';
import '../../../runtime_models/bill/bill_data.dart';

class ModifySplitScreen extends StatelessWidget {
  final BillData billData;

  const ModifySplitScreen({super.key, required this.billData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
