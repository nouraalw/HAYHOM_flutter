import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reservation_widget.dart' show ReservationWidget;
import 'package:flutter/material.dart';

class ReservationModel extends FlutterFlowModel<ReservationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ReservationRecord> simpleSearchResults = [];
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for ListViewRes widget.
  ScrollController? listViewRes;

  @override
  void initState(BuildContext context) {
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
    listViewRes = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController1?.dispose();
    textFieldFocusNode?.dispose();

    listViewController2?.dispose();
    listViewRes?.dispose();
  }
}
