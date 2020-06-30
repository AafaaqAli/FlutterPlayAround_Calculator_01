import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

List<String> _inputArray;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: LayoutCalculator(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {

            },
          )
        ],
        centerTitle: true,
        title: Text("Calculator"),
      ),
    ),
  ));
}

class HistoryListView extends StatefulWidget {
  @override
  _HistoryListViewState createState() => _HistoryListViewState();
}

class _HistoryListViewState extends State<HistoryListView> {
  var isOdd = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _inputArray.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            child: Center(
              child: Text(_inputArray.elementAt(index)[index]),
            ),
          );
        },
      ),
    );
  }
}

class LayoutCalculator extends StatefulWidget {
  @override
  _LayoutCalculatorState createState() => _LayoutCalculatorState();
}

class _LayoutCalculatorState extends State<LayoutCalculator> {
  var inputString = '';
  var pressedButtonIndex = -1;
  var tempString = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: SingleChildScrollView(
            child: TextFormField(
              readOnly: true,
              showCursor: false,
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: inputString),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Divider(
            color: Colors.grey[600],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //one
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += '1';
                    });
                  },
                ),
              ),
              //Two
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += "2";
                    });
                  },
                ),
              ),
              //three
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += "3";
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black12,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //four
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += '4';
                    });
                  },
                ),
              ),
              //five
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += "5";
                    });
                  },
                ),
              ),
              //six
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += "6";
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black12,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //seven
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "7",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += '7';
                    });
                  },
                ),
              ),
              //eight
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += "8";
                    });
                  },
                ),
              ),
              //nine
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "9",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      pressedButtonIndex = 9;
                      inputString += "9";
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black12,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //clear
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "C",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString = "";
                    });
                  },
                ),
              ),
              //zero
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += "0";
                    });
                  },
                ),
              ),

              //Remove
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "<-",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (inputString != null) {
                        inputString = _removeAtLastIndex(inputString);
                      }
                    });
                  },
                ),
              ), //Remove
            ],
          ),
        ),
        Divider(
          color: Colors.black12,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //Add
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += " + ";
                    });
                  },
                ),
              ),
              //Minus
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += " - ";
                    });
                  },
                ),
              ),
              //Divide
              ButtonTheme(
                minWidth: 60.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "/",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      inputString += " / ";
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black12,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Divider(
                  color: Colors.black12,
                ),
                //Multiply
                ButtonTheme(
                  minWidth: 60.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        inputString += " x ";
                      });
                    },
                  ),
                ),
                //Equal
                ButtonTheme(
                  minWidth: 60.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        inputString = _calculateOutput(inputString);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _calculateOutput(String input) {
    if (input != "") {
      _inputArray.add(input);
    }
    var operatorCounter = 0;
    final history = <String>[];
    var operator = -1;
    var firstNumberEndingIndex = 0,
        secondNumberStartingIndex = 0,
        firstNumber = 0.00,
        secondNumber = 0.00;
    if (input.contains("/") ||
        input.contains("x") ||
        input.contains("-") ||
        input.contains("+")) {
      for (int x = 0; x < input.length; x++) {
        if (input[x].contains("/") ||
            input[x].contains("x") ||
            input[x].contains("-") ||
            input[x].contains("+")) {
          if (input[x].contains("/")) {
            operator = 1;
          } else if (input[x].contains("x")) {
            operator = 2;
          } else if (input[x].contains("+")) {
            operator = 3;
          } else if (input[x].contains("-")) {
            operator = 4;
          }
          firstNumberEndingIndex = x - 1;
          secondNumberStartingIndex = x + 1;
          break;
        }
      }

      firstNumber = double.parse(input.substring(0, firstNumberEndingIndex));
      secondNumber = double.parse(
          input.substring(secondNumberStartingIndex, input.length));

      if (operator == 1) {
        history.add("$firstNumber / $secondNumber");
        return (firstNumber / secondNumber).toString();
      } else if (operator == 2) {
        history.add("$firstNumber x $secondNumber");
        return (firstNumber * secondNumber).toString();
      } else if (operator == 3) {
        history.add("$firstNumber + $secondNumber");
        return (firstNumber + secondNumber).toString();
      } else if (operator == 4) {
        history.add("$firstNumber - $secondNumber");
        return (firstNumber - secondNumber).toString();
      }
    } else {
      return input;
    }
  }

  String _removeAtLastIndex(String input) {
    var tempString = '';
    for (int x = 0; x < input.length; x++) {
      if (x == input.length - 1) {
        break;
      } else {
        tempString += input[x];
      }
    }

    return tempString;
  }
}


