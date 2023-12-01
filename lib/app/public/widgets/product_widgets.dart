import 'package:flutter/material.dart';
import 'package:learningapp/app/public/theme/pubtheme.dart';

class ProductWidgets {
  
  static Widget productTags(String tag, {Function()? onTap}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.red,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Text(
                tag,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Icon(
                Icons.close,
                size: 15,
                color: Colors.red,
              )
            ],
          ),
        ),
      ],
    );
  }

  static Widget productColor(String colorTag, String colorHex, {Function()? onTap,bool? enabled=true}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              if (enabled!)
              Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 15,
                    color: Colors.red,
                  ),
              SizedBox(height: 10),
                ],
              ),
              Text(
                colorTag,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Color(int.parse(colorHex)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget addPictures(Function() onTap) {
    return InkWell(
      onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade100,
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text("افزودن تصویر"),
            ],
          ),
        ),
      
    );
  }
}
