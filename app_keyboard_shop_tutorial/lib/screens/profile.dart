import 'package:app_keyboard_shop_tutorial/widgets/bottom_menu_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProFile extends StatefulWidget {
  const ProFile({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  _ProFileState createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomMenuBar(),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                // height: 100,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 30, 10, 15),
                  // height: 200,
                  child: Container(
                    alignment: const Alignment(0.0, 5.0),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg"),
                      radius: 65.0,
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 60.0,
              // ),
              const Text(
                "Admin",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),

              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 14, 86, 145),
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              LeftItem(),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromARGB(255, 14, 86, 145),
                              ),
                            ],
                          ))
                    ]),
              )

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         primary: Colors.green, // background
              //         onPrimary: Colors.white, // foreground
              //       ),
              //       onPressed: () {},
              //       child: Ink(
              //         child: Container(
              //           constraints: const BoxConstraints(
              //             maxWidth: 120.0,
              //             maxHeight: 90.0,
              //           ),
              //           alignment: Alignment.center,
              //           child: const Text(
              //             "Being Transported",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 18,
              //                 letterSpacing: 1.0,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     ),
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         primary: Colors.green, // background
              //         onPrimary: Colors.white, // foreground
              //       ),
              //       onPressed: () {},
              //       child: Ink(
              //         child: Container(
              //           constraints: const BoxConstraints(
              //             maxWidth: 120.0,
              //             maxHeight: 90.0,
              //           ),
              //           alignment: Alignment.center,
              //           child: const Text(
              //             "Recently Viewed",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 18,
              //                 letterSpacing: 1.0,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ));
  }
}

class LeftItem extends StatelessWidget {
  const LeftItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Icon(
          Icons.handshake_sharp,
          color: Color.fromARGB(255, 14, 86, 145),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "Recommend to friends",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
