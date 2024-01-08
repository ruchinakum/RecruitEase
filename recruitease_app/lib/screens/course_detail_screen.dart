import 'package:recruitease_app/widgets/app_export.dart';
import 'package:recruitease_app/widgets/custom_button.dart';
import 'package:recruitease_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CourseDetailScreen extends StatelessWidget {
  CourseDetailScreen({Key? key}) : super(key: key);

  TextEditingController weekscounterController = TextEditingController();
  TextEditingController languageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(348),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    OverflowBox(
                      maxHeight: getVerticalSize(348),
                      maxWidth: getHorizontalSize(375),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle6487348x375,
                        height: getVerticalSize(348),
                        width: getHorizontalSize(375),
                        radius: BorderRadius.only(
                          bottomLeft: Radius.circular(getHorizontalSize(8)),
                          bottomRight: Radius.circular(getHorizontalSize(8)),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(left: 21, top: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.topLeft,
                              onTap: () {
                                onTapImgArrowleft(context);
                              },
                            ),
                            /*ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(RouteManager.coursevideopage);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                              ), 
                              child: Padding(
                                padding: EdgeInsets.all(8.0), 
                                child: */
                            CustomImageView(
                              imagePath: ImageConstant.imgIconplay,
                              height: getSize(128),
                              width: getSize(128),
                              alignment: Alignment.center,
                              margin: getMargin(top: 74),
                            ),
                            // ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(left: 21, top: 17),
                child: Text(
                  "Learn Web Development",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlusJakartaSansRomanSemiBold24,
                ),
              ),
              CustomButton(
                height: getVerticalSize(34),
                width: getHorizontalSize(40),
                text: "Overview",
                margin: getMargin(left: 21, top: 10),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(330),
                  margin: getMargin(left: 24, top: 12, right: 20),
                  child: Text(
                    "Rivasult is a free scholarship program enabling African youth with tech upskilling & jobs. Africa & African youth are poised to transform the digital landscape of the world.",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlusJakartaSansRomanRegular13,
                  ),
                ),
              ),
              /*Container(
                margin: getMargin(left: 24, top: 4),
                padding: getPadding(left: 15, top: 10, right: 19, bottom: 10),
                decoration: AppDecoration.fillWhiteA700,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgClock,
                      height: getSize(20),
                      width: getSize(20),
                      margin: getMargin(top: 2, bottom: 2),
                    ),
                    Padding(
                      padding: getPadding(left: 20, top: 13, right: 28),
                      child: Text(
                        "25 Lessons",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansRomanRegular14,
                      ),
                    ),
                  ],
                ),
              ), */
              CustomTextFormField(
                width: getHorizontalSize(167),
                focusNode: FocusNode(),
                autofocus: true,
                controller: languageController,
                hintText: "25 lessons",
                margin: getMargin(left: 10, top: 15),
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(left: 15, top: 5, right: 10, bottom: 10),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getSize(20),
                    width: getSize(20),
                    margin: getMargin(top: 2, bottom: 2),
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(35),
                ),
              ),
              CustomTextFormField(
                width: getHorizontalSize(167),
                focusNode: FocusNode(),
                autofocus: true,
                controller: languageController,
                hintText: "6 weeks",
                margin: getMargin(left: 10, top: 15),
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(left: 15, top: 5, right: 10, bottom: 10),
                  child: Icon(
                    Icons.access_time,
                    size: getSize(20),
                    color: ColorConstant.lightBlueA400,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(35),
                ),
              ),
              CustomTextFormField(
                width: getHorizontalSize(167),
                focusNode: FocusNode(),
                autofocus: true,
                controller: languageController,
                hintText: "English",
                margin: getMargin(left: 10, top: 15),
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(left: 15, top: 5, right: 10, bottom: 10),
                  child: Icon(
                    Icons.language,
                    size: getSize(20),
                    color: ColorConstant.lightBlueA400,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(35),
                ),
              ),
              CustomTextFormField(
                width: getHorizontalSize(167),
                focusNode: FocusNode(),
                autofocus: true,
                controller: languageController,
                hintText: "Sharable Certificate",
                margin: getMargin(left: 10, top: 15),
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(left: 15, top: 5, right: 10, bottom: 10),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSettings,
                    height: getSize(20),
                    width: getSize(20),
                    margin: getMargin(top: 2, bottom: 2),
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(35),
                ),
              ),
              /* Container(
                margin: getMargin(left: 24, top: 4),
                padding: getPadding(left: 15, top: 10, right: 19, bottom: 10),
                decoration: AppDecoration.fillWhiteA700,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSettings,
                      height: getSize(20),
                      width: getSize(20),
                      margin: getMargin(top: 2, bottom: 2),
                    ),
                    Padding(
                      padding: getPadding(left: 20, top: 13, right: 28),
                      child: Text(
                        "Sharable Certificate",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansRomanRegular14,
                      ),
                    ),
                  ],
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
