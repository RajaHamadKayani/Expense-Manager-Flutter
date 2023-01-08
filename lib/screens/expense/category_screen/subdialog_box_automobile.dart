import 'package:expense_manager/screens/expense/expense_screen.dart';
import 'package:flutter/material.dart';
class SubDialogAutomobile extends StatefulWidget {
  const SubDialogAutomobile({Key? key}) : super(key: key);

  @override
  State<SubDialogAutomobile> createState() => _SubDialogAutomobileState();
}

class _SubDialogAutomobileState extends State<SubDialogAutomobile> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child:Container(
        height: MediaQuery.of(context).size.height-150,
        width: 300,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            InkWell(
              onTap: ()async{

              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ExpenseScreen()),
              );
              },
              child:Text("Fuel", style: TextStyle(fontSize: 20),) ,

            ),
              Divider(thickness: 1,),
              InkWell(
                onTap: ()async{

                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ExpenseScreen()),
                  );
                },
                child: Text("AAA or Road Services",style: TextStyle(fontSize: 20),),

              ),
              Divider(thickness: 1,),
              InkWell(
                onTap: ()async{

                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>ExpenseScreen()));

                },
                child: Text("Insurance", style: TextStyle(fontSize: 20),),
              ),
              Divider(thickness: 1,),
              InkWell(
                onTap: ()async{

                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ExpenseScreen()));
                },
                child: Text("Lease",style: TextStyle(fontSize: 20),),
              ),
              Divider(thickness: 1,),
              Text("Maintenance", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Mileage",style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other",style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Registration",style: TextStyle(fontSize: 20),),
              ],

          ),
        ),
      )
    );
  }
}
