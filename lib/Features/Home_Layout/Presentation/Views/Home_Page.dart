import 'package:flutter/cupertino.dart';
import 'package:planta/Core/Utils/Styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("HomePage",style: Styles.textStyle30,),
    );
  }
}
