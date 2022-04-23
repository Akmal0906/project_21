
import 'package:flutter/material.dart';
import 'package:project_21/pages/part10_page.dart';

class Part9Page extends StatefulWidget {
  static final String id = 'part9_page';

  @override
  State<Part9Page> createState() => _Part9PageState();
}

class _Part9PageState extends State<Part9Page> {
  void _doLogIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print('Welcome');
    }
  }
  final _formKey=GlobalKey<FormState>();
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Instagram',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Email'),
                ),
                validator: (input)=> !input!.contains('@')? 'please enter valid email':null,
                onSaved: (input)=>_email=input!,
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Password'),
                ),
                validator: (input)=>(input!.length)<6 ?'must be at least 6 character':null,
                onSaved: (input)=>_password=input!,
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                ),
                onPressed: (){
                  _doLogIn();
                },
                child: Text('Log in'),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Do not have account ?'),
                SizedBox(width: 15,),
                GestureDetector(
                  child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold),),
                  onTap: (){
                    Navigator.pushNamed(context, Part10Page.id);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
