import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' as device;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'auth/register/view/register_view.dart';

void main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  await device.SystemChrome.setEnabledSystemUIMode(device.SystemUiMode.manual,
      overlays: [device.SystemUiOverlay.bottom]);
  device.SystemChrome.setSystemUIOverlayStyle(
      device.SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey(debugLabel: 'app-scaffoldkey');
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (c, w) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: RegisterScreen(),
        );
      },
    );
  }
}
