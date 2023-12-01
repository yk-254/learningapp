import 'package:flutter/material.dart';
import 'package:get/get.dart';

final TextEditingController _searchController = TextEditingController();
var searchLength = 0.obs;
Widget searchBar() {
  var borderRadius = BorderRadius.circular(
      15); //SmoothBorderRadius.all(SmoothRadius(cornerSmoothing: 120, cornerRadius:17));//cornerRadius: 15 , cornerSmoothing: 4);
  return Obx(() {
    return TextFormField(
      onChanged: (val) {
        searchLength.value = val.length;
      },
      cursorColor: Colors.red[900],
      style: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      textAlignVertical: TextAlignVertical.center,
      controller: _searchController,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.zero,
        filled: true,
        fillColor: Colors.white,
        hintText: ' جست و جو ',
        hintStyle:
            TextStyle(fontSize: 12, color: Colors.grey.shade700),
        prefixIcon: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          child: Icon(
            Icons.search_rounded,
            color: Colors.grey.shade700,
          ),
        ),
        suffixIcon: searchLength.value > 0
            ? InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () => _searchController.clear(),
                child: Icon(
                  Icons.clear,
                  color: Colors.grey.shade700,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 5, 7, 7),
            width: 2,
          ),
          borderRadius: borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 2, 3, 3),
              width: 2,
            ),
            borderRadius:
                borderRadius //SmoothBorderRadius(cornerRadius: 15, cornerSmoothing: 1.1), //BorderRadius.circular(12),
            ),

        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
            // borderRadius: BorderRadius.circular(12),
            borderRadius:
                borderRadius //SmoothBorderRadius(cornerRadius: 15, cornerSmoothing: 1.1),
            ),
      ),
    );
  });
}
