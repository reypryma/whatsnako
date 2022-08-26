import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'constants.dart';

class WhatsNakoImage {

  //Main Image
  static const String bgImageWAFull = '$DEFAULT_IMAGES_URL/bg1.png';
  static const String bgImageFavFull = '$DEFAULT_IMAGES_URL/Image_24.webp';
  static const String bgThanks = '$BOCCHI_IMAGES_URL/thanks.jpg';

  //Profile
  static const String profileBocchi = '$BOCCHI_IMAGES_URL/haa.png';
  static const String profileSotockha = '$BOCCHI_IMAGES_URL/sotoka.png';
  static const String profileNako = '$BOCCHI_IMAGES_URL/nako.jpg';
  static const String profileAru = '$BOCCHI_IMAGES_URL/aru.png';

}


Widget commonCachedNetworkImage(
    String? url, {
      double? height,
      double? width,
      BoxFit? fit,
      AlignmentGeometry? alignment,
      bool usePlaceholderIfUrlEmpty = true,
      double? radius,
      Color? color,
      BlendMode? colorBlendMode,
    }) {
  if (url!.validate().isEmpty) {
    return placeHolderWidget(height: height, width: width, fit: fit, alignment: alignment, radius: radius);
  } else if (url.validate().startsWith('http')) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      color: color,
      colorBlendMode: colorBlendMode,
      alignment: alignment as Alignment? ?? Alignment.center,
      errorWidget: (_, s, d) {
        return placeHolderWidget(height: height, width: width, fit: fit, alignment: alignment, radius: radius);
      },
      placeholder: (_, s) {
        if (!usePlaceholderIfUrlEmpty) return SizedBox();
        return placeHolderWidget(height: height, width: width, fit: fit, alignment: alignment, radius: radius);
      },
    );
  } else {
    return Image.network(
      url,
      height: height,
      width: width,
      fit: fit,
      alignment: alignment ?? Alignment.center,
    ).cornerRadiusWithClipRRect(radius ?? defaultRadius);
  }
}


Widget placeHolderWidget({double? height, double? width, BoxFit? fit, AlignmentGeometry? alignment, double? radius}) {
  return Image.asset('images/app/placeholder.jpg', height: height, width: width, fit: fit ?? BoxFit.cover, alignment: alignment ?? Alignment.center)
      .cornerRadiusWithClipRRect(radius ?? defaultRadius);
}