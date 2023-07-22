import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';

import '../../../../reusable_widgets/buttons/primary_button.dart';
import '../../../../reusable_widgets/custom_dropdown.dart';
import '../../../../reusable_widgets/text_fields/custom_textfield.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class NameColumn extends StatelessWidget {
  const NameColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Theodore Hoffman",
          style: CCustomTextStyles.black620,
        ),
        10.ph,
        const Text(
          "First Name",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Last Name",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Phone Number",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Address",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "City / Town",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Post Code",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Upload",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          maxLines: 5,
          width: 200,
          height: 125,
        ),
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class BusinessInformationColumn extends StatelessWidget {
  const BusinessInformationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Business Information",
          style: CCustomTextStyles.black620,
        ),
        10.ph,
        const Text(
          "Companies house name",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Opening hours",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Closing hours",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Business start date",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class VanDetailsColumn extends StatelessWidget {
  const VanDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Van Details",
          style: CCustomTextStyles.black620,
        ),
        10.ph,
        const Text(
          "Van Type",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Registration",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Branding",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Upload",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          maxLines: 5,
          width: 200,
          height: 125,
        ),
        10.ph,
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class InsuranceDetailsColumn extends StatelessWidget {
  const InsuranceDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Insurance",
          style: CCustomTextStyles.black620,
        ),
        10.ph,
        const Text(
          "Policy Number",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Upload",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          maxLines: 5,
          width: 200,
          height: 125,
        ),
        10.ph,
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class DbsDetailsColumn extends StatelessWidget {
  const DbsDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "DBS Check",
          style: CCustomTextStyles.black620,
        ),
        10.ph,
        const Text(
          "Full Name",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Upload",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          maxLines: 5,
          width: 200,
          height: 125,
        ),
        10.ph,
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class UniformDetailsColumn extends StatelessWidget {
  const UniformDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Uniform",
          style: CCustomTextStyles.black620,
        ),
        10.ph,
        const Text(
          "Tshirt",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Jumper",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Polo Shirt",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Coat",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Text(
          "Bennie Hat",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
        ),
        10.ph,
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class StaffingComplianceColumn extends StatelessWidget {
  const StaffingComplianceColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Staffing Compliance",
          style: CCustomTextStyles.black620,
        ),
        28.ph,
        Container(
          width: 200,
          height: 35,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: const BoxDecoration(
            color: CColors.imagePlaceHolderColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.person_outline_rounded,
                size: 18,
                color: CColors.blackColor,
              ),
              10.pw,
              const Expanded(
                child: Text(
                  "Clive Sailsman",
                  style: CCustomTextStyles.black610,
                ),
              ),
              IconButton(
                onPressed: () {},
                alignment: Alignment.center,
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.close_rounded,
                  size: 18,
                  color: CColors.blackColor,
                ),
              )
            ],
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        const Text(
          "Staffing Compliance",
          style: CCustomTextStyles.black615,
        ),
        20.ph,
        const Text(
          "First Name",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
          hintText: "Enter Staff member First Name",
          hintStyle: CCustomTextStyles.black409,
        ),
        10.ph,
        const Text(
          "Surname",
          style: CCustomTextStyles.black610,
        ),
        5.ph,
        CustomTextField(
          textEditingController: TextEditingController(),
          width: 200,
          hintText: "Enter staff member surname ",
          hintStyle: CCustomTextStyles.black409,
        ),
        10.ph,
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}

class LivePortalColumn extends StatelessWidget {
  const LivePortalColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Live Portal",
          style: CCustomTextStyles.black620,
        ),
        28.ph,
        CustomDropDown(
          onChanged: (val) {},
          hintText: "Select Portal",
          mappingList: ConstantLists.livePortalDropDownList,
          width: 200,
          height: 32,
        ),
        const Spacer(),
        PrimaryButton(
          text: "Save",
          onPressFunction: () {},
          width: 200,
          height: 32,
        ),
      ],
    );
  }
}
