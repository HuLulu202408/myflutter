import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'utils/brand.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({super.key});
  @override
  State<StatefulWidget> createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  //
  final appBarheight = 0;
  //
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final  FocusNode _accountFocusNode = FocusNode();
    final  FocusNode _passwordFocusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    
    _accountController.addListener((){});
    _passwordController.addListener((){});
  }
  @override
  void dispose() {
   _endEdit();
    super.dispose();
  }
  void _onTapNullContentArea(){
    _endEdit();
  }
  //
  void _onTapRegisterSpan() {
    print("to Register");
  }

  //
  void _onClickAccountLoginButton() {
    print("_onClickAccountLogin");
    _endEdit();
    print("account:${_accountController.text},password:${_passwordController.text}");

  }

  void _onAppleLoginButton() {
    print("_onClickAccountLogin");
  }

  void _onTapTermsRead(){
    // _accountController.
  }

  void _endEdit(){
    // _accountFocusNode.unfocus();
    // _passwordFocusNode.unfocus();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  //
  Widget _bottomLoginActionWigets() {
    return Container(
      margin: EdgeInsetsGeometry.fromLTRB(25.0, 66.0, 25.0, 0),
      child: Column(
        children: [
          Container(
            height: 56.0,
            width: double.infinity,
            padding: EdgeInsets.all(0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: _onClickAccountLoginButton,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontFamily: '.SF Pro Text',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 56.0,
            width: double.infinity,
            padding: EdgeInsets.all(0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: _onClickAccountLoginButton,
              child: Text(
                "Continue with Apple",
                style: TextStyle(
                  fontFamily: '.SF Pro Text',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110.0),
            child: Text.rich(
                 TextSpan(
                  style: TextStyle(
                    
                  ),
                  children: [
                    TextSpan(text: "By Continuing you agree with ",style: TextStyle(
                                   fontFamily: '.SF Pro Text',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                 ),
                 ), 
                  TextSpan(
                    text: "Terms of Service & Privacy Policy",
                    style: TextStyle(
                                   fontFamily: '.SF Pro Text',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.black,
                        decorationThickness: 1.5,
                        color: Colors.black,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = _onTapTermsRead,
                    ), 
                  ]
                 )
                ),

          ),

        ],
      ),
    );
  }

  //
  Widget _creatFiled(TextEditingController controller,FocusNode focusNode,String hintText,TextInputAction textInputAction) {
    return Padding(
      padding: EdgeInsetsGeometry.zero,
      child: Container(
        height: 56.0,
        padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
        decoration: const BoxDecoration(
          color: Color.from(
            alpha: 0.5,
            red: 255.0 / 255,
            green: 255.0 / 255,
            blue: 255.0 / 255,
          ),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        child: TextField(
          focusNode: focusNode,
          onSubmitted: (value) {
             focusNode.unfocus();
          },
          onEditingComplete: () {
            focusNode.unfocus();
          },
          autofocus: true,
          textInputAction: textInputAction,
          controller: controller,
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical(y: 0),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(fontFamily: '.SF Pro Text', fontSize: 14.0),
            border: InputBorder.none,
            // enabledBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Color.from(alpha: 0, red: 0, green: 0, blue: 0),
            //   ),
            // ),
            // focusedBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Color.from(alpha: 0, red: 0, green: 0, blue: 0),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: IVOLBrandUtil.brandAppBarWithContex(context, "Login"),
      body: Stack(
        
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _endEdit(),
            child: Container(
              child: ListView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.zero,
                    child: SizedBox(
                      height: 166.0,
                      child: Image.asset("assets/images/iVolTitleIcon.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 16, 25, 0),
                    child: SizedBox(
                      height: 176.0,
                      child: Column(
                        children: [
                          _creatFiled(_accountController,_accountFocusNode,"Please enter account",TextInputAction.next),
                          SizedBox(height: 16.0),
                          _creatFiled(_passwordController,_passwordFocusNode,"Please enter password",TextInputAction.done),
                          Container(
                            // padding: EdgeInsetsGeometry.zero,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsetsGeometry.fromLTRB(8, 16, 2, 0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Don’t have account?",
                                    style: TextStyle(
                                      fontFamily: '.SF Pro Text',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.from(
                                        alpha: 1,
                                        red: 30 / 255.0,
                                        green: 28 / 255.0,
                                        blue: 28 / 255.0,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Register now",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = _onTapRegisterSpan,
                                    style: TextStyle(
                                      fontFamily: '.SF Pro Text',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color.from(
                                        alpha: 1,
                                        red: 30 / 255.0,
                                        green: 28 / 255.0,
                                        blue: 28 / 255.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _bottomLoginActionWigets(),
                ],
              ),
          ),
          )
        ],
      ),
    );
  }
}






//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: IVOLBrandUtil.brandAppBarWithContex(context, "Login"),
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/background.png"),
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(
//               0,
//               MediaQuery.of(context).padding.top + 54.0,
//               0,
//               0,
//             ),
//             child: MediaQuery.removePadding(
//               context: context,
//               removeTop: true,
//               child: ListView(
//                 keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsGeometry.zero,
//                     child: Container(
//                       height: 166.0,
//                       child: Image.asset("assets/images/iVolTitleIcon.png"),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(25, 16, 25, 0),
//                     child: Container(
//                       height: 176.0,
//                       child: Column(
//                         children: [
//                           _creatFiled("Please enter account"),
//                           SizedBox(
//                             height: 16.0,
//                           ),
//                           _creatFiled("Please enter password"),
//                           Container(
//                             // padding: EdgeInsetsGeometry.zero,
//                             alignment: Alignment.bottomLeft,
//                             margin: EdgeInsetsGeometry.fromLTRB(8, 16, 2, 0),
//                             child:Text.rich(
                            
//                               TextSpan(children: [
//                               const TextSpan(text: "Don’t have account?",style: TextStyle(
//                                 fontFamily: '.SF Pro Text',
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.w400,
//                                 color: Color.from(alpha: 1, red: 30/255.0, green: 28/255.0, blue: 28/255.0)
//                               )),
//                               TextSpan(text: "Register now",
//                                 recognizer: TapGestureRecognizer()..onTap = _onTapRegisterSpan,
//                                 style: TextStyle(
//                                 fontFamily: '.SF Pro Text',
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color.from(alpha: 1, red: 30/255.0, green: 28/255.0, blue: 28/255.0)
//                               )),
//                             ]
//                             )
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

