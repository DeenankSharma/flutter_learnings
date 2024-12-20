import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Snackbar'),),
    body:  Container(
      child: Center(
        child: ElevatedButton(
          onPressed: (){
            final snackbar = SnackBar(
              action: SnackBarAction(label: 'Undo',textColor: Colors.blue, onPressed:(){} ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              behavior: SnackBarBehavior.floating,
              duration:Duration(microseconds: 3000),
              backgroundColor: Colors.red,
              content: Text('This is an error'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }, 
          child: Text('Show Snack Bar')),
      ),
    ));
  }
}