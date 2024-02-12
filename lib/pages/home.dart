import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            _searchField()
          ],
        ));
  }

  Container _searchField() {
    return Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Search Pancake',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                  // start icon
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: ColorFiltered(
                      colorFilter:
                          ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ),
                  ),
                  // end icon
                  suffixIcon: Container(
                    width : 100,
                    child: IntrinsicHeight ( // to use row
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          indent: 10,
                          endIndent: 10,  
                          thickness: 0.5,
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                            child: SvgPicture.asset('assets/icons/filter.svg'),
                          ),
                        )
                  ]))),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Breakfast',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
      backgroundColor: Colors.white,
      elevation: 0.0, //remove shadows
      centerTitle: true,
      // start icon
      leading: GestureDetector(
        onTap: () {
          // Action when leading icon is tapped
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset('assets/icons/leftArrow.svg',
              height: 28, width: 28),
        ),
      ),
      // end icon
      actions: [
        GestureDetector(
          onTap: () {
            // Action when action icon is tapped
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 28,
              width: 28,
            ),
          ),
        )
      ],
    );
  }
}
