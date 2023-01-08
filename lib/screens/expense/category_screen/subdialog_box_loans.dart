import 'package:flutter/material.dart';
class SubDialogLoans extends StatefulWidget {
  const SubDialogLoans({Key? key}) : super(key: key);

  @override
  State<SubDialogLoans> createState() => _SubDialogLoansState();
}

class _SubDialogLoansState extends State<SubDialogLoans> {
  @override
  Widget build(BuildContext context) {
    return Dialog(

        child: SingleChildScrollView(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Auto", style: TextStyle(fontSize: 20),),
                Divider(thickness: 1,),
                Text("Home Equity", style: TextStyle(fontSize: 20),),
                Divider(thickness: 1,),
                Text("Mortgage", style: TextStyle(fontSize: 20),),
                Divider(thickness: 1,),
                Text("Other", style: TextStyle(fontSize: 20),),
                Divider(thickness: 1,),
                Text("Student", style: TextStyle(fontSize: 20),)

              ],
            ),
          ),
        ),

    );
  }
}
