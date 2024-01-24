import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 64.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 64.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 64.v,
          width: 412.h,
          decoration: BoxDecoration(
            color: appTheme.gray100,
          ),
        );
      case Style.bgFill_2:
        return Container(
          height: 64.v,
          width: 412.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
          ),
        );
      case Style.bgFill_3:
        return Container(
          height: 64.v,
          width: 412.h,
          decoration: BoxDecoration(
            color: appTheme.deepPurple200,
          ),
        );
      case Style.bgFill:
        return Container(
          height: 64.v,
          width: 412.h,
          decoration: BoxDecoration(
            color: appTheme.gray5002,
          ),
        );
      case Style.bgFill_4:
        return Container(
          height: 56.v,
          width: 412.h,
          decoration: BoxDecoration(
            color: appTheme.deepPurple10001,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill_2,
  bgFill_3,
  bgFill,
  bgFill_4,
}
