import 'package:flutter/material.dart';

import '../expense_screen.dart';
class SubDialogHouseHold extends StatefulWidget {
  const SubDialogHouseHold({Key? key}) : super(key: key);

  @override
  State<SubDialogHouseHold> createState() => _SubDialogHouseHoldState();
}

class _SubDialogHouseHoldState extends State<SubDialogHouseHold> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ExpenseScreen()));
                },
                child: Text("Appliance", style: TextStyle(fontSize: 20),),
              ),
              Divider(thickness: 1,),
              Text("Consumables", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Home Maintenance", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("HomeOwner Fees", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Household Tools", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Miscellaneous Household Items", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Postage", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Rent", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
