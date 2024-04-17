import '/flutter_flow/flutter_flow_util.dart';
import 'decor_widget.dart' show DecorWidget;
import 'package:flutter/material.dart';

class DecorModel extends FlutterFlowModel<DecorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
  }
}
