// presentation/screens/transactions/vacations.dart
import 'package:flutter/material.dart';
import 'package:hr_management_app/presentation/components/transactionsAppBar.dart';


class Vacations extends StatefulWidget {
  const Vacations({super.key});

  @override
  State<Vacations> createState() => VacationsState();
}

class VacationsState extends State<Vacations> {
   bool checked1 = false;
  bool checked2 = false;
  bool checked3 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: customtransAppBar('الاجازات'),
        
        body: Padding(
          padding: EdgeInsets.only(left:250.0 ,top: 30.0, ),
           child: Container(
             width: 800.0,
             height: 500.0,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(35.0),
             color:  Color(0xFFE9EBF8),
             ),
             child: Column(
               children: [
                 Container(
                   height: 80.0,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("*",
                       style: TextStyle(
                         color: Color(0xFFFEC81E),
                         fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),
                     ),
                     Text("اسم الموظف ",
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                     SizedBox(
                       width: 20.0,
                     ),
                   ]
                   ),
                 ),
                 Container(
                   width: 750.0,
                     child: TextFormField(
                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(25.0),
                         ),
                       ),
                     ),
                 ),
                 SizedBox(
                   height: 20.0,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("*",
                       style: TextStyle(
                         color: Color(0xFFFEC81E),
                         fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),
                     ),
                     Text("مدة الأجازة ",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold,
                     ),),
                     SizedBox(
                       width: 25.0,
                     )
                   ],
                 ),
                 SizedBox(
                   width: 25.0,
                   height: 20.0,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       width: 210.0,
                       height: 40.0,
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(25.0),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 15.0,
                     ),
                     Text("الي ",
                     style: TextStyle(
                       fontSize: 20.0,
                     ),),
                     SizedBox(
                       width: 150.0,
                     ),
                     Container(
                       width: 210.0,
                       height: 40.0,
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(25.0),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 15.0,
                     ),
                     Padding(
                       padding: EdgeInsets.fromLTRB(0, 0, 30,0,),
                       child: Text("من  ",
                         style: TextStyle(
                           fontSize: 20.0,
                         ),),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 30.0,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("*",
                       style: TextStyle(
                         color: Color(0xFFFEC81E),
                         fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),
                     ),
                     Text("الجهات المُعلمة",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold,
                     ),),
                     SizedBox(
                       width: 35.0,
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("..."),
                     Checkbox(
                       activeColor:  Color(0xFFFEC81E),
                         value: checked1,
                         onChanged:(value){
                           setState(() {
                             checked1 = value!;
                           });
                         }
                     ),
                     SizedBox(
                       width: 35.0,
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("..."),
                     Checkbox(
                         activeColor:  Color(0xFFFEC81E),
                         value: checked2,
                         onChanged:(value){
                           setState(() {
                             checked2 = value!;
                           });
                         }
                     ),
                     SizedBox(
                       width: 35.0,
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("..."),
                     Checkbox(
                         activeColor: Color(0xFFFEC81E),
                         value: checked3,
                         onChanged:(value){
                           setState(() {
                             checked3 = value!;
                           });
                         }
                     ),
                     SizedBox(
                       width: 35.0,
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 35.0,
                 ),
                 Center(
                   child: Container(
                     width: 120.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black.withOpacity(0.2),
                           spreadRadius: 2,
                           blurRadius: 2,
                           offset: Offset(2, 2),
                         ),
                       ],
                     ),
                     child: TextButton(
                       onPressed: (){},
                       style: TextButton.styleFrom(
                         backgroundColor: Color(0xFFFEC81E),
                       ),
                       child: Text("تم",
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20.0,
                         ),
                       ),
                     ),
                   ),
                 ),
               ]
             ),
        ),
    ),
    );
  }
}