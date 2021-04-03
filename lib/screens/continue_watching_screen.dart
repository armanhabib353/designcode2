import 'package:flutter/material.dart';
import 'package:learning/components/list/certificate_viewer.dart';
import 'package:learning/components/list/continue_watching_list.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../constants.dart';

class ContinueWatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(41),
      ),
      minHeight: 85,
      maxHeight: MediaQuery.of(context).size.height * 0.70,
      color: kCardPopupBackgroundColor,
      boxShadow: [
        BoxShadow(color: kShadowColor, offset: Offset(0, -12), blurRadius: 32)
      ],
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 16),
              child: Container(
                height: 3,
                width: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xFF956B5E)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Continue Watching",
              style: kTitle1Style,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: ContinueWatchingList(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Certificates",
              style: kTitle1Style,
            ),
          ),
          Expanded(child: CertificateViewer()),
        ],
      ),
    );
  }
}








