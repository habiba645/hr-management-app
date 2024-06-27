// presentation/screens/transactions/bonuses.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:hr_management_app/presentation/components/custom_sub_trans.dart';
import 'package:hr_management_app/presentation/components/transactionsAppBar.dart';


class Bonuses extends StatefulWidget {
  const Bonuses({Key? key}) : super(key: key);

  @override
  _BonusesState createState() => _BonusesState();
}

class _BonusesState extends State<Bonuses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customtransAppBar('العلاوات'),
    body: custom_sub_trans(sub_title1: 'نوع العلاوة', sub_title2: 'الجهات المعلمة')  ,
      
    );
  }
}
