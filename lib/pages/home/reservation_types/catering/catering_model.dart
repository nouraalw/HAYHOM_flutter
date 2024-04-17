import '/flutter_flow/flutter_flow_util.dart';
import 'catering_widget.dart' show CateringWidget;
import 'package:flutter/material.dart';

class CateringModel extends FlutterFlowModel<CateringWidget> {
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
