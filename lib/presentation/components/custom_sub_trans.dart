// presentation/components/custom_sub_trans.dart
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'theme.dart';


 class custom_sub_trans extends StatefulWidget {

  final String sub_title1;  
  final String sub_title2;
 

   custom_sub_trans({Key? key, required this.sub_title1, required this.sub_title2})
      : super(key: key);

  @override
  State<custom_sub_trans> createState() => _custom_sub_transState();
}

class _custom_sub_transState extends State<custom_sub_trans> {
  List<bool> ischeckedlist = List.generate(9, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: clr(3),
   
      body:Center(
          
            child: Container(
              width: 800.0,
               height: 550.0,
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(35.0),
               color: clr(4),
               boxShadow: [
                  BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
               ],
             ),
             
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(left: 40 , right: 40, top: 30),
                  child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                           
                    Row(
                      children: [
                        Text(
                          'اسم الموظف ',
                          style: TextStyle(
                             color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Text(
                          '*',
                          style: TextStyle(
                            color: clr(2),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),

                     SizedBox(height: 8),

                    Container(
                        child: TextFormField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            gapPadding: 8,
                            borderSide: BorderSide( width: 30  )
                                  ),
                                ),
                              ),
                            ),
                            
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                                child: Row(
                                  children: [
                                    Text(
                                      widget.sub_title1,                   // نوع الترقية
                                      style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text(
                                       '*',
                                        style: TextStyle(
                                        color: clr(2),
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              
                            ),
                            check_Row(0),
                            check_Row(2),
                            check_Row(4),
            
                            
                         
                                 Row(
                                  children: [
                                    Text(
                                      widget.sub_title2,
                                      style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,

                                    ),
                                    ),
                                    Text(
                                       '*',
                                        style: TextStyle(
                                        color: clr(2),
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                
                              
                            ),
                          
                            
                               CheckboxListTile(
                                  value: ischeckedlist[6],
                                  onChanged: (newbool) {
                                    setState(() {
                                      ischeckedlist[6] = newbool!;
                                    });
                                  },
                                  activeColor: clr(2),
                                  checkColor: clr(4),
                                  title: Text("..."),
                                  controlAffinity: ListTileControlAffinity.leading,
                                ),
                              
                            
                            
                            CheckboxListTile(
                                  value: ischeckedlist[7],
                                  onChanged: (newbool) {
                                    setState(() {
                                      ischeckedlist[7] = newbool!;
                                    });
                                  },
                                  activeColor: clr(2),
                                  checkColor: clr(4),
                                  title: Text("..."),
                                  controlAffinity: ListTileControlAffinity.leading,
                                ),
                              

                             CheckboxListTile(
                                  value: ischeckedlist[8],
                                  onChanged: (newbool) {
                                    setState(() {
                                      ischeckedlist[8] = newbool!;
                                    });
                                  },
                                  activeColor: clr(2),
                                  checkColor: clr(4),
                                  title: Text("..."),
                                  controlAffinity: ListTileControlAffinity.leading,
                                ),
                              
                              
                             Center(
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                borderRadius:   BorderRadius.circular(40.0) ,
                                boxShadow: [
                                BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                               ) ,
                                ],
                                ),
                                  child: ElevatedButton(
                                    onPressed: (){}, // to be modified later
                                    style:  ButtonStyle(
                                    backgroundColor:  WidgetStatePropertyAll( clr(2)),
                                  ), 
                                    child: Text(
                                      'تم',
                                      
                                      style:  TextStyle(
                                       color: Colors.black, 
                                       fontSize: 30 ,
                                       fontWeight: FontWeight.bold,
                                      ),
                                      
                                     ),
                                    
                                     
                                ),
                              ),
                              ),
                              
                            
                          ],
                        ),
                    ),
                  ),
                ),
              ),
            
          
        
      
    );
  }

  Widget check_Row(int initial_index) {
    return       
     Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
             Container(
              width:200,

               child:  CheckboxListTile(
                value: ischeckedlist[initial_index],
                onChanged: (newbool) {
                  setState(() {
                    ischeckedlist[initial_index] = newbool!;
                  });
                },
                activeColor: clr(2),
                checkColor: clr(4),
                title: Text("..."),
                controlAffinity: ListTileControlAffinity.leading,
               ),
               
                         ),
             
          
             Container(
              width: 200,
               child: CheckboxListTile(
                value: ischeckedlist[initial_index + 1],
                onChanged: (newbool) {
                  setState(() {
                    ischeckedlist[initial_index + 1] = newbool!;
                  });
                },
                activeColor: clr(2),
                checkColor: clr(4),
                title: Text("..."),
                controlAffinity: ListTileControlAffinity.leading,
                           
                         ),
             ),
        ],
      
    );
  }
}
