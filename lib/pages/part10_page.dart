import 'package:flutter/material.dart';

class Part10Page extends StatefulWidget {
  static final String id = 'part10_page';

  @override
  State<Part10Page> createState() => _Part10PageState();
}

class _Part10PageState extends State<Part10Page> {
  late String _name, _email, _password;
  final _formKey = GlobalKey<FormState>();
void _doSignUp(){
  if(_formKey.currentState!.validate()){
    _formKey.currentState!.save();
    print('Welcome');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(label: Text('Name')),
                validator: (input) =>
                    (input!.length) < 5 ? 'must be least 5 character' : null,
                onSaved: (input) => _name = input!,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: TextFormField(
              decoration: InputDecoration(label: Text('Email'),),
              validator: (input)=>!input!.contains('@')?'please enter valid email':null,
              onSaved: (input)=>_email=input!,
            ),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
            child: TextFormField(
              decoration: InputDecoration(label: Text('Password'),),
              validator: (input)=> input!.length<6? 'must be least 6 character':null,
            ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                ),
                onPressed: (){
                  _doSignUp();
                },
                child: Text('Log in'),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have account'),
                SizedBox(width: 10,),
                GestureDetector(
                  child: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold),),
                  onTap: (){
                    Navigator.of(context).pop();
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
