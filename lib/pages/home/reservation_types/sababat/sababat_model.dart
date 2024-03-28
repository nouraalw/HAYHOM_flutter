import '/flutter_flow/flutter_flow_util.dart';
import 'sababat_widget.dart' show SababatWidget;
import 'package:flutter/material.dart';

class SababatModel extends FlutterFlowModel<SababatWidget> {
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
