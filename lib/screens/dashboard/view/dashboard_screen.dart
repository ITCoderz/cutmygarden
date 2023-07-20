import 'dart:async';

import 'package:cut_my_garden/generated/assets.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/platform_sizes.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../reusable_widgets/background_container_widgets/gardener_background.dart';
import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../reusable_widgets/buttons/primary_button.dart';
import '../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../reusable_widgets/tables/bookings/booking_dashboard/dashboard_booking_table.dart';
import '../../../reusable_widgets/tables/enquiries/enquiries_dashboard/offline_enquiries_table.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/enums/screen_enums.dart';
import '../components/dashboard_screen_components.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final Completer<GoogleMapController> _mapController = Completer();

  final CameraPosition _initialCameraPosition = const CameraPosition(
      target: LatLng(52.48732047713329, -1.8821544560822594), zoom: 13);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
        return Row(
          children: [
            CustomMenuBar(
              maxWidth: constraint.maxWidth,
              selectedIndex: 0,
            ),
            Expanded(
              child: Container(
                height: context.height * 1,
                width: context.width * 1,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        10.ph,
                        SearchField(
                          height: 45,
                          width: context.width * 0.37,
                          textEditingController: TextEditingController(),
                        ),
                        20.ph,
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ConstantLists.dataList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 95,
                                  crossAxisCount: PlatformSizes.screenType(
                                              constraint: constraint) ==
                                          TargetPlatformEnum.web
                                      ? 4
                                      : 2,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0),
                          itemBuilder: (BuildContext context, int index) {
                            return AmountCard(
                              value: ConstantLists.dataList[index].dataValue,
                              valueType: ConstantLists.dataList[index].dataType,
                            );
                          },
                        ),
                        20.ph,

                        ///Table Primary Display for Big Screen.
                        constraint.maxWidth >=
                                PlatformSizes.minMediumScreenWidth
                            ? Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: CustomWidgetBackground(
                                      alignment: Alignment.center,
                                      widget: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Bookings",
                                              style: CCustomTextStyles.black615,
                                            ),
                                            20.ph,
                                            DashBoardBookingTableData(
                                              bookingList:
                                                  ConstantLists.bookingList,
                                            ),
                                            20.ph,
                                            Center(
                                              child: PrimaryButton(
                                                width: 230,
                                                height: 40,
                                                text: "View Booking",
                                                onPressFunction: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  30.pw,
                                  Expanded(
                                    flex: 2,
                                    child: CustomWidgetBackground(
                                      alignment: Alignment.center,
                                      widget: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Offline Enquires",
                                              style: CCustomTextStyles.black615,
                                            ),
                                            20.ph,
                                            OfflineEnquiresDataTableData(
                                              offlineEnquiresList: ConstantLists
                                                  .offlineEnquiresList,
                                            ),
                                            20.ph,
                                            PrimaryButton(
                                              width: 230,
                                              height: 40,
                                              text: "View Enquires",
                                              onPressFunction: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            :

                            ///Table Primary Display for Average Screens.
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomWidgetBackground(
                                    alignment: Alignment.center,
                                    widget: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Bookings",
                                            style: CCustomTextStyles.black615,
                                          ),
                                          20.ph,
                                          DashBoardBookingTableData(
                                            bookingList:
                                                ConstantLists.bookingList,
                                          ),
                                          20.ph,
                                          Center(
                                            child: PrimaryButton(
                                              width: 230,
                                              height: 40,
                                              text: "View Booking",
                                              onPressFunction: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  20.ph,
                                  CustomWidgetBackground(
                                    alignment: Alignment.center,
                                    widget: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Offline Enquires",
                                            style: CCustomTextStyles.black615,
                                          ),
                                          20.ph,
                                          OfflineEnquiresDataTableData(
                                            offlineEnquiresList: ConstantLists
                                                .offlineEnquiresList,
                                          ),
                                          20.ph,
                                          Center(
                                            child: PrimaryButton(
                                              width: 230,
                                              height: 40,
                                              text: "View Enquires",
                                              onPressFunction: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        20.ph,

                        ///Display for Big Screen.
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 500,
                              width: constraint.maxWidth >=
                                      PlatformSizes.minMediumScreenWidth
                                  ? context.width * 0.46
                                  : context.width * 0.68,
                              child: GoogleMap(
                                initialCameraPosition: _initialCameraPosition,
                                mapType: MapType.normal,
                                compassEnabled: true,
                                zoomControlsEnabled: true,
                                zoomGesturesEnabled: true,
                                myLocationButtonEnabled: true,
                                myLocationEnabled: true,
                                trafficEnabled: false,
                                rotateGesturesEnabled: true,
                                buildingsEnabled: true,
                                onMapCreated: (GoogleMapController controller) {
                                  _mapController.complete(controller);
                                },
                              ),
                            ),
                            constraint.maxWidth >=
                                    PlatformSizes.minMediumScreenWidth
                                ? 30.pw
                                : const SizedBox.shrink(),
                            constraint.maxWidth >=
                                    PlatformSizes.minMediumScreenWidth
                                ? Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                            Assets.dashboardWeatherWidget),
                                        SvgPicture.asset(
                                            Assets.dashboardWeatherWidget),
                                        SvgPicture.asset(
                                            Assets.dashboardWeatherWidget),
                                      ],
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),

                        ///Display for Small Screen.
                        constraint.maxWidth >=
                                PlatformSizes.minMediumScreenWidth
                            ? const SizedBox.shrink()
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  20.ph,
                                  SvgPicture.asset(
                                      Assets.dashboardWeatherWidget),
                                  SvgPicture.asset(
                                      Assets.dashboardWeatherWidget),
                                  SvgPicture.asset(
                                      Assets.dashboardWeatherWidget),
                                ],
                              ),
                        20.ph,
                        GardenerBackground(
                          widget: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Gardeners",
                                  style: CCustomTextStyles.black615,
                                ),
                              ),
                              20.ph,
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: ConstantLists.gardenersList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: 95,
                                        crossAxisCount:
                                            PlatformSizes.screenType(
                                                        constraint:
                                                            constraint) ==
                                                    TargetPlatformEnum.web
                                                ? 4
                                                : 2,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 10.0),
                                itemBuilder: (BuildContext context, int index) {
                                  return GardenerInfoTiles(
                                    gardener: ConstantLists
                                        .gardenersList[index].gardener,
                                    location: ConstantLists
                                        .gardenersList[index].location,
                                    availability: ConstantLists
                                        .gardenersList[index].availability,
                                    compliance: ConstantLists
                                        .gardenersList[index].compliance,
                                  );
                                },
                              ),
                              20.ph,
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        );
      }),
    );
  }
}
