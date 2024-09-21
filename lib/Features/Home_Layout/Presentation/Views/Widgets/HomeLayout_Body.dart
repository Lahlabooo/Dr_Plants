import 'package:flutter/cupertino.dart';

class HomeLayoutBody extends StatelessWidget {
  const HomeLayoutBody({super.key, required this.body});
  final Widget body ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        body,
      ],
    );
  }
}
