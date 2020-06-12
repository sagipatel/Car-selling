import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Components/mk_screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'mk_screen_util.dart';
class SgImages {
  SgImages._();

// PNG,JPG, Assets Image
  static const ImageProvider democar01 =
      AssetImage('assets/images/demo_img_01.jpg');
  static const ImageProvider sliderImg02 = AssetImage(
    'assets/images/slider_img_01.jpg',
  );
  static const ImageProvider sliderImg03 =
      AssetImage('assets/images/slider_img_03.jpg');
  static const ImageProvider cardImg = AssetImage(
    'assets/images/ima_04.jpg',
  );
  static const ImageProvider horizontalSlider01 = AssetImage(
    'assets/images/slider_image_1.jpg',
  );
  static const ImageProvider horizontalSlider02 = AssetImage(
    'assets/images/slider_image_2.jpg',
  );
  static const ImageProvider horizontalSlider03 = AssetImage(
    'assets/images/slider_image_3.jpg',
  );
  static const ImageProvider defaultimage = AssetImage(
    'assets/images/default_image.jpg',
  );

  static const ImageProvider detailCarousel1 =
      AssetImage('assets/images/ima1.jpg');
  static const ImageProvider detailCarousel2 =
      AssetImage('assets/images/ima2.jpg');
  static const ImageProvider detailCarousel3 =
      AssetImage('assets/images/ima3.jpg');
  static const ImageProvider detailCarousel4 =
      AssetImage('assets/images/ima4.jpg');
  static const ImageProvider fav_card01 =
      AssetImage('assets/images/fevourite_ima_02.jpg');
  static const ImageProvider detailscard01 =
      AssetImage('assets/images/car_one.png');
  // fevourite_ima_02
  //  static const ImageProvider dinner_Buffet1 = AssetImage('assets/homeimgs/DinnerB_C1.jpg');

//  SVG pictures

  //TABBING PAGE IMAGES//
  static SvgPicture activeHome = SvgPicture.asset(
    'assets/images/home.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture deactiveHome = SvgPicture.asset(
    'assets/images/deactive_home_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture activeMessage = SvgPicture.asset(
    'assets/images/active_message_ic.svg',
    height: sh(18),
    width: sw(20),
  );

  static SvgPicture deactiveMessage = SvgPicture.asset(
    'assets/images/deactive_message_ic.svg',
    height: sh(18),
    width: sw(20),
  );

  static SvgPicture activeAdd = SvgPicture.asset(
    'assets/images/active_add_ic.svg',
    height: sh(18),
    width: sw(20),
  );

