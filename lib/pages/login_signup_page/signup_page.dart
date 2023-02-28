import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login_signup_page/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login/Register'),
          elevation: 2,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String? admin;
  String? customer;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter First Name',
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Last Name',
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Email Adress',
                labelText: 'Email Adress',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Password',
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Confirm Password',
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
          padding: const EdgeInsets.all(20),
    child:
    Column(
    children: [

    const Text("Are you A..?", style: TextStyle(
    fontSize: 18
    ),),

    const Divider(),

    RadioListTile(
    title: const Text("Admin"),
    value: "Admin",
    groupValue: admin,
    onChanged: (value){
    setState(() {
    admin = value.toString();
    });
    },
    ),
      RadioListTile(
        title: const Text("Customer"),
        value: "Customer",
        groupValue: customer,
        onChanged: (value){
          setState(() {
            customer = value.toString();
          });
        },
      ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Sign Up',style: TextStyle(fontSize: 20),),
                onPressed: () {

                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Already Have Account?'),
              TextButton(child: const Text('Sign In',style: TextStyle(fontSize: 20),
              ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  }
              )
            ],
          )
        ],
      ),
    );
  }
}
