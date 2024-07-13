import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {



// variable part here ----------


  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  int? result=0, num1=0,num2=0;

  add(){
    setState(() {


      num1 = int.parse(_controller1.text);
      num2 = int.parse(_controller2.text);

      result = num1! + num2! ;
    });
  } /* add function*/
  sub(){
    setState(() {


      num1 = int.parse(_controller1.text);
      num2 = int.parse(_controller2.text);

      result = num1! - num2! ;
    });
  } /* add function*/
  mul(){
    setState(() {


      num1 = int.parse(_controller1.text);
      num2 = int.parse(_controller2.text);

      result = num1! * num2! ;
    });
  } /* add function*/
  div(){
    setState(() {


      num1 = int.parse(_controller1.text);
      num2 = int.parse(_controller2.text);

      result = num1! ~/ num2! ;
    });
  } /* add function*/





  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.white,),
        title: const Text("Calculation",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 15),
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                radius: 72,

                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.black,
                  child:Center(
                      child: Text("$result",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),
            ),


             Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(

                controller: _controller1 ,

                keyboardType: TextInputType.number, /* input type */
                maxLength: 10, /* for textfield length */
                cursorColor: Colors.black, /* cursor color */

                decoration: const InputDecoration(

                  labelText: "Enter First Number", /* hint text */
                  labelStyle: TextStyle(color:Colors.black), /* hint text color */

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide:  BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide:  BorderSide(color: Colors.black),
                  ),







                ),

              ),
            ),

             Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(

                controller: _controller2,

                keyboardType: TextInputType.number, /* input type */
                maxLength: 10, /* for textfield length */
                cursorColor: Colors.black, /* cursor color */

                decoration: const InputDecoration(

                  labelText: "Enter Second Number", /* hint text */
                  labelStyle: TextStyle(color:Colors.black), /* hint text color */

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide:  BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide:  BorderSide(color: Colors.black),
                  ),







                ),

              ),
            ),

            ElevatedButton(onPressed: (){


              add();
             // _controller1.clear();
             // _controller2.clear();


            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, /* button bg color*/
                  elevation: 5,/*button shadow*/
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10) )), /* shape style radius*/
                  minimumSize: const Size(120,50), /* button width & height size change */
                ),
                child:  Text("Calculate {SUM}",style: TextStyle(color: Colors.white),)), /* Button Click and Button Color change */

            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){


              sub();
              // _controller1.clear();
              // _controller2.clear();


            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, /* button bg color*/
                  elevation: 5,/*button shadow*/
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10) )), /* shape style radius*/
                  minimumSize: const Size(120,50), /* button width & height size change */
                ),
                child:  Text("Calculate {SUB}",style: TextStyle(color: Colors.white),)), /* Button Click and Button Color change */

            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){


              mul();
              // _controller1.clear();
              // _controller2.clear();


            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, /* button bg color*/
                  elevation: 5,/*button shadow*/
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10) )), /* shape style radius*/
                  minimumSize: const Size(120,50), /* button width & height size change */
                ),
                child:  Text("Calculate {MUL}",style: TextStyle(color: Colors.white),)), /* Button Click and Button Color change */


            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){


              div();
              // _controller1.clear();
              // _controller2.clear();


            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, /* button bg color*/
                  elevation: 5,/*button shadow*/
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10) )), /* shape style radius*/
                  minimumSize: const Size(120,50), /* button width & height size change */
                ),
                child:  Text("Calculate {DIV}",style: TextStyle(color: Colors.white),)), /* Button Click and Button Color change */






          ],
        ),
      ),














    );
  }
}
