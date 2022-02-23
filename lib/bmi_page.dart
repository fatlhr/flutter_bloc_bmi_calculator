// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final TextEditingController _inputWeight = TextEditingController();
  final TextEditingController _inputHeight = TextEditingController();
  final TextEditingController _inputAge = TextEditingController();
  Color color = Color.fromARGB(255, 2, 27, 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Calculated Your\nBody Mass Index",
                style: TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size.fromWidth(
                            MediaQuery.of(context).size.width / 3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Standars",
                        style: TextStyle(color: color),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size.fromWidth(
                            MediaQuery.of(context).size.width / 3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Metrics",
                        style: TextStyle(color: color),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.width / 3,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.red,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.male,
                          size: 30,
                          color: Colors.white,
                        )),
                      )),
                  InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.width / 3,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.red,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.female,
                          size: 30,
                          color: Colors.white,
                        )),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Center(
                        child: Text(
                          "Weight in KG",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Input(input: _inputWeight),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Center(
                        child: Text(
                          "Height in CM",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Input(input: _inputHeight),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Center(
                        child: Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Input(input: _inputAge),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize:
                      Size.fromWidth(MediaQuery.of(context).size.width / 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required TextEditingController input,
  }) : _input = input, super(key: key);

  final TextEditingController _input;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: TextFormField(
        
        controller: _input,
        style: TextStyle(fontSize: 18, color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 57, 144, 76),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 0),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide:
                BorderSide(width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide:
                BorderSide(width: 0),
          ),
          border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 0),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(10)),
              borderSide:BorderSide(width: 0),),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 0),
          ),
        ),
      ),
    );
  }
}
