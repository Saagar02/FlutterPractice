

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';

Widget buildNotifictionAccecpted(){
  return  Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: AppColor.mainColorLight,
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    size: 23,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                        "Appointment request accepted",
                                        style: AppFonts.h4Regular(Colors.black),
                                        ),
                                  ),
                                )
                              ],
                            ),
                          );
}


Widget buildNotifictionShop(){
  return  Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: AppColor.mainColorLight,
                                  ),
                                  child: SvgPicture.asset(
                                    "lib/assets/svg/fi_shopping-bag.svg"
                                  )
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                        "Your checkout is successfull, product is on tne way",
                                        style: AppFonts.h4Regular(Colors.black),
                                        ),
                                  ),
                                )
                              ],
                            ),
                          );
}