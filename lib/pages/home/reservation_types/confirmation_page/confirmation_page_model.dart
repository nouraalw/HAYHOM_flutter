import '/flutter_flow/flutter_flow_util.dart';
import 'confirmation_page_widget.dart' show ConfirmationPageWidget;
import 'package:flutter/material.dart';

class ConfirmationPageModel extends FlutterFlowModel<ConfirmationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
