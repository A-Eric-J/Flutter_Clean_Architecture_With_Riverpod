import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/responsive/responsive.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/route/go_router_provider.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/theme/theme_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme/app_theme.dart';

class MainWidget extends ConsumerWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeControllerProvider);
    final goRouter = ref.watch(goRouterProvider);

/// If you see the sizes of the texts are big, it is because of the theme and size and you should
    /// refactor it based on your needs
    return ScreenUtilInit(
            designSize: const Size(390, 844),
    builder: (context,child){
        return
          MaterialApp.router(
            routerConfig: goRouter,
            debugShowCheckedModeBanner: true,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
          );
      },
    );

    // return MaterialApp.router(
    //   routerConfig: goRouter,
    //   debugShowCheckedModeBanner: true,
    // );


  }
}

