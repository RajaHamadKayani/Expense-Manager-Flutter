import 'package:flutter/material.dart';
class SubDialogUtilities extends StatefulWidget {
  const SubDialogUtilities({Key? key}) : super(key: key);

  @override
  State<SubDialogUtilities> createState() => _SubDialogUtilitiesState();
}

class _SubDialogUtilitiesState extends State<SubDialogUtilities> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cabel Tv", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Electric", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Garbage", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Gas", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Internet", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Telephone", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Water", style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
