import '../kappel_home_screen/widgets/viewhierarchy_item_widget.dart';
import 'dart:async';
import 'models/viewhierarchy_item_model.dart';
import 'notifier/kappel_home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/custom_floating_button.dart';
import 'package:koppel/widgets/custom_search_view.dart';

class KappelHomeScreen extends ConsumerStatefulWidget {
  const KappelHomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KappelHomeScreenState createState() => KappelHomeScreenState();
}

class KappelHomeScreenState extends ConsumerState<KappelHomeScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50C6,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 893.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 510.v,
                  width: 429.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgScreenshot20230605,
                        height: 510.v,
                        width: 429.h,
                        alignment: Alignment.center,
                      ),
                      _buildMapSection(context),
                    ],
                  ),
                ),
              ),
              _buildViewHierarchySection(context),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return Container(
      height: 40.adaptSize,
      width: 40.adaptSize,
      margin: EdgeInsets.only(
        left: 22.h,
        top: 25.v,
      ),
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchySection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 41.v),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 13.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 43.h,
                  right: 41.h,
                ),
                child: Consumer(
                  builder: (context, ref, _) {
                    return CustomSearchView(
                      controller:
                          ref.watch(kappelHomeNotifier).searchController,
                      hintText: "msg_where_are_you_going".tr,
                      alignment: Alignment.center,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 55.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 53.h,
                  right: 67.h,
                ),
                child: Consumer(
                  builder: (context, ref, _) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 19.v,
                        );
                      },
                      itemCount: ref
                              .watch(kappelHomeNotifier)
                              .kappelHomeModelObj
                              ?.viewhierarchyItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        ViewhierarchyItemModel model = ref
                                .watch(kappelHomeNotifier)
                                .kappelHomeModelObj
                                ?.viewhierarchyItemList[index] ??
                            ViewhierarchyItemModel();
                        return ViewhierarchyItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 21.v),
            Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Text(
                "lbl_view_more".tr,
                style: CustomTextStyles.bodySmallSecondaryContainer,
              ),
            ),
            SizedBox(height: 9.v),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 61.h),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 189.h,
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.symmetric(vertical: 6.v),
                            color: appTheme.gray400.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 58.v,
                              width: 52.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 9.v,
                              ),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray400,
                                        borderRadius: BorderRadius.circular(
                                          20.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgInterfaceTicketVoucher,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 67.v,
                            width: 84.h,
                            margin: EdgeInsets.only(bottom: 3.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text(
                                      "lbl_10".tr,
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_total_trips".tr,
                                    style: CustomTextStyles
                                        .titleMediumBlack900Medium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 189.h,
                      margin: EdgeInsets.only(left: 22.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.symmetric(vertical: 3.v),
                            color: appTheme.indigo1007f,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 58.v,
                              width: 52.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 9.v,
                              ),
                              decoration: AppDecoration.fillIndigoF.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      decoration: BoxDecoration(
                                        color: appTheme.deepPurple300,
                                        borderRadius: BorderRadius.circular(
                                          20.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgInterfaceTrendingUp,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 63.v,
                            width: 111.h,
                            margin: EdgeInsets.only(left: 2.h),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: Text(
                                      "lbl_1500".tr,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 11.h),
                                        child: Text(
                                          "lbl_ghs".tr,
                                          style: CustomTextStyles
                                              .labelLargeInterBlack900,
                                        ),
                                      ),
                                      SizedBox(height: 6.v),
                                      Text(
                                        "lbl_total_earnings".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleMediumBlack900Medium,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButtonSection(BuildContext context) {
    return CustomFloatingButton(
      height: 45,
      width: 45,
      backgroundColor: appTheme.teal700,
      child: CustomImageView(
        imagePath: ImageConstant.imgUserIndigo200,
        height: 22.5.v,
        width: 22.5.h,
      ),
    );
  }
}
