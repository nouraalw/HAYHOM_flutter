import '/flutter_flow/flutter_flow_util.dart';
import 'edit_reservation_widget.dart' show EditReservationWidget;
import 'package:flutter/material.dart';

class EditReservationModel extends FlutterFlowModel<EditReservationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dateFocusNode?.dispose();
    dateTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();
  }
}
