import 'package:flutter/material.dart';
import 'package:flutter_priject/add_std.dart';
import 'package:flutter_priject/database/my_db.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: FutureBuilder(
          future: MyDb().copyPasteAssetFileToRoot(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return FutureBuilder(
                  future: MyDb().getStd(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(10),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(child: Text(snapshot.data![index]['enroll'].toString()),flex: 2,),
                                    Expanded(child: Text(snapshot.data![index]['name'].toString()),flex: 2,),
                                    Expanded(child: Text(snapshot.data![index]['age'].toString()),flex: 2,),
                                    Expanded(child: InkWell(
                                        onTap: () async {
                                          setState(() {
                                            MyDb().delstd(snapshot.data![index]['enroll'].toString());
                                          });
                                        },
                                        child: Icon(Icons.delete_forever_rounded))
                                    ),
                                    Expanded(child: InkWell(
                                        onTap: () async {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                              return AddUser(snapshot.data![index]);
                                            })).then((value){setState(() {}
                                            );});
                                        },
                                        child: Icon(Icons.edit))
                                    ),
                                    Expanded(child: InkWell(
                                        onTap: () async {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return AddUser(null);
                                          })).then((value){setState(() {}
                                          );});
                                        },
                                        child: Icon(Icons.add))
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                      );
                    }
                    else{
                      return Center(child: CircularProgressIndicator());
                    }
                  },
              );
            }
            else if(snapshot.hasError){
              return Center(child: Text(snapshot.error.toString()));
            }
            else{
              return Center(child: CircularProgressIndicator());
            }
          },
      ),
    );
  }
}
