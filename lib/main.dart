import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'file_handle_api.dart';
import 'constants.dart';
import 'pdf_creator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invoice PDF Generate',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage() ,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MyProvider.userName  = "";
    MyProvider.userEmail  = "";

    MyProvider.coffeNum = "0";
    MyProvider.blueBerryNum = "0";
    MyProvider.waterNum = "0";
    MyProvider.orangeNum = "0";
    MyProvider.mangoNum = "0";
    MyProvider.lemonNum = "0";
    MyProvider.sum = "0";
    MyProvider.minCharge = "0";
    MyProvider.finalSum = "0";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Drinks Pill',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 20,right: 10,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Client Data",style: TextStyle(fontSize: 25,fontWeight:FontWeight.w700   ),),
              buildPadding(),




              TextField(
                cursorColor: Colors.indigoAccent,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/boy.png",height: 25,width: 25,),
                  labelText: 'Client Name',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.userName = val;
                  });
                },
              ),
              SizedBox(height: 20,),

              TextField(
                cursorColor: Colors.indigoAccent,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/email.png",height: 25,width: 25,),
                  labelText: 'Client Email',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.userEmail = val;
                  });
                },
              ),
              SizedBox(height: 50,),

              Text("Drinks",style: TextStyle(fontSize: 25,fontWeight:FontWeight.w700 )),
              buildPadding(),

              TextField(
                cursorColor: Colors.indigoAccent,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/coffee.png",height: 25,width: 25,),
                  labelText: 'Coffe Num',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.coffeNum = val;
                  });
                },
              ),
              SizedBox(height: 20,),

              TextField(
                cursorColor: Colors.indigoAccent,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/blueberry.png",height: 25,width: 25,),
                  labelText: 'BlueBerry Num',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.blueBerryNum = val;
                  });
                },
              ),
              SizedBox(height: 20,),

              TextField(
                cursorColor: Colors.indigoAccent,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/water-bottle.png",height: 25,width: 25,),
                  labelText: 'Water Num',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.waterNum = val;
                  });
                },
              ),
              SizedBox(height: 20,),

              TextField(
                cursorColor: Colors.indigoAccent,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/orange.png",height: 25,width: 25,),
                  labelText: 'Orange Num',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.orangeNum = val;
                  });
                },
              ),
              SizedBox(height: 20,),

              TextField(
                cursorColor: Colors.indigoAccent,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/mango.png",height: 25,width: 25,),
                  labelText: 'Mango Num',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.mangoNum = val;
                  });
                },
              ),
              SizedBox(height: 20,),

              TextField(
                cursorColor: Colors.indigoAccent,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigoAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                  icon: Image.asset("assets/lemon.png",height: 25,width: 25,),
                  labelText: 'Lemon Num',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  //suffixIcon: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val){
                  setState(() {
                    MyProvider.lemonNum = val;
                  });
                },
              ),

              const SizedBox(height: 30.0),
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(primary: Colors.indigo,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Generate Pill',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.picture_as_pdf,
                        size: 20.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                onPressed: () async {
                  FocusScope.of(context).unfocus();
                  MyProvider.sum = ((double.parse(MyProvider.coffeNum) * 5)+(double.parse(MyProvider.blueBerryNum) * 10)+(double.parse(MyProvider.waterNum) * 3)+
                      (double.parse(MyProvider.orangeNum) * 8)+(double.parse(MyProvider.mangoNum) * 90)+(double.parse(MyProvider.lemonNum) * 15)).toStringAsFixed(2);

                  MyProvider.finalSum =
                  (double.parse(MyProvider.coffeNum) * 0.95).toStringAsFixed(2);

                  MyProvider.minCharge =
                  (double.parse(MyProvider.sum) * 0.05).toStringAsFixed(2);

                  MyProvider.finalSum =
                  (double.parse(MyProvider.sum) + double.parse(MyProvider.minCharge)).toStringAsFixed(2);

                  // generate pdf file
                  final pdfFile = await PdfInvoiceApi.generate();

                  // opening the pdf file
                  FileHandleApi.openFile(pdfFile);
                },
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
              padding: const EdgeInsets.only(top: 6,bottom: 10),
              child: Divider(endIndent: 50,indent: 50,color: Colors.blueGrey[500],),
            );
  }

  TextField buildTextField(String label , String value, String image) {
    return TextField(
      cursorColor: Colors.indigoAccent,

              decoration: InputDecoration(

                border:  OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),


                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.indigoAccent,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),


                icon: Image.asset(image,height: 25,width: 25,),
                labelText: label,
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                //suffixIcon: ,
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.grey,
                   ),
                   borderRadius: BorderRadius.circular(10.0),
                 ),
              ),
              onChanged: (val){
                setState(() {
                  value = val;
                });
              },
            );
  }
}
