import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
          home: ExampleWidget()
      ));
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Circular Popup'), centerTitle: true, backgroundColor: Colors.green.shade400),
        body: Material(
          // color: Colors.black,
          child: Center(
            child: Container(
              height: size.height*0.8,
              width: size.width*0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Icon(Icons.cancel, color: Colors.black)),
                  const Text('New High Score!', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),),
                  SizedBox(height: size.height*0.07,),
                  Stack(
                    children: [
                      bigCircle,
                      const Positioned(
                        child: CircleButton(
                          // iconData: Icons.favorite_border
                        ),
                        top: 10.0,
                        left: 130.0,
                      ),
                      const Positioned(
                        child: CircleButton(
                          // iconData: Icons.favorite_border
                        ),
                        top: 27.0,
                        right: 62.0,
                      ),
                      const Positioned(
                        child: CircleButton(
                          // iconData: Icons.favorite_border
                        ),
                        top: 69.0,
                        right: 25.0,
                      ),
                      ///left center
                      const Positioned(
                        child: EmptyCircleButton(
                            // iconData: Icons.timer
                        ),
                        top: 120.0,
                        left: 10.0,
                      ),
                      const Positioned(
                        child: EmptyCircleButton(
                          // iconData: Icons.timer
                        ),
                        top: 60.0,
                        left: 28.0,
                      ),
                      const Positioned(
                        child: EmptyCircleButton(
                          // iconData: Icons.timer
                        ),
                        top: 22.0,
                        left: 70.0,
                      ),
                      ///
                      const Positioned(
                        child: CircleButton(
                          // iconData: Icons.timer
                        ),
                        top: 177.0,
                        right: 20.0,
                      ),
                      const Positioned(
                        child: CircleButton(
                          // iconData: Icons.timer
                        ),
                        bottom: 28,
                        right: 60.0,
                      ),
                      ///Right Center
                      const Positioned(
                        child: CircleButton(
                            // iconData: Icons.place
                        ),
                        top: 120.0,
                        right: 10.0,
                      ),

                      ///bottom center
                      const Positioned(
                        child: EmptyCircleButton(
                            // iconData: Icons.local_pizza
                        ),
                        top: 240.0,
                        left: 130.0,
                      ),
                      const Positioned(
                        child: EmptyCircleButton(
                          // iconData: Icons.local_pizza
                        ),
                        top: 220.0,
                        left: 72.0,
                      ),
                      const Positioned(
                        child: EmptyCircleButton(
                          // iconData: Icons.local_pizza
                        ),
                        top: 178.0,
                        left: 30.0,
                      ),
                      ///center Image
                      const Positioned(
                        child: CircleAvatar(
                          radius: 45,
                            // minRadius: 35,
                            // maxRadius: 45,
                            backgroundImage: AssetImage('assets/images/pic.jpeg'),),
                        top: 100.0,
                        left: 110.0,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height*0.03,),
                  const Text('You got 6 of 12 correct!', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),),
                  const Text('That\'s your best so far.', style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.normal),),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: AlignmentDirectional.center,
                    width: size.width*0.35,
                    height: size.height*0.05,
                    decoration: BoxDecoration(
                        color: Colors.green.shade400,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: const Text('Share', style: const TextStyle(color: Colors.white),),
                  ),
                  const Expanded(child: SizedBox()),
                  const Text('Continue watching', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.normal),),
                  const SizedBox(height: 10,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  // final IconData? iconData;
  const CircleButton({Key? key,
    // this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.green.shade400,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}
class EmptyCircleButton extends StatelessWidget {
  // final IconData? iconData;
  const EmptyCircleButton({Key? key,
    // this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        // color: Colors.green.shade400,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade400),
      ),
    );
  }
}
Widget bigCircle = Container(
  width: 300.0,
  height: 300.0,
  decoration: const BoxDecoration(
    // color: Colors.orange,
    shape: BoxShape.circle,
  ),
);