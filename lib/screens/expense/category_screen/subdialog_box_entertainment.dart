import 'package:flutter/material.dart';
class SubDialogEntertainment extends StatefulWidget {
  const SubDialogEntertainment({Key? key}) : super(key: key);

  @override
  State<SubDialogEntertainment> createState() => _SubDialogEntertainmentState();
}

class _SubDialogEntertainmentState extends State<SubDialogEntertainment> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height-300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Concert", style: TextStyle(fontSize: 20),),
            Divider(thickness: 1,),
            Text("Movies", style: TextStyle(fontSize: 20),),
            Divider(thickness: 1,),
            Text("Other", style: TextStyle(fontSize: 20),),
            Divider(thickness: 1,),
            Text("Party", style: TextStyle(fontSize: 20),),
            Divider(thickness: 1,),
            Text("Sports", style: TextStyle(fontSize: 20),),

          ],
        ),
      ),
    );
  }
}