  static SvgPicture deactiveAdd = SvgPicture.asset(
    'assets/images/deactive_add_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture activeNotification = SvgPicture.asset(
    'assets/images/active_notification_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture deactiveNotification = SvgPicture.asset(
    'assets/images/deactive_notification_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture activeProfile = SvgPicture.asset(
    'assets/images/active_profile_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture deactiveProfile = SvgPicture.asset(
    'assets/images/deactive_profile_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  // HOME PAGE  //
  static SvgPicture infoIcon = SvgPicture.asset(
    'assets/images/info_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture filterIc = SvgPicture.asset(
    'assets/images/filter_ic.svg',
    height: sh(20),
    width: sw(20),
  );
  static SvgPicture upwardIcon = SvgPicture.asset(
    'assets/images/upword_ic.svg',
    height: sh(20),
    width: sw(20),
  );
  static SvgPicture seaAllIcon = SvgPicture.asset(
    'assets/images/see_all_ic.svg',
    height: sh(20),
    width: sw(20),
  );
  static SvgPicture shareIcon = SvgPicture.asset(
    'assets/images/share_ic.svg',
    height: sh(20),
    width: sw(20),
  );
  static SvgPicture favIcon = SvgPicture.asset(
    'assets/images/fav_ic.svg',
    height: sh(20),
    width: sw(20),
  );

  // ADD PAGE //
  static SvgPicture deaultImage = SvgPicture.asset(
    'assets/images/default_image.svg',
    height: sh(200),
    width: sw(200),
  );
  static SvgPicture rightArrow = SvgPicture.asset(
    'assets/images/right-arrow_ic.svg',
    height: sh(18),
    width: sw(20),
  );
  static SvgPicture count01 = SvgPicture.asset(
    'assets/images/count_1_ic.svg',
    height: sh(40),
    width: sw(40),
  );
  static SvgPicture count02 = SvgPicture.asset(
    'assets/images/count-2_ic.svg',
    height: sh(40),
    width: sw(40),
  );
  static SvgPicture count03 = SvgPicture.asset(
    'assets/images/count-3_ic.svg',
    height: sh(40),
    width: sw(40),
  );
  static SvgPicture count04 = SvgPicture.asset(
    'assets/images/count-4_ic.svg',
    height: sh(40),
    width: sw(40),
  );

  // PROFILE PAGE //
  static SvgPicture profileHeading = SvgPicture.asset(
    'assets/images/Sayrtk.svg',
    height: sh(30),
    width: sw(30),
  );
  static SvgPicture myAddIc = SvgPicture.asset(
    'assets/images/my-ads_ic.svg',
    height: sh(25),
    width: sw(25),
  );
  static SvgPicture searchbyBrandIc = SvgPicture.asset(
    'assets/images/search-by-brand_ic.svg',
    height: sh(25),
    width: sw(25),
  );
  static SvgPicture savedIc = SvgPicture.asset(
    'assets/images/saved_ic.svg',
    height: sh(25),
    width: sw(25),
  );
  static SvgPicture lastSeenIc = SvgPicture.asset(
    'assets/images/last-seen_ic.svg',
    height: sh(25),
    width: sw(25),
  );
  static SvgPicture addSubIc = SvgPicture.asset(
    'assets/images/add-subscription_ic.svg',
    height: sh(25),
    width: sw(25),
  );
  static SvgPicture mymentaizedAddIc = SvgPicture.asset(
    'assets/images/my-monetizes-ads_ic.svg',
    height: sh(30),
    width: sw(30),
  );
  static SvgPicture settingIc = SvgPicture.asset(
    'assets/images/settings_ic.svg',
    height: sh(25),
    width: sw(25),
  );

  // LOGIN PAGE //

  static SvgPicture googleIc = SvgPicture.asset(
    'assets/images/google_ic.svg',
    height: sh(32),
    width: sw(32),
  );
  static SvgPicture facebookIc = SvgPicture.asset(
    'assets/images/facebook_ic.svg',
    height: sh(32),
    width: sw(32),
  );

  // CHAT PAGE //

  static SvgPicture upRoundArrow = SvgPicture.asset(
    'assets/images/up-round_ic.svg',
    height: sh(40),
    width: sw(40),
  );
  static SvgPicture downRoundArrow = SvgPicture.asset(
    'assets/images/up-round_ic.svg',
    height: sh(40),
    width: sw(40),
  );
  //DETAILS PAGE IMAGES//
  static SvgPicture batteryIc = SvgPicture.asset(
    'assets/images/down-round_ic.svg',
    height: sh(15),
    width: sw(15),
  );

  static SvgPicture engineIc = SvgPicture.asset(
    'assets/images/engine_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture transIc = SvgPicture.asset(
    'assets/images/trans_ic.svg',
    height: sh(15),
    width: sw(15),
  );

  static SvgPicture breakIc = SvgPicture.asset(
    'assets/images/brakes_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture wheelsIc = SvgPicture.asset(
    'assets/images/wheels_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture tankIc = SvgPicture.asset(
    'assets/images/tank_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture paint = SvgPicture.asset(
    'assets/images/piant_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture fuelIc = SvgPicture.asset(
    'assets/images/fuel-station_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture airBagIc = SvgPicture.asset(
    'assets/images/airbag_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture seatHeatIc = SvgPicture.asset(
    'assets/images/seat-heat_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture xenonIc = SvgPicture.asset(
    'assets/images/xenon_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture acIc = SvgPicture.asset(
    'assets/images/ac_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture bluetoothIc = SvgPicture.asset(
    'assets/images/bluetooth_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture signallingIc = SvgPicture.asset(
    'assets/images/signaling_ic.svg',
    height: sh(15),
    width: sw(15),
  );

  // DETAIL PAGE STEP - 3 //

  static SvgPicture electronicMirrorsS3 = SvgPicture.asset(
    'assets/images/electric-mirrors_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture bluetoothS3 = SvgPicture.asset(
    'assets/images/car-bluetooth_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture keylessEntityS3 = SvgPicture.asset(
    'assets/images/keyless-entry_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture abs = SvgPicture.asset(
    'assets/images/abs_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture auxS3 = SvgPicture.asset(
    'assets/images/aux_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture powerDoorlockS3 = SvgPicture.asset(
    'assets/images/power-door-lock_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture parkingLights = SvgPicture.asset(
    'assets/images/parking-sensors_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture latherSeats = SvgPicture.asset(
    'assets/images/leather-seats_ic.svg',
    height: sh(15),
    width: sw(15),
  );

  static SvgPicture touchScreen = SvgPicture.asset(
    'assets/images/touch-screen_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture ledLights = SvgPicture.asset(
    'assets/images/led-lights_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture rearViewcamera = SvgPicture.asset(
    'assets/images/rear-view-camera_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture navigation = SvgPicture.asset(
    'assets/images/navigation_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture cruisControl = SvgPicture.asset(
    'assets/images/cruise-control_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  //SELECETED...... //
  static SvgPicture selAirbag = SvgPicture.asset(
    'assets/images/selected-airbag_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selAc = SvgPicture.asset(
    'assets/images/selected-ac_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selelectronicMirrors = SvgPicture.asset(
    'assets/images/selected-electric-mirrors_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selBluetooth = SvgPicture.asset(
    'assets/images/selected-bluetooth_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selkeyLessEntery = SvgPicture.asset(
    'assets/images/selected-keyless-entry_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selABS = SvgPicture.asset(
    'assets/images/selected-abs_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selxenonlights = SvgPicture.asset(
    'assets/images/selected-xenon-lights_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selAux = SvgPicture.asset(
    'assets/images/selected-aux_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selparkingSensor = SvgPicture.asset(
    'assets/images/selected-parking-sensors_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture sellateherSeats = SvgPicture.asset(
    'assets/images/selected-leather-seats_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selbluetooth = SvgPicture.asset(
    'assets/images/selected-bluetooth_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selpowerlooks = SvgPicture.asset(
    'assets/images/selected-power-door-lock_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture seltouchscreen = SvgPicture.asset(
    'assets/images/selected-touch-screen_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selLedlights = SvgPicture.asset(
    'assets/images/selected-led-lights_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selRearViewCamera = SvgPicture.asset(
    'assets/images/selected-rear-view-camera_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selNavigation = SvgPicture.asset(
    'assets/images/selected-navigation_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selcruisControl = SvgPicture.asset(
    'assets/images/selected-cruise-control_ic.svg',
    height: sh(15),
    width: sw(15),
  );
  static SvgPicture selHeatedseats = SvgPicture.asset(
    'assets/images/selected-heated-seats_ic.svg',
    height: sh(15),
    width: sw(15),
  );
}
