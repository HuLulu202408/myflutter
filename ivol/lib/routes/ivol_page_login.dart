import 'package:flutter/material.dart';

class IVOLoginPageWidget extends StatefulWidget {
  const IVOLoginPageWidget({super.key});

  @override
  State<IVOLoginPageWidget> createState() => _IVOLoginPageWidgetState();
}

class _IVOLoginPageWidgetState extends State<IVOLoginPageWidget> 
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: Container(
            padding: EdgeInsets.all(12),
            // backgroundColor: Color.from(alpha: 1, red: 81/255.0, green: 137/255.0, blue: 247/255.0),
            // title: Text("Login",style: TextStyle(color: Colors.white,fontFamily: '.SF Pro Text',fontSize: 22,fontWeight: FontWeight.w600),),
            child: GestureDetector(
              child: Image.asset('assets/images/navBack.png',
              fit: BoxFit.contain),
              onTap: () => Navigator.pop(context),
            
           ),
           
          ),
          ),
          body: Stack(

            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.from(alpha: 1, red: 81/255.0, green: 137/255.0, blue: 247/255.0),
                    Color.from(alpha: 1, red: 201/255.0, green: 222/255.0, blue: 247/255.0),

                  ]),
                  // image: DecorationImage(image: AssetImage('assets/images/iVolTitleIcon.png'),fit: BoxFit.fill),
                ),
              ),
              SingleChildScrollView(
                // controller: controller,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/iVolTitleIcon.png'),
                          fit: BoxFit.scaleDown),
                      ),

                    )

                  ],
                ),
              ),
            ],
            ),
          );
  }
}