import 'package:flutter/material.dart';
import 'package:sample_flutter/login_with_validate.dart';

class loginwithvalidation extends StatefulWidget {
  @override
  State<loginwithvalidation> createState() => loginvalidatestate();
}
class loginvalidstate extends State<loginwithvalidation>
{ GlobalKey <FormState> formkey = GlobalKey();
  bool showpass= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image(image: AssetImage("assets/image.png"),height: 50,width: 50,),
              SizedBox(height: 50,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "user name",
                  hintText: "user name"
                ),
              )
            ],
          ),
        )
      ),
    );
  }



}