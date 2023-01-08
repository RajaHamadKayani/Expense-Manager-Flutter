import 'package:expense_manager/screens/expense/expense_screen.dart';
import 'package:flutter/material.dart';
class SubDialogFood extends StatefulWidget {
  const SubDialogFood({Key? key}) : super(key: key);

  @override
  State<SubDialogFood> createState() => _SubDialogState();
}

class _SubDialogState extends State<SubDialogFood> {
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
             InkWell(
               onTap: (){
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> ExpenseScreen()),
                 );

               },
               child: Text("Groceries",style: TextStyle(fontSize: 20),),
             ),
              Divider(thickness: 1,),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ExpenseScreen()));
                },
                child: Text("Other",style: TextStyle(fontSize: 20),),
              ),
              Divider(thickness: 1,),
              Text("Restaurant", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Snack", style: TextStyle(fontSize: 20),)
            ],

          ),
        ),
      ),
    );
  }
}
