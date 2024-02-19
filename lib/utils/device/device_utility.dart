import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils{
  static void hidkeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void>setStatusBarColor(Color color)async{
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color
      ),
    );
  }

  static bool isLandscapeOrientation(BuildContext context){
    final viewInsets =View.of(context).viewInsets;
    return viewInsets.bottom==0;
  }


  static bool isPortraitOrientation(BuildContext context){
    final viewInsets =View.of(context).viewInsets;
    return viewInsets.bottom!=0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable? SystemUiMode.immersiveSticky:SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWeight(){
    return MediaQuery.of(Get.context!).size.width;
  }


  static double getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }


  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight; // Corrected variable name
  }

  static double getAppBarHeight() {
    return kToolbarHeight; // Corrected variable name
  }
  static double getKeyboardHeight(){
    final ViewInsets = MediaQuery.of(Get.context!).viewInsets;
   return ViewInsets.bottom;
  }

  static Future<bool>isKeyboardVisible()async{
    final ViewInsets = View.of(Get.context!).viewInsets;
    return ViewInsets.bottom>0;
  }


static Future<bool>isPhysicalDevice()async{
    return defaultTargetPlatform==TargetPlatform.android ||defaultTargetPlatform ==TargetPlatform.iOS;
}

static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration,()=>HapticFeedback.vibrate());
}


static Future<void> setPreferredOrientations(List<DeviceOrientation>orientations)async{
    await SystemChrome.setPreferredOrientations(orientations);
}

static void hidStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
}

static Future<bool>hasInternetConnection()async{
    try{
      final result=await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch(_){
      return false;
    }
}


static bool isIOS(){
  return Platform.isAndroid;
}



static void launchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw 'Could not launch $url';
    }
}
}