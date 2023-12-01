import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<Map<String, String>> items;
  final Map<String, String> value;
  final Function(Map<String, String>?) onChange;
  final double? height;
  final double? width;
  const CustomDropDownButton(
      {super.key,
      required this.items,
      required this.value,
      required this.onChange,
      this.height = 40,
      this.width = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton<Map<String, String>>(
        style: TextStyle(color: Colors.black),
        underline: Divider(color: Colors.transparent),
        onChanged: onChange,
        items: items
            .map<DropdownMenuItem<Map<String, String>>>(
              (e) => DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 30),
                  child: Text(
                    e["val"]!,
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ),
                value: e,
              ),
            )
            .toList(),
        value: value,
      ),
    );
  }
}
