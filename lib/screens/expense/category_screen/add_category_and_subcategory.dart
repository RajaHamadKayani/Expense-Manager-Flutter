import 'package:flutter/material.dart';

import 'category_subscreen.dart';
class CategoryAndSubCategory extends StatefulWidget {
  const CategoryAndSubCategory({Key? key}) : super(key: key);

  @override
  State<CategoryAndSubCategory> createState() => _CategoryAndSubCategoryState();
}

class _CategoryAndSubCategoryState extends State<CategoryAndSubCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Category and SubCateg..."),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>DropDownHelper()),
            );

          },
          icon: Icon(Icons.arrow_back_rounded),

        ),
      ),
      body: Container(


        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){

                    },

                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter New Main Category",
                          icon: Icon(Icons.add, color: Colors.green,)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter New Sub Category",
                        icon: Icon(Icons.delete, color: Colors.red,)
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )



      ),

    );
  }
}
