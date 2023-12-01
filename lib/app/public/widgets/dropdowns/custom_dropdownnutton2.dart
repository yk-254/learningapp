// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:ejaze/app/public/theme/pubtheme.dart';
// import 'package:flutter/material.dart';

// class CustomDropDownButton2 extends StatelessWidget {
//   final Widget head;
//   final List<dynamic> items;
//   const CustomDropDownButton2(
//       {super.key, required this.head, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2(
//         customButton: head,
//         items: items
//             .map((e) => DropdownMenuItem<Row>(
//                 onTap: e["tap"],
//                 value: Row(),
//                 child: SizedBox(
//                   height: 60,width: 100,
//                   child: Row(
//                     children: [
//                       e["icon"],
//                       Text(
//                         e["label"],
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: e["color"] ),
//                       )
//                     ],
//                   ),
//                 )))
//             .toList(),
//         onChanged: (value) {},
//         barrierDismissible: true,
//       ),
//     );
//   }
// }
