import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  void trysubmit(){
    final isvalid = _formKey.currentState!.validate(); //to check all the validators of form
    if(!isvalid){
      _formKey.currentState!.save();
      submitForm();
    }
    else{
      print('Error');
    }
  }


  submitForm(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Widget'),),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(child:Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter first name'
                ),
                key: ValueKey('firstname'),
                validator: (value){
                  if(value.toString().isEmpty){
                    return 'First Name should not be empty';
                  }
                  else{
                    return null;
                  }
                },onSaved: (value){
                  firstname = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter last name'
                ),
                key: ValueKey('lastname'),
                validator: (value){
                  if(value.toString().isEmpty){
                    return 'Last Name should not be empty';
                  }
                  else{
                    return null;
                  }
                },onSaved: (value){
                  lastname = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter email'
                ),
                key: ValueKey('email'),
                validator: (value){
                  if(value.toString().isEmpty){
                    return 'Email Name should not be empty';
                  }
                  else{
                    return null;
                  }
                },onSaved: (value){
                  email = value.toString();
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password'
                ),
                key: ValueKey('password'),
                validator: (value){
                  if(value.toString().isEmpty || value.toString().length >= 6){
                    return 'Invalid Password';
                  }
                  else{
                    return null;
                  }
                },onSaved: (value){
                  password = value.toString();
                },
              ),
              TextButton(onPressed: (){}, child: Text('Submit'))
            ],
          ) ,
          key: _formKey,),
        ),
      ),
    );
  }
}