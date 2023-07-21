import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
    color: Colors.black,
    ),
    centerTitle: false,
    title: const Padding(
      padding: EdgeInsets.all(5),
      child: Text("Form Kehadiran"),
    ),
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            SingleChildScrollView(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffCCE5FF)),
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: SvgPicture.asset('assets/icons/info.svg'),
                                ),
                                const Expanded(child: Text(
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                                  "Silahkan lengkapi form terlebih dahulu di bawah ini untuk bisa menggunakan fitur kehadiran.")),
                              ],
                            ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                        "Unit Kerja", textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF0F0F0)),
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                            const Expanded(child: Text(
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                              "Indo Artha Teknologi")),
                          ],
                        ),
                    ),
                  ),
                   const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                        "Public Key", textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF0F0F0)),
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                            Expanded(child: Text(
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                              "3048 00C9 18FA 0241 CF8D EFD5 FD37 EB2D 89B9")),
                          ],
                        ),
                    ),
                  ),
                   const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                        "Private Key", textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF0F0F0)),
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                            Expanded(child: Text(
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                              "0xFFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFE")),
                          ],
                        ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
            width: double.infinity,
            decoration: BoxDecoration(  borderRadius: BorderRadius.circular(16)  ,boxShadow: [
              BoxShadow(
                  color: Color(0x000000).withOpacity(0.1),
                  offset:  const Offset(-1,-1 ),
                  blurRadius: 3,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.outer
              )

            ],),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Color(0xFF00458E)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
                  child: Text(
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xFFFFFFFF)),
                    "Simpan", textAlign: TextAlign.center),
                ),
              ), 
            ),
          )
          ],
        ),
      ),
    );
  }
}