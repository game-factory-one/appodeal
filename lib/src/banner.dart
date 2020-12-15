import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppodealBanner extends StatelessWidget {
  final String placementName;

  AppodealBanner ({ this.placementName });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      child: Platform.isIOS
        ? UiKitView(
            viewType: 'plugins.io.vinicius.appodeal/banner',
            creationParams: {
              placementName: this.placementName
            },
            creationParamsCodec: const StandardMessageCodec(),
          )
        : AndroidView(
            viewType: 'plugins.io.vinicius.appodeal/banner',
            creationParams: {
              placementName: this.placementName
            },
            creationParamsCodec: const StandardMessageCodec(),
          ),
    );
  }
}
