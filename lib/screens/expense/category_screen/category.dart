// import 'package:expense_manager/screens/expense/expense_screen.dart';
// import 'package:flutter/material.dart';
// class ListData extends StatefulWidget {
//   const ListData({Key? key}) : super(key: key);
//
//   @override
//   State<ListData> createState() => _ListViewState();
//
//   static builder({required int itemCount, required GestureDetector Function(dynamic context, dynamic pos) itemBuilder}) {}
// }
//
// class _ListViewState extends State<ListData> {
//   List<String> dropDownListData=[
//     "Automobile"
//     "Automobile:AAA or Road Services"
//     "Automobile:Lease"
//     "Automobile:Insurance"
//     "Automobile:Maintenance"
//     "Automobile:Mileage"
//     "Automobile:Other"
//     "Automobile:Registration"
//     "Entertainment"
//     "Entertainment:Concert"
//     "Entertainment:Movies"
//         "Entertainment:Other"
//         "Entertainment:Party"
//     "Entertainment:Sports"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Category:SubCateg...."),
//       ),
// body: ListView.builder(
//     itemCount:dropDownListData.length,
//       itemBuilder: (context, pos){
//       return new GestureDetector(
//         onTap: (){
//          Navigator.push(context,
//           MaterialPageRoute(builder: (context)=>ExpenseScreen(),
//             settings: RouteSettings(
//               arguments: dropDownListData[pos]
//             )
//           ));
//
//         },
//         child: Card(
//           margin: EdgeInsets.all(8),
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Text(dropDownListData[pos], style: TextStyle
//               (fontSize: 18,
//                 height: 2,
//                 color: Colors.red,
//             fontWeight: FontWeight.bold)),
//           ),
//         ),
//       );
//     }),
//
//
//       );
//
//   }
// }
