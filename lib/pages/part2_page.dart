import 'package:flutter/material.dart';
class Part2Page extends StatefulWidget {
static final String id='part2_page';

  @override
  State<Part2Page> createState() => _Part2PageState();
}

class _Part2PageState extends State<Part2Page> {
  void _doSignIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
    print('Welcome');
    }
  }
  final _formKey=GlobalKey<FormState>();
  late String _email,_password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Akmal best man'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (input)=>!input!.contains('@')? 'please enter correct email':null,
              onSaved: (input)=>_email=input!,
            ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                validator: (input)=>input!.length<6? 'Must be at least 6 character':null,
                onSaved: (input)=>_password=input!,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
              ),
              child: Text('Sign in'),
              onPressed: (){ _doSignIn();},
            ),
          ],
        ),
      ),
    );
  }
}
