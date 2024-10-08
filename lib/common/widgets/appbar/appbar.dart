import 'package:flutter/material.dart';
import 'package:professional_ecommerce/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/functions/helper_function.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: CustomSizes.md),
    child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton (onPressed: () => Get.back(), icon: Icon (Iconsax.arrow_left,color: dark? CustomColors.white : CustomColors.dark ))
          : leadingIcon != null? IconButton (onPressed: leadingOnPressed, icon: Icon(leadingIcon)): null,
      title: title,
      actions: actions,

    ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());
}
