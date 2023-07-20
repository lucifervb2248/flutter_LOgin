import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget Email() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 30),

        child: const Text('Email',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )), // Textstyle, Text
      ) // Container

      ,
      const SizedBox(height: 5),

      Center(
        child: Container(
          height: 56,

          width: 300,

          alignment: Alignment.centerLeft,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                const BoxShadow(
                    color: Color.fromRGBO(43, 57, 103, 1),
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]), // BoxShadow, BoxDecoration

          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(Icons.email),
                border: InputBorder.none),
          ), // InputDecoration, TextField
        ), // Container
      ) // Center
    ],
  );
}

Widget Password() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 30),
        child: const Text('Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )), // Textstyle, Text
      ) // Container

      ,
      const SizedBox(height: 5),

      Center(
        child: Container(
          height: 56,

          width: 300,

          alignment: Alignment.centerLeft,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                const BoxShadow(
                    color: Color.fromRGBO(43, 57, 103, 1),
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]), // BoxShadow, BoxDecoration

          child: const TextField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none),
          ), // InputDecoration, TextField
        ), // Container
      ) // Center
    ],
  );
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff81d5ec),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 300.0,
                          width: double.infinity,

                       child: Image(
                      image: AssetImage("assets/loginImage.jpg"),
                      fit: BoxFit.cover),

                        ),
                        Container(height:20,),
                        Email(),
                        Password(),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                          child: Center(
                            child: ElevatedButton(

                              onPressed: () {

                              },
                            style: ElevatedButton.styleFrom(primary:Colors.white,shape: StadiumBorder()),
                              child: const Text('Login',style: TextStyle(color:Colors.deepPurpleAccent,fontSize: 20),),
                            ),
                          ),),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            const Text("Don't have a account?"),
                            TextButton(
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(color:Colors.deepPurpleAccent,fontSize: 20),
                              ),
                              onPressed: () {
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Itim'),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
