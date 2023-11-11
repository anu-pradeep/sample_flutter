import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: awesome(),));
}
class awesome extends StatefulWidget
{
  @override
  State<awesome> createState()=> alertawestate();
}
class alertawestate extends State<awesome>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AnimatedButton(
                      text: "warning box",color: Colors.deepPurple,width: 150,
                      pressEvent: (){
                        AwesomeDialog(context: context,
                          dialogType: DialogType.info,
                          //borderSide: BorderSide(color: Colors.black,width: 30,),

                          buttonsBorderRadius: BorderRadius.all(Radius.circular(20),),
                          dismissOnTouchOutside: true,
                          dismissOnBackKeyPress: false,
                          onDismissCallback: (type) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Dismissed by $type'),
                              ),
                            );
                          },
                          headerAnimationLoop: false,
                          animType: AnimType.bottomSlide,
                          title: "question",
                          desc: "description here...",
                          showCloseIcon: true,
                            btnCancelOnPress: (){},
                          btnOkOnPress: (){}
                        ).show();
                      },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}