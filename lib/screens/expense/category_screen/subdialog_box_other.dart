import 'package:flutter/material.dart';

import '../expense_screen.dart';
class SubDialogOther extends StatefulWidget {
  const SubDialogOther({Key? key}) : super(key: key);

  @override
  State<SubDialogOther> createState() => _SubDialogOtherState();
}

class _SubDialogOtherState extends State<SubDialogOther> {
  @override
  Widget build(BuildContext context) {
    return Dialog(

        child: SingleChildScrollView(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){

                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ExpenseScreen()));
                  },
                )
              ],
            ),

          ),
        ),

    );
  }
}
