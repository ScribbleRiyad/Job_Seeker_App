import '../search_screen/widgets/search_item_widget.dart';import 'package:application1/core/app_export.dart';import 'package:application1/widgets/app_bar/appbar_image.dart';import 'package:application1/widgets/app_bar/appbar_title.dart';import 'package:application1/widgets/app_bar/custom_app_bar.dart';import 'package:application1/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {SearchScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(48), leading: AppbarImage(svgPath: ImageConstant.imgGroup162799, margin: getMargin(left: 24, top: 13, bottom: 13), onTap: () {onTapArrowbackone(context);}), centerTitle: true, title: AppbarTitle(text: "Find Jobs")), body: Container(width: double.maxFinite, padding: getPadding(left: 24, right: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(margin: getMargin(top: 30), controller: searchController, hintText: "Search...", hintStyle: CustomTextStyles.titleMediumBluegray400, prefix: Container(margin: getMargin(left: 16, top: 17, right: 8, bottom: 17), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(52)), suffix: Container(margin: getMargin(left: 30, top: 17, right: 16, bottom: 17), child: CustomImageView(svgPath: ImageConstant.imgFilterPrimary)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(52))), Expanded(child: Padding(padding: getPadding(top: 24), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(12));}, itemCount: 4, itemBuilder: (context, index) {return SearchItemWidget();}))), GestureDetector(onTap: () {onTapView(context);}, child: Container(height: getVerticalSize(148), width: getHorizontalSize(327), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(16)), border: Border.all(color: appTheme.indigo50, width: getHorizontalSize(1)))))])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowbackone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the jobDetailsTabContainerScreen.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jobDetailsTabContainerScreen); } 
 }
