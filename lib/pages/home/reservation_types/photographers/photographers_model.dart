import '/flutter_flow/flutter_flow_util.dart';
import 'photographers_widget.dart' show PhotographersWidget;
import 'package:flutter/material.dart';

class PhotographersModel extends FlutterFlowModel<PhotographersWidget> {
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
