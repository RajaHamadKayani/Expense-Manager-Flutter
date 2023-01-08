import 'dart:html';

import 'package:flutter/material.dart';
class ExpansionList extends StatefulWidget {
  const ExpansionList({Key? key}) : super(key: key);

  @override
  State<ExpansionList> createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expansion List"),
        ),
        body: (
        ListView.builder(
          itemCount: data.length,
            itemBuilder: (BuildContext context, int index) => EntryItem(
            data[index]
        )

        )
        ),
      ),

    );
  }
}
class Entry{
  final String title;
  final List<Entry> children;
  Entry(this.title,[this.children=const <Entry>[]]);
}
final List<Entry> data=<Entry>[
  Entry(
    "Uncategorized",
    <Entry>[
      Entry(
        "Automobile",
        <Entry>[
         Entry("AAA or Road Services"),
          Entry("Fuel"),
          Entry("Insurance"),
          Entry("Lease"),
          Entry("Maintenance"),
          Entry("Mileage"),
          Entry("Other"),
          Entry("Registration")
        ],
      ),
      Entry(
        "Entertainment",
        <Entry>[
          Entry("Concert"),
          Entry("Movies"),
          Entry("Other"),
          Entry("Party"),
          Entry("Sports"),
        ],
      ),
      Entry(
        "Family",
        <Entry>[
          Entry("Child Care"),
          Entry("Child Education"),
          Entry("Other"),
          Entry("Toy"),
        ]
      ),
      Entry(
        "Food",
        <Entry>[
          Entry("Groceries"),
          Entry("Other"),
          Entry("Restaurant"),
          Entry("Snack"),
        ]
      ),
      Entry(
        "Health Care",
        <Entry>[
          Entry("Dental"),
          Entry("Eye Care"),
          Entry("Health Insurance"),
          Entry("Medical"),
          Entry("Nutrition"),
          Entry("Other"),
          Entry("Prescription"),
        ]
      ),
      Entry(
        "Home Office",
        <Entry>[
          Entry("Computer"),
          Entry("Electronics"),
          Entry("Office Furniture"),
          Entry("Office Supply"),
          Entry("Other"),
          Entry("Stationary"),
        ]
      ),
      Entry(
        "Household",
        <Entry>[
          Entry("Appliance"),
          Entry("Consumables"),
          Entry("Home Maintenance"),
          Entry("HouseOwner Fees"),
          Entry("Household Tools"),
          Entry("Miscellaneous Household Items"),
          Entry("Other"),
          Entry("Postages"),
          Entry("Rent"),
        ],
      ),
      Entry(
        "Insurance",
        <Entry>[
          Entry("Auto"),
          Entry("Health"),
          Entry("Home"),
          Entry("Life"),
          Entry("Other"),
        ]
      ),
      Entry(
        "Loans",
        <Entry>[
          Entry("Auto"),
          Entry("Home Equity"),
          Entry("Mortgage"),
          Entry("Other"),
          Entry("Student"),

        ]
      ),
      Entry(
        "Other",
        <Entry>[
          Entry("Other"),
        ]
      ),
      Entry(
        "Personal",
        <Entry>[
          Entry("Clothing"),
          Entry("Donation"),
          Entry("Gift"),
          Entry("Other"),
          Entry("Personal Care"),
        ]
      ),
      Entry(
        "Tax",
        <Entry>[
          Entry("Other"),
          Entry("Property Tax"),
        ]
      ),
      Entry(
        "Travel",
        <Entry>[
          Entry("Airplane"),
          Entry("Car Rental"),
          Entry("Food"),
          Entry("Hotel"),
          Entry("Misc"),
          Entry("Other"),
          Entry("Other Transportation"),
        ]
      ),
      Entry(
        "Utilities",
        <Entry>[
          Entry("Cable TV"),
          Entry("Electric"),
          Entry("Garbage"),
          Entry("Gas"),
          Entry("Internet"),
          Entry("Telephone"),
          Entry("Water"),
        ]
      ),
      Entry(
        "Vacation",
        <Entry>[
          Entry("Airplane"),
          Entry("Car Rental"),
          Entry("Food"),
          Entry("Hotel"),
          Entry("Misc"),
          Entry("Other"),
          Entry("Other Transportation"),
        ]
      ),

    ]
  ),
  Entry(
    "Cash",
    <Entry>[
      Entry("Cash"),
      Entry("Check"),
      Entry("Credit Card"),
      Entry("Debit"),
      Entry("Electronic Transfer"),

    ]
  ),
  Entry(
    "Cleared",
    <Entry>[
      Entry("Uncleared"),
      Entry("Cleared"),
      Entry("Reconciled"),
      Entry("Void"),



    ]
  )
];
class EntryItem extends StatelessWidget{
const EntryItem(this.entry);
final Entry entry;
Widget _buildTiles(Entry root)
{
  if(root.children.isEmpty){
    return ListTile(
      title: Text(root.title),
    );
  }
  return ExpansionTile(title: Text(root.title),
  key: PageStorageKey<Entry>(root),
  children:root.children.map<Widget>(_buildTiles).toList(),);
}
@override
  Widget build(BuildContext context)
{
  return _buildTiles(entry);
}

}
