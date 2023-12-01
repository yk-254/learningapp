import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/salepack_controller.dart';

class SalepackView extends GetView<SalepackController> {
   final List<String> packageImages = [
    'assets/tests/sale1.png',
    'assets/tests/sale2.png',
    'assets/tests/sale3.png',
  ];

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(



          body: LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final screenHeight = constraints.maxHeight;
      return Stack(children: [
        Container(),
        // Positioned(
        //   top: -70,
        //   right: -70,
        //   child: ColorFiltered(
        //     colorFilter: ColorFilter.mode(
        //        Color(0xff2C2C2C)
        //           .withOpacity(0.3), // شفافیت مورد نظر را اینجا تعیین کنید
        //       BlendMode.dstATop,
        //     ),
        //     child: Container(
        //       width: 350,
        //       height: 350,
        //       decoration: const BoxDecoration(
        //         color:  Color(0xff2C2C2C),
        //         image: DecorationImage(
        //           image: AssetImage('assets/bg/bg.png'),
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Stack(
          children: [
            Container(
              child: PageView.builder(
                controller: _pageController,
                itemCount: packageImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Container(
                        color:  Color.fromARGB(0, 44, 44, 44),
                        
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                          child: Image.asset(
                            packageImages[index],
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: IconButton(
                onPressed: () {
                  if (_pageController.page != 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  if (_pageController.page != packageImages.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color(0xffFF8787),
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255), width: 2),
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed("/home");
                  },
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ]);
    })));
  }
}
