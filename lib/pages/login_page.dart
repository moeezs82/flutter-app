import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password"
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(onPressed: (){
                    print("Hello from Moeez");
                },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
