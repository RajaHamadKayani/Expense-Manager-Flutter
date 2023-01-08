import 'package:flutter/material.dart';
class SubDialogVacation extends StatefulWidget {
  const SubDialogVacation({Key? key}) : super(key: key);

  @override
  State<SubDialogVacation> createState() => _SubDialogVacationState();
}

class _SubDialogVacationState extends State<SubDialogVacation> {
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
