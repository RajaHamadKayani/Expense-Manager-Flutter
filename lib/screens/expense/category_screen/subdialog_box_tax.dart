import 'package:flutter/material.dart';
class SubDialogTax extends StatefulWidget {
  const SubDialogTax({Key? key}) : super(key: key);

  @override
  State<SubDialogTax> createState() => _SubDialogTaxState();
}

class _SubDialogTaxState extends State<SubDialogTax> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Other", style: TextStyle(fontSize: 20),),
              Divider(thickness: 1,),
              Text("Property Tax", style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
