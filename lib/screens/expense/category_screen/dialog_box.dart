
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_automobile.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_entertainment.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_family.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_food.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_healthcare.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_homeoffice.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_household.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_insurance.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_loans.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_other.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_personal.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_tax.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_travel.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_utilities.dart';
import 'package:expense_manager/screens/expense/category_screen/subdialog_box_vacation.dart';
import 'package:flutter/material.dart';




class SubCategory extends StatefulWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child:
      Container(
          height: MediaQuery.of(context).size.height-200,
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>SubDialogFood()),
                      );
                    },

                    child: Text("Food", style: TextStyle(fontSize: 20),)
                    ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogAutomobile()),);
                    },


                  child: Text("Automobile",style: TextStyle(fontSize: 20),),

                ),


                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogEntertainment()),
                    );
                  },
                child:   Text("Entertainment",style: TextStyle(fontSize: 20),),
                ),

                Divider(thickness: 1,),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogFamily()),
                    );
                  },
                  child:   Text("Family",style: TextStyle(fontSize: 20),),
                ),

                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogHealthCare()),
                    );
                  },
                  child:  Text("Health Care",style: TextStyle(fontSize: 20),),
                ),

                Divider(thickness: 1,),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> SubDialogHomeOffice()),
                    );
                  },
                  child: Text("Home Office",style: TextStyle(fontSize: 20),),
                ),
                Divider(thickness: 1,),

              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SubDialogHouseHold()),
                  );
                },
                child:   Text("Household",style: TextStyle(fontSize: 20),),
              ),
                Divider(thickness: 1,),
               InkWell(
                 onTap: (){
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>SubDialogInsurance()),
                   );

                 },
                 child: Text("Insurance", style: TextStyle(fontSize: 20),),


               ),




                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogLoans()));
                  },
                  child:Text("Loans",style: TextStyle(fontSize: 20),),

                ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogOther()));
                  },
                  child: Text("Other", style: TextStyle(fontSize: 20),),

                ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogPersonal()));
                  },
                  child: Text("Personal", style: TextStyle(fontSize: 20),),
                ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogTax()));
                  },
                  child: Text("Tax", style: TextStyle(fontSize: 20),),
                ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogTravel()));
                  },
                  child: Text("Travel", style: TextStyle(fontSize: 20),),
                ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogUtilities()));
                  },
                  child: Text("Utilities", style: TextStyle(fontSize: 20),),


                ),
                Divider(thickness: 1,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SubDialogVacation()));
                  }
                  ,
                  child: Text("Vacation", style: TextStyle(fontSize: 20),),
                )
    ],
            ),
          )
      ));

  }
}