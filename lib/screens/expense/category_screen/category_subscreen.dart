import 'package:expense_manager/screens/expense/expense_screen.dart';
import 'package:flutter/material.dart';

import 'add_category_and_subcategory.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({Key? key}) : super(key: key);

  @override
  State<DropDownHelper> createState() => _DropDownHelperState();
}

class _DropDownHelperState extends State<DropDownHelper> {
  List dropDownListData = [
    {"title": "AAA or Road Services", "value": "1"},
    {"title": "Fuel", "value": "2"},
    {"title": "Insurance", "value": "3"},
    {"title": "Lease", "value": "4"},
    {"title": "Maintenance", "value": "5"},
    {"title": "Mileage", "value": "6"},
    {"title": "Other", "value": "7"},
    {"title": "Registration", "value": "8"},
  ];
  List dropDownListData1 = [
    {"title": "Concert", "value": "1"},
    {"title": "Movies", "value": "2"},
    {"title": "Other", "value": "3"},
    {"title": "Party", "value": "4"},
    {"title": "Sports", "value": "5"},
  ];
  List dropDownListData2 = [
    {"title": "Child Care", "value": "1"},
    {"title": "Child Education", "value": "2"},
    {"title": "Other", "value": "3"},
    {"title": "Toy", "value": "4"},
  ];
  List dropDownListData3 = [
    {"title": "Groceries", "value": "1"},
    {"title": "Other", "value": "2"},
    {"title": "Restaurant", "value": "3"},
    {"title": "Snack", "value": "4"},
  ];
  List dropDownListData4 = [
    {"title": "Dental", "value": "1"},
    {"title": "Eye Care", "value": "2"},
    {"title": "Health Insurance", "value": "3"},
    {"title": "Medical", "value": "4"},
    {"title": "Nutrition", "value": "5"},
    {"title": "Other", "value": "6"},
    {"title": "Prescription", "value": "7"},
  ];
  List dropDownListData5 = [
    {"title": "Computer", "value": "1"},
    {"title": "Electronics", "value": "2"},
    {"title": "Office Furniture", "value": "3"},
    {"title": "Office Supply", "value": "4"},
    {"title": "Other", "value": "5"},
    {"title": "Stationary", "value": "6"},
  ];
  List dropDownListData6 = [
    {"title": "Appliance", "value": "1"},
    {"title": "Consumable", "value": "2"},
    {"title": "Home Maintenance", "value": "3"},
    {"title": "Homeowner Fees", "value": "4"},
    {"title": "Household Tools", "value": "5"},
    {"title": "Miscellaneous Household Items", "value": "6"},
    {"title": "Other", "value": "7"},
    {"title": "Postage", "value": "8"},
    {"title": "Rent", "value": "9"},
  ];
  List dropDownListData7 = [
    {"title": "Auto", "value": "1"},
    {"title": "Health", "value": "2"},
    {"title": "Home", "value": "3"},
    {"title": "Life", "value": "4"},
    {"title": "Other", "value": "5"},
  ];
  List dropDownListData8 = [
    {"title": "Auto", "value": "1"},
    {"title": "Home Equity", "value": "2"},
    {"title": "Mortgage", "value": "3"},
    {"title": "Other", "value": "4"},
    {"title": "Student", "value": "5"},
  ];

  List dropDownListData9 = [
    {"title": "Other", "value": "1"},
  ];
  List dropDownListData10 = [
    {"title": "Clothing", "value": "1"},
    {"title": "Donation", "value": "2"},
    {"title": "Gift", "value": "3"},
    {"title": "Other", "value": "4"},
    {"title": "Personal Care", "value": "5"},
  ];
  List dropDownListData11 = [
    {"title": "Other", "value": "1"},
    {"title": "Property Tax", "value": "2"},
  ];
  List dropDownListData12 = [
    {"title": "Airplane", "value": "1"},
    {"title": "Car Rental", "value": "2"},
    {"title": "Food", "value": "3"},
    {"title": "Hotel", "value": "4"},
    {"title": "Misc", "value": "5"},
    {"title": "Other", "value": "6"},
    {"title": "Other Transportation", "value": "7"},
    {"title": "Taxi", "value": "8"},
  ];
  List dropDownListData13 = [
    {"title": "Cable TV", "value": "1"},
    {"title": "Electric", "value": "2"},
    {"title": "Garbage", "value": "3"},
    {"title": "Gas", "value": "4"},
    {"title": "Internet", "value": "5"},
    {"title": "Telephone", "value": "6"},
    {"title": "Water", "value": "7"},
  ];
  List dropDownListData14 = [
    {"title": "Airplane", "value": "1"},
    {"title": "Car Rental", "value": "2"},
    {"title": "Food", "value": "3"},
    {"title": "Hotel", "value": "4"},
    {"title": "Misc", "value": "5"},
    {"title": "Other", "value": "6"},
    {"title": "Other Transportation", "value": "7"},
    {"title": "Taxi", "value": "8"},
  ];

