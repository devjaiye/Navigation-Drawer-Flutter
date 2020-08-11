import "package:flutter/material.dart";

class OtherPage extends StatelessWidget{

  final String pageTextChanged;
  OtherPage(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged),
      ),
    );
  }


}
