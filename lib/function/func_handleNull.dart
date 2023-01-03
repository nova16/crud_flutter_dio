import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

handle(message){
    var handleNull = Fluttertoast.showToast(
        msg: message.toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green[400],
        textColor: Colors.white,
    );
    return handleNull;
}