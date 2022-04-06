import 'package:flutter/material.dart';


void main() => runApp(MyApp());

//////////////////////////// W I D G E T S //////////////////////////////
class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<String> operators = ["+", "-", "×", "÷"];
  List<String> hist = [];
  var history = "", output = "", answer = 0.0;
  /*  void click1() {
      setState(() {
        if (double.parse(output) != 0.0) {
          output += "1";
        } else {
          output = "1";
        }
      });
    }



  void click2() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "^";
      } else {
        output = "^";
      }
    });
  }

  void click3() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "3";
      } else {
        output = "3";
      }
    });
  }

  void click4() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "4";
      } else {
        output = "4";
      }
    });
  }

  void click5() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "5";
      } else {
        output = "5";
      }
    });
  }

  void click6() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "6";
      } else {
        output = "6";
      }
    });
  }

  void click7() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "7";
      } else {
        output = "7";
      }
    });
  }

  void click8() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "8";
      } else {
        output = "8";
      }
    });
  }

  void click9() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "9";
      } else {
        output = "9";
      }
    });
  }

  void click0() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "0";
      } else {
        output = "0";
      }
    });
  }

  void clickDot() {
    setState(() {
      output += ".";
    });
  }

  void clear() {
    setState(() {
      history = "";
      output = "0";
      answer = 0.0;
      hist = [];
    });
  }

  void sign() {
    setState(() {
      if (double.parse(output) == 0.0) {
      } else {
        if (output[0] == '-') {
          output = output.substring(1);
        } else {
          output = '-' + output;
        }
      }
    });
  }

  void percent() {
    setState(() {
      double percent = 0.0;
      percent = answer / 100;
      history = answer.toString() + " ÷ 100 =";
      output = percent.toString();
    });
  }

  String getTape() {
    return hist.join(" ");
  }

  bool isOperator(String s) {
    return (operators.contains(s));
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s) != null;
  }

  void equals() {
    setState(() {
      if (hist.length <= 3) {
        hist.add(output);
      }
      history = getTape() + " =";
      var opr1, opr2, op;
      opr1 = double.parse(hist.removeAt(0));
      op = hist.removeAt(0);
      opr2 = double.parse(hist.removeAt(0));
      switch (op) {
        case "+":
          answer = opr1 + opr2;
          break;
        case "-":
          answer = opr1 - opr2;
          break;
        case "×":
          answer = opr1 * opr2;
          break;
        case "÷":
          answer = opr1 / opr2;
          break;
        default:
      }
      output = answer.toString();
      hist.insert(0, answer.toString());
    });
  }

  void add() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("+");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void sub() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("-");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void div() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("÷");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void mul() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("×");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent.shade400,
        title: const Text('GreenBot'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(
            padding: EdgeInsets.only(top: 100.0, left: 5.0),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[


                    RawMaterialButton(

                      child: const Text(
                        "CONNECT",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      constraints: const BoxConstraints.tightFor(width: 150.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0)),
                      elevation: 2.0,
                      fillColor: Colors.deepOrangeAccent.shade400,
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 15.0, bottom: 15.0, right: 15.0), onPressed: () {  },
                    ),

                  ]),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RawMaterialButton(

                      child: const Text(
                        "DRILL UP",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      constraints: const BoxConstraints.tightFor(width: 170.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0)),
                      elevation: 2.0,
                      fillColor: Colors.black45,
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 15.0, bottom: 15.0, right: 15.0), onPressed: () {  },
                    ),

                    RawMaterialButton(

                      child: const Text(
                        "DRILL DOWN",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      constraints: const BoxConstraints.tightFor(width: 170.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0)),
                      elevation: 2.0,
                      fillColor: Colors.black45,
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 15.0, bottom: 15.0, right: 15.0), onPressed: () {  },
                    ),

                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[



                    RawMaterialButton(

                      child: const Icon(
                        Icons.expand_less_sharp,
                        size: 35.0,
                      ),
                      shape: const CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.deepOrangeAccent.shade400,
                      padding: const EdgeInsets.all(15.0), onPressed: () {  },
                    ),


                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RawMaterialButton(

                      child: const Icon(
                        Icons.chevron_left_sharp,
                        size: 35.0,
                      ),
                      shape: const CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.deepOrangeAccent.shade400,
                      padding: const EdgeInsets.all(15.0), onPressed: () {  },
                    ),

                    RawMaterialButton(

                      child: const Icon(
                          Icons.stop_sharp,
                          size: 35.0
                      ),
                      shape: const CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.black45,
                      padding: const EdgeInsets.all(15.0),
                      onPressed: () {  },
                    ),

                    RawMaterialButton(

                      child: const Icon(
                        Icons.chevron_right_sharp,
                        size: 35.0,
                      ),
                      shape: const CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.deepOrangeAccent.shade400,
                      padding: const EdgeInsets.all(15.0), onPressed: () {  },
                    ),

                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    RawMaterialButton(

                      child: const Icon(
                        Icons.expand_more_sharp,
                        size: 35.0,
                      ),
                      shape: const CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.deepOrangeAccent.shade400,
                      padding: const EdgeInsets.all(15.0), onPressed: () {  },
                    ),


                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 5.0, bottom: 6.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RawMaterialButton(

                      child: const Text(
                        "WATER",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      constraints: const BoxConstraints.tightFor(width: 170.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0)),
                      elevation: 2.0,
                      fillColor: Colors.black45,
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 15.0, bottom: 15.0, right: 15.0), onPressed: () {  },
                    ),

                    RawMaterialButton(

                      child: const Text(
                        "PLANT",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      constraints: const BoxConstraints.tightFor(width: 170.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0)),
                      elevation: 2.0,
                      fillColor: Colors.black45,
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 15.0, bottom: 15.0, right: 15.0), onPressed: () {  },
                    ),

                  ]),
            ),
          ]),
    );
  }
}

///////////////////////////// A P P  W I D G E T ///////////////////////////
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GreenBot",
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.deepOrange,
          brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
