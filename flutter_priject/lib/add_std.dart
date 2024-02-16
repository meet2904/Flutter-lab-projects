import 'package:flutter_priject/database/my_db.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  Map<String,Object?>? map;
  AddUser(map){
    this.map = map;
  }

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  var nameController = TextEditingController();
  var enrollIdController = TextEditingController();
  var ageIdController = TextEditingController();
  void initState(){
    nameController.text=widget.map==null?'':widget.map!["name"].toString();
    enrollIdController.text=widget.map==null?'':widget.map!["enroll"].toString();
    ageIdController.text=widget.map==null?'':widget.map!["age"].toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Card(
          child: Column(
            children: [
              Container(
                child: TextFormField(
                  controller: enrollIdController,
                  decoration: InputDecoration(hintText: "Enter enrollment"),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: "Enter Name"),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: ageIdController,
                  decoration: InputDecoration(hintText: "Enter Age"),
                ),
              ),
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: () async {
                      if(widget.map==null){
                        insertUser().then((value) => Navigator.of(context).pop(true));
                      }
                      else{
                        editUser(widget.map!["enroll"].toString()).then((value) => Navigator.of(context).pop(true));
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<int> insertUser() async {
    Map<String, Object?> map = Map<String, Object?>();
    map["name"]=nameController.text;
    map["enroll"]=enrollIdController.text;
    map["age"]=ageIdController.text;

    var res = await MyDb().insertUser(map);
    return res;
  }

  Future<int> editUser(id) async {
    Map<String, Object?> map = Map<String, Object?>();
    map["name"]=nameController.text;
    map["enroll"]=enrollIdController.text;
    map["age"]=ageIdController.text;

    var res = await MyDb().editUser(map, id);
    return res;
  }

}