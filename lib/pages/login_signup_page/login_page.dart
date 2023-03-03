import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/screen_dashboard.dart';
import 'package:shopping_app/pages/login_signup_page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF151026),
        ),
      ),
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 425,
        child: Card(
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
          children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign In & Sign Up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.red,
                //thickness: 5,
                indent: 200,
                endIndent: 200,
              ),
              const SizedBox(
                height: 20,
              ),
            const Divider(
              color: Colors.red,
              thickness: 5,
            ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Login to your account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10.0,),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                    hintText: 'Enter Email', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[500],
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenDashboard()),
                      );
                    },
                    child: const Text('Login'),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does Not Have Account?'),
                  TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20,color: Colors.green),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      })
                ],
              )
          ],
        ),
            )),
      ),
    );
  }
}
