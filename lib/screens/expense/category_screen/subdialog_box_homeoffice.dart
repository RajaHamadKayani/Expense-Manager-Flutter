import 'package:flutter/material.dart';
class SubDialogHomeOffice extends StatefulWidget {
  const SubDialogHomeOffice({Key? key}) : super(key: key);

  @override
  State<SubDialogHomeOffice> createState() => _SubDialogHomeOfficeState();
}

class _SubDialogHomeOfficeState extends State<SubDialogHomeOffice> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Computer", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Electronics", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Office Furniture", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Office Supply", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Other", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Stationary", style: TextStyle(fontSize: 20),),

            ],
          ),
        ),
      ),
    );
  }
}
