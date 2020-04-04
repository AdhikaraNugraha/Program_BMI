import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        //backgroundColor: Colors.blue[50],
        appBar: AppBar(
          //backgroundColor: Colors.blue[900],
          centerTitle: true,
          leading: Icon(
            Icons.favorite,
            color: Colors.blue,
          ),
          title: Text('AYO HITUNG BMI KALIAN!'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('assets/icon-timbangan-png-1.png',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('cm'),

                              filled: true,
                              hintText: 'Tinggi'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              berat = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('kg'),
                              filled: true,
                              hintText: 'Berat'),
                        ),
                      ),
                    ],
                  )),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat)),
                    );
                  },
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.lightBlue,
                  // textColor: Colors.white,
                  child: Text(
                    'HITUNG BMI',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),



            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          //color: Colors.transparent,
          child: Container(
            height: 60,
            color: Colors.black54,
            alignment: Alignment.center,
            child: Text(
              'Design & Developed By Adhikara Nugraha',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}