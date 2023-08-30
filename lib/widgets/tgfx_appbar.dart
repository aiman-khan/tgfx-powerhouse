import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/images.dart';

class TGFXAppBar extends StatelessWidget {
  const TGFXAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Images.menuIcon),
        const SizedBox(width: 20),
        Image.asset(Images.appLogo),
        const Spacer(),
        SvgPicture.asset(Images.notificationIcon),
        const SizedBox(width: 12),
        SvgPicture.asset(Images.userIcon),
        const SizedBox(width: 12),
        SvgPicture.asset(Images.logoutIcon),
      ],
    );
  }
}
