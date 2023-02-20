import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/my_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userInput.toString(),
                      style: const TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    answer.toString(),
                    style: const TextStyle(fontSize: 40, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(children: [
                Row(
                  children: [
                    MyButton(
                      title: "AC",
                      onPress: () {
                        userInput='';
                        answer="";
                        setState(() {
                          
                        });
                        
                      },
                    ),
                    MyButton(
                      title: "00",
                      onPress: () {
                        userInput +="00";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "%",
                      onPress: () {
                        userInput +="%";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "/",
                      onPress: () {
                        userInput +="/";
                        setState(() {
                          
                        });
                      },
                      color: Colors.orange,
                    )
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "7",
                      onPress: () {
                        userInput +="7";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "8",
                      onPress: () {
                        userInput +="8";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "9",
                      onPress: () {
                        userInput +="9";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "x",
                      onPress: () {
                        userInput +="x";
                        setState(() {
                          
                        });
                      },
                      color: Colors.orange,
                    )
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "4",
                      onPress: () {
                       userInput +="4";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "5",
                      onPress: () {
                        userInput +="5";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "6",
                      onPress: () {
                        userInput +="6";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "-",
                      onPress: () {
                        userInput +="-";
                        setState(() {
                          
                        });
                      },
                      color: Colors.orange,
                    )
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "1",
                      onPress: () {
                        userInput +="1";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "2",
                      onPress: () {
                        userInput +="2";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "3",
                      onPress: () {
                        userInput +="3";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "+",
                      onPress: () {
                        userInput +="+";
                        setState(() {
                          
                        });
                      },
                      color: Colors.orange,
                    )
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "0",
                      onPress: () {
                       userInput +="0";
                       setState(() {
                         
                       });
                      },
                    ),
                    MyButton(
                      title: ".",
                      onPress: () {
                        userInput+=".";
                        setState(() {
                          
                        });
                      },
                    ),
                    MyButton(
                      title: "Del",
                      onPress: () {
                        userInput= userInput.substring(0,userInput.length - 1);
                        setState(() {
                          
                        });

                      },
                    ),
                    MyButton(
                      title: "=",
                      onPress: () {
                        equalPress();
                        setState(() {
                          
                        });
                      },
                      color: Colors.orange,
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
  void equalPress(){
    String finaluserInput=userInput;
   finaluserInput= userInput.replaceAll("x","*");
  Parser p = Parser();
  Expression expression =p.parse(finaluserInput);
  ContextModel contextModel =ContextModel();
  double eval =expression.evaluate(EvaluationType.REAL, contextModel);
  answer=eval.toString();
  
}
}
