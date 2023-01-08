import 'package:flutter/material.dart';
class SubDialogPersonal extends StatefulWidget {
  const SubDialogPersonal({Key? key}) : super(key: key);

  @override
  State<SubDialogPersonal> createState() => _SubDialogPersonalState();
}

class _SubDialogPersonalState extends State<SubDialogPersonal> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("Clothing", style: TextStyle(fontSize: 20),),
             Divider(thickness: 1,),
             Text("Donation", style: TextStyle(fontSize: 20),),
             Divider(thickness: 1,),
             Text("Gift", style: TextStyle(fontSize: 20),),
             Divider(thickness: 1,),
             Text("Other", style: TextStyle(fontSize: 20),),
             Divider(thickness: 1,),
             Text("Personal Care", style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
