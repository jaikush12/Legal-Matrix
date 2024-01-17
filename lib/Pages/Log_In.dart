import 'package:flutter/material.dart';

class Log_In extends StatelessWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/african-american-employer-holding-employment-agreement-handshaking-candidate-close-up-view 1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(height: h,width: w,
          margin: EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text("Login",style: TextStyle(fontSize: 51,fontWeight: FontWeight.w700,color: Colors.white),),
            SizedBox(height: 10,),
            Text("Login to your account.",style: TextStyle(color: Colors.white,fontSize: 17),),
            SizedBox(height: 20,),
            Wrap(children: [
              Text("E-mail Address",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w700),),
              SizedBox(height: 20,width: w,),
              Container(width: w,height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 40,width: w,),
              Text("Password",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w700),),
              SizedBox(height: 20,width: w,),
              Container(width: w,height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                  ),
                ),
              ),
              SizedBox(height: 20,width: w,),
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Checkbox1(),
                    Text("Remember me",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w400),),
                  ],
                ),
                TextButton(onPressed: (){}, 
                    style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.black)),
                    child: Text("Reset Password",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w700),))
              ],),
            ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(h * 0.06),
                    backgroundColor: Colors.black, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
              ),),
                child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),)),
            SizedBox(height: 20,width: w,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text("Login",style: TextStyle(color: Colors.blue,fontSize: 11,fontWeight: FontWeight.w400),),
              SizedBox(width: 5,),
              Text("With",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w400),),
              SizedBox(width: 5,),
              Text("G",style: TextStyle(color: Colors.blue,fontSize: 11,fontWeight: FontWeight.w400),),
              Text("o",style: TextStyle(color: Colors.red,fontSize: 11,fontWeight: FontWeight.w400),),
              Text("o",style: TextStyle(color: Colors.yellow,fontSize: 11,fontWeight: FontWeight.w400),),
              Text("g",style: TextStyle(color: Colors.blue,fontSize: 11,fontWeight: FontWeight.w400),),
              Text("l",style: TextStyle(color: Colors.green,fontSize: 11,fontWeight: FontWeight.w400),),
              Text("e",style: TextStyle(color: Colors.red,fontSize: 11,fontWeight: FontWeight.w400),),
            ],)
          ],),
        ),
      ),
    );
  }
}

class Checkbox1 extends StatefulWidget {
  const Checkbox1({super.key});

  @override
  State<Checkbox1> createState() => _Checkbox1State();
}

class _Checkbox1State extends State<Checkbox1> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      } else {
        return Colors.white;
      }
    }

    return Checkbox(
      checkColor: Colors.blue,
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: Colors.grey.shade700),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;

        });

      },
    );
  }
}
