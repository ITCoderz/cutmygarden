import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/platform_sizes.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../generated/assets.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';
import '../buttons/side_menu_logout_button.dart';

class CustomSideMenu extends StatefulWidget {
  final SideMenuController sideMenu;

  const CustomSideMenu({
    super.key,
    required this.sideMenu,
  });

  @override
  State<CustomSideMenu> createState() => _CustomSideMenuState();
}

class _CustomSideMenuState extends State<CustomSideMenu> {
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      controller: widget.sideMenu,
      showToggle: true,
collapseWidth: PlatformSizes.maxMediumScreenWidth.round(),
      style: SideMenuStyle(
        backgroundColor: CColors.sideMenuColor,
        displayMode: SideMenuDisplayMode.auto,
        hoverColor: Colors.blue[100],
        selectedHoverColor: Color.alphaBlend(
            Color.fromRGBO(
                Theme.of(context).colorScheme.surfaceTint.red,
                Theme.of(context).colorScheme.surfaceTint.green,
                Theme.of(context).colorScheme.surfaceTint.blue,
                0.08),
            Colors.blue[100]!),
        itemHeight: 50,
        itemInnerSpacing: 10,
        itemBorderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(
            10,
          ),
          topLeft: Radius.circular(
            10,
          ),
        ),
        selectedColor: CColors.whiteColor,
        selectedTitleTextStyle: CCustomTextStyles.sideMenu515,
        selectedIconColor: CColors.sideMenuColor,
        unselectedIconColor: CColors.whiteColor,
        unselectedTitleTextStyle: CCustomTextStyles.white515,
        compactSideMenuWidth: 70,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
              10,
            ),
            topRight: Radius.circular(
              10,
            ),
          ),
        ),
        itemOuterPadding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
      ),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.dashboardAppLogo,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CColors.whiteColor,
                ),
              ),
              10.pw,
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Theodore Hoffman",
                    style: CCustomTextStyles.white515,
                  ),
                  Text(
                    "Founder",
                    style: CCustomTextStyles.white514,
                  ),
                ],
              ),
            ],
          ),
          30.ph,
        ],
      ),
      items: [
        SideMenuItem(
          priority: 0,
          title: 'Dashboard',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(Icons.grid_view_outlined),
        ),
        SideMenuItem(
          priority: 1,
          title: 'Booking',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.calendar,
          ),
        ),
        SideMenuItem(
          priority: 2,
          title: 'Enquiries',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.phoneVolume,
          ),
        ),
        SideMenuItem(
          priority: 3,
          title: 'Gardeners',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.userCheck,
          ),
        ),
        SideMenuItem(
          priority: 4,
          title: 'Clients',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.userGroup,
          ),
        ),
        SideMenuItem(
          priority: 5,
          title: 'Revenue',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.arrowTrendUp,
          ),
        ),
        SideMenuItem(
          priority: 6,
          title: 'Communication',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.message,
          ),
        ),
        SideMenuItem(
          priority: 7,
          title: 'Reviews',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.star,
          ),
        ),
        SideMenuItem(
          priority: 8,
          title: 'Report',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.globe,
          ),
        ),
        SideMenuItem(
          priority: 9,
          title: 'Settings',
          onTap: (index, _) {
            widget.sideMenu.changePage(index);
          },
          icon: const Icon(
            FontAwesomeIcons.gear,
          ),
        ),
        // SideMenuItem(
        //   builder: (BuildContext context, SideMenuDisplayMode mode) {
        //     return Align(
        //       alignment: Alignment.centerLeft,
        //       child: IconButton(
        //         onPressed: () {},
        //         icon: const FaIcon(
        //           FontAwesomeIcons.arrowRightToBracket,
        //           color: CColors.whiteColor,
        //         ),
        //       ),
        //     );
        //   },
        //   priority: 12,
        // ),
      ],
      footer: LogOutButton(
        height: 50,
        width: 205,
        logOutFunction: () {},
      ),
    );
  }
}