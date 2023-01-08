import 'package:expense_manager/screens/expense/payee_list/payee_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_redirect/store_redirect.dart';
import 'dart:io';
import 'boxes.dart';

class PayeeList extends StatefulWidget {
  const PayeeList({Key? key}) : super(key: key);

  @override
  State<PayeeList> createState() => _PayeeListState();
}

class _PayeeListState extends State<PayeeList> {
  static ValueNotifier<String> enteredvalue = ValueNotifier('');
  final titleController = TextEditingController();
  bool isShow = true;

  List<PayeeModel> list = [];
  String title = "";


 @override



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payee List"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //

          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  StoreRedirect.redirect(
                    androidAppId: "com.google.android.contacts",
                  );
                },
                child: Icon(
                  Icons.contacts_rounded,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.filter_list_outlined,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {

                    setState(
                          () {
                        isShow = !isShow;
                      },
                    );

                },
                child: Icon(
                  Icons.edit,
                ),
              )),
        ],
      ),

      body: Stack(
        children: [
          Container(
            child:  ValueListenableBuilder<Box<PayeeModel>>(
      valueListenable:
      Boxes.getDAta().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList();

          return ListView.builder(
              itemCount: box.length,
              reverse: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Row(
                            children: [
                              Text(data[index].title.toString()),

                              Spacer(),
                              InkWell(
                                  onTap: () {
                                    _update(
                                      data[index],
                                      data[index].title.toString(),

                                    );
                                  },
                                  child: Icon(Icons.edit)),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                  onTap: () {
                                    delete(data[index]);
                                  },
                                  child: Icon(Icons.delete))
                            ],

                          ),
                          onTap: (){
                            Navigator.pop(context, data[index].title.toString());

                          },
                        ),
                      ],
                    ),
                  ),
                );
              });
        }
        )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                    child:Container(
                      margin: EdgeInsets.only(bottom:20,right:20 ,left: 20,),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: TextField(
                        // controller: textEditingController,
                        controller: titleController,

                        decoration: InputDecoration(
                            hintText: "enter a item",
                            border: InputBorder.none
                        ),
                        onTap: (){
                          //  work from here to get valuelistner
                        },
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.only(bottom:20 ,right: 20),
                  child: ElevatedButton(
                    onPressed: () async {
                      // _addItem(textEditingController.text);
                      var data = PayeeModel(
                        title: titleController.text,
                      );
                      final box = Boxes.getDAta();
                      // box.add(data);
                      box.add(data);
                      var tring = "sss";
                      // data.save();
                      titleController.clear();
                      print(box);
                    },
                    child: Icon(Icons.add),

                  ),
                )
              ],
            ),
          )


        ],
      ),
    );
  }

  void delete(PayeeModel notesModel) async {
    notesModel.delete();
  }

  Future<void> _update(PayeeModel notesModel, String title) async {
    titleController.text = title;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit"),
            content: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: "Enter an item"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    notesModel.title = titleController.text.toString();
                    notesModel.save();
                    titleController.clear();
                  },
                  child: Text("Ok")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"))
            ],
          );
        });
  }

}