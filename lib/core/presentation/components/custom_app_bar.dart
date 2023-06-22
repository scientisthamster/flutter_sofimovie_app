import 'package:flutter/material.dart';
import 'package:flutter_sofimovie_app/core/resources/app_values.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: context.canPop()
          ? IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: AppSize.s20,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.s60);
}
