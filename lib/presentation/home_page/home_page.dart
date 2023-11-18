import '../home_page/widgets/home_item_widget.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:application1/widgets/app_bar/appbar_image_1.dart';
import 'package:application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:application1/widgets/app_bar/custom_app_bar.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(74),
          leading: AppbarCircleimage(
            imagePath: ImageConstant.imgImage50x50,
            margin: getMargin(
              left: 24,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle(
                  text: "Hi, Welcome Back! 👋",
                ),
                AppbarSubtitle2(
                  text: "Find your dream job",
                  margin: getMargin(
                    top: 9,
                    right: 33,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 24,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomSearchView(
                  margin: getMargin(
                    left: 24,
                    top: 30,
                    right: 24,
                  ),
                  controller: searchController,
                  hintText: "Search...",
                  hintStyle: CustomTextStyles.titleMediumBluegray400,
                  alignment: Alignment.center,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 17,
                      right: 8,
                      bottom: 17,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(52),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 17,
                      right: 16,
                      bottom: 17,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFilterPrimary,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(52),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 25,
                ),
                child: Text(
                  "Recommendation",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    left: 24,
                    top: 17,
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: getPadding(
                              all: 16,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  height: getSize(48),
                                  width: getSize(48),
                                  margin: getMargin(
                                    bottom: 96,
                                  ),
                                  padding: getPadding(
                                    all: 8,
                                  ),
                                  decoration: IconButtonStyleHelper
                                      .fillOnPrimaryContainer,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgFrame162722,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 4,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Senior UI/UX Designer",
                                        style: CustomTextStyles
                                            .titleSmallGray5001Bold,
                                      ),
                                      Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 7,
                                          ),
                                          child: Text(
                                            "Shopee",
                                            style: CustomTextStyles
                                                .labelLargeGray5001SemiBold,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.64,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 11,
                                          ),
                                          child: Text(
                                            "Jakarta, Indonesia (Remote)",
                                            style: CustomTextStyles
                                                .labelLargeGray5001_2,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 9,
                                        ),
                                        child: Text(
                                          "1100 - 12.000/Month",
                                          style: CustomTextStyles
                                              .labelLargeGray5001_1,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 17,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: getPadding(
                                                left: 12,
                                                top: 5,
                                                right: 12,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16,
                                              ),
                                              child: Text(
                                                "Fulltime",
                                                style: CustomTextStyles
                                                    .labelLargeGray5001,
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 7,
                                              ),
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                right: 12,
                                                bottom: 4,
                                              ),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16,
                                              ),
                                              child: Text(
                                                "Two days ago",
                                                style: CustomTextStyles
                                                    .labelLargeGray5001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              all: 16,
                            ),
                            decoration: AppDecoration.fillDeepPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  height: getSize(48),
                                  width: getSize(48),
                                  margin: getMargin(
                                    bottom: 96,
                                  ),
                                  padding: getPadding(
                                    all: 8,
                                  ),
                                  decoration: IconButtonStyleHelper
                                      .fillOnPrimaryContainer,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgFrame162722,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Senior UI/UX Designer",
                                        style: CustomTextStyles
                                            .titleSmallGray5001Bold,
                                      ),
                                      Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "Shopee",
                                            style: CustomTextStyles
                                                .labelLargeGray5001SemiBold,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.64,
                                        child: Container(
                                          width: getHorizontalSize(181),
                                          margin: getMargin(
                                            top: 8,
                                          ),
                                          child: Text(
                                            "Jakarta, Indonesia (Remote)",
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeGray5001_2
                                                .copyWith(
                                              height: 1.67,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "1100 - 12.000/Month",
                                          style: CustomTextStyles
                                              .labelLargeGray5001_1,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 16,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                right: 12,
                                                bottom: 4,
                                              ),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16,
                                              ),
                                              child: Text(
                                                "Fulltime",
                                                style: CustomTextStyles
                                                    .labelLargeGray5001,
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 7,
                                              ),
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                right: 12,
                                                bottom: 4,
                                              ),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16,
                                              ),
                                              child: Text(
                                                "Two days ago",
                                                style: CustomTextStyles
                                                    .labelLargeGray5001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 22,
                ),
                child: Text(
                  "Recent Jobs",
                  style: CustomTextStyles.titleMediumInter,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 16,
                      right: 24,
                    ),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(16),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return HomeItemWidget();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
