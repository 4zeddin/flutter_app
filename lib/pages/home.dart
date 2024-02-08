import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast', 
          style: TextStyle(color: Colors.black, fontSize:18, fontWeight: FontWeight.bold)
        ),
        backgroundColor: Colors.white,
        elevation: 0.0, //remove shadows
        centerTitle: true,
        leading: Container(
          child: SvgPicture.asset('assets/icons/leftArrow.svg',
          height: 28,
          width: 28,
          ),
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
