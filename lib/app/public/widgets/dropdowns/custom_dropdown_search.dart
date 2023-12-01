// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';

// class CustomDropDownSearch extends StatelessWidget {
//   final String label;
//   final double? width;
//   final bool? enabled;
//   final List<dynamic> items;
//   final CustomDropItems? selected;
//   final Function(dynamic) onChange;

//   const CustomDropDownSearch({
//     super.key,
//     required this.label,
//     required this.items,
//     required this.selected,
//     required this.onChange,
//     this.width = 200,
//     this.enabled = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: TextStyle(color: Color(0xFF858585), fontSize: 14),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             width: width,
//             child: DropdownSearch<dynamic>(
//               validator: (value) {
//                 if (value == null) {
//                   return "یکی از موارد را انتخاب کنید";
//                 }
//                 return null;
//               },
//               enabled: enabled!,
//               dropdownDecoratorProps: DropDownDecoratorProps(
//                 dropdownSearchDecoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                     hintText: label,
//                     hintStyle: TextStyle(fontSize: 12)),
//               ),
//               popupProps: PopupProps.menu(
//                 showSearchBox: true,
//                 itemBuilder: (context, item, isSelected) => Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
//                   child: Text(
//                     item.name,
//                     style: TextStyle(fontSize: 12),
//                   ),
//                 ),
//                 searchFieldProps: TextFieldProps(
//                   style: TextStyle(fontSize: 12),
//                   decoration: InputDecoration(
//                     hintText: "جست و جو",
//                   ),
//                 ),
//               ),
//               selectedItem: selected?.name,
//               items: items,
//               onChanged: onChange,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CustomDropItems {
//   final String? id;
//   final String name;
//   CustomDropItems({this.id, required this.name});
// }
