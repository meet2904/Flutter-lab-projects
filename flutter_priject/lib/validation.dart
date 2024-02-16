import 'package:flutter/material.dart';
import 'package:flutter_priject/fun.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  final _formKey = GlobalKey<FormState>();

  int selectedindex = 0;

  Widget getTextButton(String txt, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Text(
        txt,
        style: TextStyle(fontSize: 15),
      ),
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(Colors.grey.shade900),
        foregroundColor: MaterialStatePropertyAll(
            selectedindex == index ? Colors.blueAccent : Colors.pinkAccent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LoginPage",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          ),
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white70,
                        ),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return "Please enter e-mail or username";
                          }
                          String emailpattern = r"^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)$";
                          RegExp emailRegExp = new RegExp(emailpattern);
                          String usernamepattern = r'^[a-zA-Z0-9._]{3,15}$';
                          RegExp usernameRegExp = new RegExp(usernamepattern);
                          if(!emailRegExp.hasMatch(value) && !usernameRegExp.hasMatch(value)) {
                            return "Invalid e-mail";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.white54,
                          ),
                          hintText: "E-mail or Username",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white70,
                        ),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return "Please enter Password";
                          }
                          String passwordpattern = r'^(?=.[A-Za-z])(?=.\d)(?=.[@$!%#?&])[A-Za-z\d@$!%*#?&]{8,}$';
                          RegExp passwordRegExp = new RegExp(passwordpattern);
                          if(!passwordRegExp.hasMatch(value)) {
                            return "Invalid password";
                          }
                          return null;
                        },
                        // obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.white54,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              getTextButton("Forgot your password?", 1),
              SizedBox(
                height: 25,
              ),
              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
                    backgroundColor: MaterialStatePropertyAll(Colors.pink),
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Fun(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://imgs.search.brave.com/K2bzYTWwzs1jK-LIjzjfDSF_tBhgNnw1Xql1Q8VZL5Q/rs:fit:500:0:0/g:ce/aHR0cHM6Ly8xMDAw/bG9nb3MubmV0L3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE2LzEx/L05ldy1Hb29nbGUt/TG9nby00OTd4NTAw/LmpwZw"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://imgs.search.brave.com/b1qzWLZiN4Dm3HPkkcOxdae80mpuTE1g_1Yd1WivZrI/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzMyLzIwLzAz/LzM2MF9GXzUzMjIw/MDM1NV9vZEtOOU91/M1dCNmlIV0pURklF/bEZ0SmJUdXpKc3BZ/Ni5qcGc"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://imgs.search.brave.com/_3HcGE4I9CxX2CZnz1okrB-ZUyDqhhpQB9sHdMe20FA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9mcmVl/bG9nb3BuZy5jb20v/aW1hZ2VzL2FsbF9p/bWcvMTY1NzA0NTQ0/NHR3aXR0ZXItbG9n/by10cmFuc3BhcmVu/dC1wbmcucG5n"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getTextButton("Create newAccount", 2),
                    Text(
                      " / ",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    getTextButton("Continue as guest", 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}