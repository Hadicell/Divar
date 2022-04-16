
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const Divar());
}

class Divar extends StatefulWidget {
  const Divar({Key? key}) : super(key: key);

  @override
  State<Divar> createState() => _DivarState();
}

class _DivarState extends State<Divar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/villa.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.keyboard_control_sharp,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          CupertinoIcons.bookmark,
                          size: 25,
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.arrow_right,
                          size: 25,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "  سه خواب / فول امکانات / رشت   ",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "یک ربع پیش",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Color(0xFF616161),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey[700],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "اتاق",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        getFarsiNumber("3".toString()),
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "ساخت",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        getFarsiNumber("1400".toString()),
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "متراژ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        getFarsiNumber("200".toString()),
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey[700],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Text(
                      "تومان",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Text(
                      getFarsiNumber("5,600,000,000".toString()),
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    const Spacer(),
                    const Text(
                      "قیمت کل",
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    
                  ],
                ),

              ),

              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey[700],
              ),
             
              const Spacer(),
              MaterialButton(
                onPressed: () { },
                height: 50,
                minWidth: double.infinity,
                color: Colors.red[900],
                child: const Text(
                  "اطلاعات تماس",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}


String getFarsiNumber(String number) {
  const en = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const fa = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  en.forEach((element) {
    number = number.replaceAll(element, fa[en.indexOf(element)]);
  });

  return number;
}
