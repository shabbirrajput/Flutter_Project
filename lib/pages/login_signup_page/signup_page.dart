import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/screen_dashboard.dart';
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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurpleAccent,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const LoginPage()),
            );
          }, icon: const Icon(Icons.arrow_back)),
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
  bool isAdmin = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign Up',
              style:
              TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset("assets/images/sign_up.png",height: 200,width: 200,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Create an account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter First Name',
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
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Email Address',
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
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: const [
              Text('Are you a..?'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      isAdmin = true;
                    });
                  },
                  icon: Icon(isAdmin
                      ? Icons.radio_button_on
                      : Icons.radio_button_off)),
              const Text("Admin"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isAdmin = false;
                        });
                      },
                      icon: Icon(isAdmin
                          ? Icons.radio_button_off
                          : Icons.radio_button_on)),
                  const Text("Customer")
                ],
              ),
            ],
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenDashboard()),
                  );
                },
                child: const Text('SignUp'),
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  }),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      shape: const CircleBorder()),
                  child: Image.asset("assets/icons/google_sign_in.png",height: 60,width: 60,),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      shape: const CircleBorder()),
                  child: Image.asset("assets/icons/facebook.png",height: 60,width: 60,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
