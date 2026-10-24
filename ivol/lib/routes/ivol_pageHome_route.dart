
import 'package:flutter/material.dart';

class IVOLPageHomeRoute extends StatelessWidget {
  const IVOLPageHomeRoute({super.key});

  Widget _didLoadHomePage(BuildContext ctx){

    return CustomScrollView(
      slivers: <Widget>[
        // SliverPadding(padding:)
        SliverToBoxAdapter(child: Container(
          margin: EdgeInsets.all(14.0),
          alignment: Alignment.center,
          height: 262.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("Banners"),
        ),
        ),
        SliverPadding(padding: EdgeInsetsGeometry.fromLTRB(20, 10, 20, 10),
        sliver: SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index)=>GestureDetector(
              onTap: (){
                Navigator.pushNamed(ctx, "login");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                width: 44,
                height: 44.0,
              ),
              ),
            ),
          ),
        ),
        )
      ],
    );
    // return GridView.builder(
    //   itemCount: 100,
    //   padding: EdgeInsets.all(10.0),
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //       maxCrossAxisExtent: 100,
    //       mainAxisSpacing: 10,
    //       crossAxisSpacing: 10.0,
    //       // mainAxisExtent: double.infinity,
    //     ),
    //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        
    //   //   crossAxisCount: 2,
    //   //   mainAxisSpacing: 10,
    //   //   crossAxisSpacing: 10,
    //   //   // mainAxisExtent: 500,
    //   //   ), 
    //   itemBuilder: (BuildContext ctx,int index)=>Padding(padding: EdgeInsets.all(5),
    //     child: Container(
    //     padding: EdgeInsets.all(10),
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //       color: Colors.amber,
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     child: Text("abcdefg"*index),
    //   ),
    //   )
    //   );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      // padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueAccent,Colors.white],begin: Alignment.topCenter,end: Alignment.bottomCenter),
      ),
      child:_didLoadHomePage(context),
    );
  }
}


