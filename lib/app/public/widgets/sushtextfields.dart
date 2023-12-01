import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learningapp/app/public/theme/pubtheme.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SushTextField extends StatelessWidget {
  final double? width;
  final double? height;
  final int? length;
  final TextEditingController? controller;
  final String hint;
  final String? info;
  final Color? infoColor;
  final Function(String?)? change;
  final Function(String?)? submit;
  const SushTextField({
    super.key,
    this.width,
    this.height,
    this.length = 255,
    this.controller,
    required this.hint,
    this.info,
    this.infoColor,
    this.change,
    this.submit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hint,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
              ),
              SizedBox(width: 5),
              if (info != null)
                Text(
                  info!,
                  style: TextStyle(
                      color: infoColor ?? theme.primaryColor, fontSize: 13),
                )
            ],
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            controller: controller,
            validator: (val) {
              if (val!.length < 3) {
                return "کمتر از 3 کاراکتر نمی تواند باشد";
              }
              if (val.length > length!) {
                return "بیشتر از $length کاراکتر نمی تواند باشد";
              }
              return null;
            },
            onChanged: change,
            onFieldSubmitted: submit,
            decoration: InputDecoration(
                hintText: hint,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(fontSize: 12)),
          ),
        ),
      ],
    );
  }
}

class SushUserNameField extends StatelessWidget {
  final double? width;
  final double? height;
  final int? length;
  final TextEditingController? controller;
  final String hint;
  final String? info;
  final Color? infoColor;
  final Function(String?)? change;
  final Function()? complete;
  final Widget sub;
  const SushUserNameField({
    super.key,
    this.width,
    this.height,
    this.length = 255,
    this.controller,
    required this.hint,
    this.info,
    this.infoColor,
    this.change,
    this.complete,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hint,
                style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
              ),
              SizedBox(width: 5),
              if (info != null)
                Text(
                  info!,
                  style: TextStyle(
                      color: infoColor ?? theme.primaryColor, fontSize: 13),
                )
            ],
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            controller: controller,
            validator: (val) {
              if (val!.length < 5) {
                return "کمتر از 5 کاراکتر نمی تواند باشد";
              }
              if (val.length > length!) {
                return "بیشتر از $length کاراکتر نمی تواند باشد";
              }
              return null;
            },
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r"[a-z][a-z0-9]*"))
            ],
            onChanged: change,
            onEditingComplete: complete,
            decoration: InputDecoration(
                hintText: hint,
                counter: sub,
                counterStyle: TextStyle(fontSize: 12, color: Colors.red),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(fontSize: 12)),
          ),
        ),
      ],
    );
  }
}

class SushPhoneField extends StatelessWidget {
  final double? width;
  final double? height;
  final int? length;
  final TextEditingController? controller;
  final String hint;
  final Function(String?)? change;
  const SushPhoneField({
    super.key,
    this.width,
    this.height,
    this.length = 150,
    this.controller,
    required this.hint,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            hint,
            style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            controller: controller,
            maxLength: 10,
            validator: (val) {
              if (val!.length < 3) {
                return "کمتر از 3 کاراکتر نمی تواند باشد";
              }
              if (val.length > length!) {
                return "بیشتر از $length کاراکتر نمی تواند باشد";
              }
              return null;
            },
            onChanged: change,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: hint,
              counterText: "",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintStyle: TextStyle(fontSize: 12),
              prefixIcon: Icon(Icons.phone_android),
              suffixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "98 +".toPersianDigit(),
                    style: TextStyle(
                        color: theme.primaryColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SushRichTextField extends StatelessWidget {
  final double? width;
  final double? height;
  final int? minline;
  final int? maxline;
  final int? length;
  final TextEditingController? controller;
  final String hint;
  final Function(String?)? change;
  const SushRichTextField({
    super.key,
    this.width,
    this.height,
    this.minline = 5,
    this.maxline = 10,
    this.length = 150,
    this.controller,
    required this.hint,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            hint,
            style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            controller: controller,
            minLines: minline,
            maxLines: maxline,
            validator: (val) {
              if (val!.length < 3) {
                return "کمتر از 3 کاراکتر نمی تواند باشد";
              }
              return null;
            },
            onChanged: change,
            decoration: InputDecoration(
                hintText: hint,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintStyle: TextStyle(fontSize: 12)),
          ),
        ),
      ],
    );
  }
}

class SushPassword extends StatelessWidget {
  final double? width;
  final double? height;
  final int? length;
  final TextEditingController? controller;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscure;
  final Function(String?)? change;
  const SushPassword({
    super.key,
    this.width,
    this.height,
    this.length = 150,
    this.controller,
    required this.hint,
    this.change,
    required this.prefix,
    required this.suffix,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            hint,
            style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            controller: controller,
            validator: (val) {
              if (val!.length < 3) {
                return "کمتر از 3 کاراکتر نمی تواند باشد";
              }
              return null;
            },
            onChanged: change,
            obscureText: obscure,
            decoration: InputDecoration(
                hintText: hint,
                prefixIcon: prefix,
                suffixIcon: suffix,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintStyle: TextStyle(fontSize: 12)),
          ),
        ),
      ],
    );
  }
}

class SushVerifyField extends StatelessWidget {
  final double? width;
  final double? height;
  final int? length;
  final TextEditingController? controller;
  final String hint;
  final Function(String?)? change;
  const SushVerifyField({
    super.key,
    this.width,
    this.height,
    this.length = 150,
    this.controller,
    required this.hint,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            hint,
            style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: PinCodeTextField(
            appContext: context,
            length: 6,
            autoFocus: true,
            autoUnfocus: true,
            blinkWhenObscuring: true,
            controller: controller,
            backgroundColor: Colors.transparent,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r"[0-9]*"))
            ],
            validator: (val) {
              if (val!.length < 6) {
                return "کمتر از 6 کاراکتر نمی تواند باشد";
              }
              return null;
            },
          ),
         
        ),
      ],
    );
  }
}
