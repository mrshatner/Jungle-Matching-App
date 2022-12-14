// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoNameBar extends StatefulWidget {
  String label;
  TextEditingController? controller;
  bool? isObscure;
  PersonalInfoNameBar({
    Key? key,
    this.isObscure,
    required this.label,
    this.controller,
  }) : super(key: key);

  @override
  State<PersonalInfoNameBar> createState() => _PersonalInfoNameBarState();
}

class _PersonalInfoNameBarState extends State<PersonalInfoNameBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 160.w,
          height: 100.h,
          color: Colors.transparent,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 40.w, right: 15.w),
              child: TextFormField(
                  obscureText: widget.isObscure ?? false,
                  style: TextStyle(
                      height: 0.9,
                      fontSize: 33.sp,
                      fontFamily: "Calisto",
                      fontWeight: FontWeight.w500),
                  maxLines: 1,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: Text(
                        widget.label,
                        style: const TextStyle(
                            fontSize: 27,
                            fontFamily: "Calisto",
                            color: Color.fromARGB(129, 42, 41, 41)),
                      ),
                    ),
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
