import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Welcome".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.androidLargeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Restaurant page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.restaurantPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main Home page - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mainHomePageContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "NEW PASSWORD PAGE".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newPasswordPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Methods".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Loyalty Points".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loyaltyPointsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Meal Plans".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mealPlansScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cooks Main Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cooksMainPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cook plan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cookPlanScreen),
                        ),
                      ],
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

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
