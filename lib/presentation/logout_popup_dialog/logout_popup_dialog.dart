import 'package:application1/core/app_export.dart';import 'package:application1/widgets/custom_elevated_button.dart';import 'package:application1/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class LogoutPopupDialog extends StatelessWidget {const LogoutPopupDialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: Container(margin: getMargin(left: 34, right: 34, bottom: 241), padding: getPadding(all: 32), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(svgPath: ImageConstant.imgQuestion, height: getSize(82), width: getSize(82), margin: getMargin(top: 9)), Padding(padding: getPadding(top: 35), child: Text("Are You Sure?", style: CustomTextStyles.titleMediumBold)), Container(width: getHorizontalSize(229), margin: getMargin(left: 6, top: 8, right: 5), child: Text("Ullamcorper imperdiet urna id non sed est sem.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBluegray400.copyWith(height: 1.57))), Padding(padding: getPadding(top: 25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(height: getVerticalSize(46), text: "Log Out", margin: getMargin(right: 6), buttonStyle: CustomButtonStyles.outlinePrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold, onTap: () {onTapLogout(context);})), Expanded(child: CustomElevatedButton(height: getVerticalSize(46), text: "Cancel", margin: getMargin(left: 6), buttonStyle: CustomButtonStyles.fillPrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallGray5001, onTap: () {onTapCancel(context);}))]))]))); } 
/// Navigates to the signUpCreateAcountScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the signUpCreateAcountScreen.
onTapLogout(BuildContext context) { Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signUpCreateAcountScreen, (route) => false); } 
/// Navigates to the settingsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the settingsScreen.
onTapCancel(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 
 }
