import 'package:flutter/material.dart';
import 'package:untitled3/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context)
    async {
      if(_formKey.currentState!.validate()){
        setState(() {
          changeButton = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
          changeButton = false;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/welcome.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter User Name"
                      ),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Username can't be empty";
                          }

                          return null;
                        }
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password"
                      ),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Password can't be empty";
                          }

                          return null;
                        }
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    Material(
                        color: Colors.deepPurple,
                        // shape: changeButton ? BoxShape.circle : BoxShape.rectangle
                        borderRadius: BorderRadius.circular(changeButton ? 50 : 6),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton ? Icon(
                              Icons.done,
                              color: Colors.white,
                          )
                              :
                          Text("Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                        ),
                      ),
                    )

                    // ElevatedButton(onPressed: (){
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    // },
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
