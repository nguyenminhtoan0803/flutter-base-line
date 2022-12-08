import 'package:flutter/material.dart';

class AlertDialogInfor extends StatefulWidget {
   final String title;
   final String content;
   final Widget? buttonContinue;
   final Widget? buttonCancel;

   //constructor
   const AlertDialogInfor({Key? key, required this.title, required this.content, this.buttonCancel, this.buttonContinue})
       : super(key: key);

  @override
  _AlertDialogInforState createState() => _AlertDialogInforState();
}

class _AlertDialogInforState extends State<AlertDialogInfor> {
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title:  Text(widget.title),
          content: Text(widget.content),
          actions: <Widget>[


          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}

class AlertDialogError extends StatefulWidget {
  final String title;
  final String content;
  final Widget? buttonContinue;
  final Widget? buttonCancel;

  //constructor
  const AlertDialogError(this.buttonCancel, this.buttonContinue,{Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  _AlertDialogError createState() => _AlertDialogError();
}

class _AlertDialogError extends State<AlertDialogError> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.redAccent,
          title:  Text(widget.title),
          content: Text(widget.content),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
