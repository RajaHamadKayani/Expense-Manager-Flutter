import 'package:flutter/material.dart';
class AlertDialog extends StatefulWidget {
  const AlertDialog({Key? key}) : super(key: key);

  @override
  State<AlertDialog> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children:
            ListTile.divideTiles(tiles: [
              ListTile(
                title: Text("Uncategorized", selectionColor: Colors.red,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                onTap: (){},
              ),
              ListTile(
                title: Text("Cash",
                  selectionColor: Colors.red,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),),
                onTap: (){},
              ),
              ListTile(
                title: Text("Cleared", style: TextStyle(fontWeight: FontWeight.w800,
                fontSize: 18),
                selectionColor: Colors.red,),
                onTap: (){},
              ),
            ], context: context).toList(),

        ),
      ),
    );
  }
}
