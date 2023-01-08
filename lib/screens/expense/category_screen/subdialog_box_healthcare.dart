import 'package:flutter/material.dart';

import '../expense_screen.dart';
class SubDialogHealthCare extends StatefulWidget {
  const SubDialogHealthCare({Key? key}) : super(key: key);

  @override
  State<SubDialogHealthCare> createState() => _State();
}

class _State extends State<SubDialogHealthCare> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dental", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ExpenseScreen()));
                },
                child: Text("Eye Care ", style: TextStyle(fontSize: 20),),
              ),
              Divider(thickness: 1,),
              Text("Health Insurance",style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Medical", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Nutrition", style:TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Prescription", style: TextStyle(fontSize: 20),),

            ],
            
          ),
        ),
      ),
    );
  }
}
