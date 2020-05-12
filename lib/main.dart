import 'package:flutter/material.dart';

void main()
{
  runApp(MyCal());
}

class MyCal extends StatefulWidget {
  @override
  _MyCalState createState() => _MyCalState();
}

class _MyCalState extends State<MyCal> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  int _a=0,_b=0,_c=0;
  void _add()
  {
    setState(() {
      _c=_a+_b;
    });

  }

  void _sub()
  {
    setState(() {
      _c=_a-_b;
    });
  }
  void _mul()
  {
    setState(() {
      _c=_a*_b;
    });
  }
  void _div()
  {
    setState(() {
     // _c=_a/(_b);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            //image: DecorationImage(image: AssetImage(assetName))
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        controller:fnum,
                        decoration: InputDecoration(
                          hintText: "First Number",
                          border: OutlineInputBorder()

                        ),
                      ),
                      SizedBox(height: 20.0,),
                      TextField(
                        controller: snum,
                        decoration: InputDecoration(
                          hintText: "Second number",
                          border: OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      RaisedButton(

                          child: Text("Add "),
                          onPressed:()
                          {
                            _a=int.parse(fnum.text);
                            _b=int.parse(snum.text);
                            _add();
                          }

                      ),
                      SizedBox(height: 20.0,),
                      RaisedButton(
                          child: Text("Subtract"),
                          onPressed:()
                      {
                        _a=int.parse(fnum.text);
                        _b=int.parse(snum.text);
                        _sub();
                      }
                      ),
                      SizedBox(height: 15,),
                      
                    ],
                  )
              ),
            ],

          ),

        ),
      ),
    );
  }
}