  String defaultvalue = "";
  String secondValue = "";
  String thirdValue = "";
  String fourthValue = "";
  String fifthValue = "";
  String sixthValue = "";
  String seventhValue = "";
  String eighthValue = "";
  String ninthValue = "";
  String tenthValue = "";
  String eleventhValue = "";
  String twelthValue = "";
  String thirteenValue = "";
  String fourteenValue = "";
  String fifteenValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Catergory:Sub...",
          style: TextStyle(fontSize: 25),
        )),
        leading: new IconButton(
            onPressed: () {
              print("objectobject : ssss : Automobile: Fuel");

              Navigator.pop(context, "Automobile:Fuel");
            },
            icon: new Icon(Icons.arrow_back_rounded)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryAndSubCategory()));
            },
            icon: Icon(
              Icons.add,
            ),
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(

                      isDense: true,
                      value: defaultvalue,
                      isExpanded: true,
                      menuMaxHeight: 500,
                      items: [
                        const DropdownMenuItem(

                            child: Text(
                              "Automobile",
                            ),
                            value: ""),
                        ...dropDownListData

                            .map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(


                                  child: Text(data['title']),
                              value: data['value']
                          );
                        }).toList(),
                      ],
                      onChanged: (value) {


                        Navigator.pop(context,"Automobile:AAA or  Road Services");

                        Text("Selected value $value");
                        setState(() {

                          if(ExpenseScreenState.ssss2!=null&&ExpenseScreenState.ssss2!=""){
                              ExpenseScreenState.ssss2=ExpenseScreenState.replacedValue2;

                            }
                          defaultvalue = value!;
                        });
                      }),
                ),
              ),

            InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isDense: true,
                      value: secondValue,
                      isExpanded: true,
                      menuMaxHeight: 500,
                      items: [
                        const DropdownMenuItem(
                            child: Text(
                              "Entertainment",
                            ),
                            value: ""),
                        ...dropDownListData1
                            .map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ExpenseScreen()));
                                  },
                                  child: Text(data['title'])),
                              value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        Navigator.pop(context,"Entertainment:Concert");


                        Text("Selected Value $value");
                        setState(() {
                          if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                            {
                              ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                            }






                          secondValue = value!;
                        });
                      }),
                ),
              ),

           InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isDense: true,
                      value: thirdValue,
                      isExpanded: true,
                      menuMaxHeight: 500,
                      items: [
                        const DropdownMenuItem(
                            child: Text(
                              "Family",
                            ),
                            value: ""),
                        ...dropDownListData2
                            .map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ExpenseScreen()));
                                  },
                                  child: Text(data['title'])),
                              value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        Navigator.pop(context,"Family:Child Care");
                        print("Selected Value $value");
                        setState(() {
                          if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                            {
                              ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                            }
                          thirdValue = value!;
                        });
                      }),
                ),
              ),

            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: fourthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Food",
                          ),
                          value: ""),
                      ...dropDownListData3
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Food:Groceries");

                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        fourthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: fifthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Health Care",
                          ),
                          value: ""),
                      ...dropDownListData4
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Health Care:Dental");

                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }

                        fifthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: sixthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Home Office",
                          ),
                          value: ""),
                      ...dropDownListData5
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Home Office:Computer");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        sixthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: seventhValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Household",
                          ),
                          value: ""),
                      ...dropDownListData6
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Household:Appliance");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        seventhValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: eighthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Insurance",
                          ),
                          value: ""),
                      ...dropDownListData7
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Insurance:Auto");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        eighthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: ninthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Loans",
                          ),
                          value: ""),
                      ...dropDownListData8
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Loans:Auto");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        ninthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: tenthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Other",
                          ),
                          value: ""),
                      ...dropDownListData9
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Other:Other");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        tenthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: eleventhValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Personal",
                          ),
                          value: ""),
                      ...dropDownListData10
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Personal:Clothing");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        eleventhValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: twelthValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Tax",
                          ),
                          value: ""),
                      ...dropDownListData11
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Tax:Other");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        twelthValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: thirteenValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Travel",
                          ),
                          value: ""),
                      ...dropDownListData12
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Travel:Airplane");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        thirteenValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: fourteenValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Utilities",
                          ),
                          value: ""),
                      ...dropDownListData13
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Utilities:Cable TV");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        fourteenValue = value!;
                      });
                    }),
              ),
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isDense: true,
                    value: fifteenValue,
                    isExpanded: true,
                    menuMaxHeight: 500,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Vacation",
                          ),
                          value: ""),
                      ...dropDownListData14
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      Navigator.pop(context,"Vacation:Airplane");
                      print("Selected Value $value");
                      setState(() {
                        if(ExpenseScreenState.ssss2!=null && ExpenseScreenState.ssss2!="")
                          {
                            ExpenseScreenState.replacedValue2=ExpenseScreenState.ssss2;
                          }
                        fifteenValue = value!;
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
