import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../expense_screen.dart';
class SubDialogInsurance extends StatefulWidget {
  const SubDialogInsurance({Key? key}) : super(key: key);

  @override
  State<SubDialogInsurance> createState() => _SubDialogInsuranceState();
}

class _SubDialogInsuranceState extends State<SubDialogInsurance> {
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
                  MaterialPageRoute(builder: (context)=>ExpenseScreen()),
                  );
                },
                child: Text("Auto", style: TextStyle(fontSize: 20),),


              ),
              Divider(thickness: 1,),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ExpenseScreen()),
                  );
                },
                child:Text("Health", style: TextStyle(fontSize: 20),),

              ),
              Divider(thickness: 1,),
              Text("Home", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Life", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other", style: TextStyle(fontSize: 20),),

            ],
          ),
        ),
      ),
    );
  }
}
