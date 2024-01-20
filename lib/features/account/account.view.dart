import 'package:flutter/material.dart';
import 'package:flutter_learn/core/utils/global.colors.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Akun',
          style: TextStyle(
            color: GlobalColor.textColor,
          ),
        ),
        backgroundColor: GlobalColor.mainColor,
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Account Page!',
              style: TextStyle(
                fontSize: 20.0, 
              ),
            ),
          ),
        ],
      ),
    
    );
  }
}
