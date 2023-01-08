import 'package:flutter/material.dart';
class SubDialogTravel extends StatefulWidget {
  const SubDialogTravel({Key? key}) : super(key: key);

  @override
  State<SubDialogTravel> createState() => _SubDialogTravelState();
}

class _SubDialogTravelState extends State<SubDialogTravel> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Airplane", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Car Rental", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Food", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Hotel", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Misc", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other Transportation", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Taxi", style: TextStyle(fontSize: 20),),



            ],
          ),
        ),
      ),
    );
  }
}
