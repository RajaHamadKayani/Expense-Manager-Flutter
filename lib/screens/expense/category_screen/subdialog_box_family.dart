import 'package:flutter/material.dart';
class SubDialogFamily extends StatefulWidget {
  const SubDialogFamily({Key? key}) : super(key: key);

  @override
  State<SubDialogFamily> createState() => _SubDialogFamilyState();
}

class _SubDialogFamilyState extends State<SubDialogFamily> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height-300,
        width: 300,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Child Care", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Child Education", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Toy",style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
