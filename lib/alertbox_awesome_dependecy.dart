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
  State<awesome> createState()=> Awesomestate();
}
class Awesomestate extends State<awesome>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightGreen[300],
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AnimatedButton(
                      text: "WARNING",color: Colors.red,width: 200,
                      pressEvent: ()async{
                        final dismissmode = await AwesomeDialog(
                          context: context,
                          dialogType: DialogType.noHeader,
                          buttonsBorderRadius: BorderRadius.all(Radius.circular(2),),
                          animType: AnimType.bottomSlide,
                          title: "Alert !!",
                          titleTextStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                          desc: "are you sure you want to exit..?", // second title in the box
                          showCloseIcon: true,
                          btnCancelOnPress: (){},
                          btnOkOnPress: (){},
                          autoDismiss: false,
                          onDismissCallback: (type){
                            Navigator.of(context).pop(type);
                          },
                          barrierColor: Colors.lightGreen[200],
                        ).show();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Dismiss $dismissmode"),),);
                      }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
