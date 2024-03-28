import '/flutter_flow/flutter_flow_util.dart';
import 'catering_widget.dart' show CateringWidget;
import 'package:flutter/material.dart';

class CateringModel extends FlutterFlowModel<CateringWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
  }
}
