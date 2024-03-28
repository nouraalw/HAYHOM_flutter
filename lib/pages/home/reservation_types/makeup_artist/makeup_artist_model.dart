import '/flutter_flow/flutter_flow_util.dart';
import 'makeup_artist_widget.dart' show MakeupArtistWidget;
import 'package:flutter/material.dart';

class MakeupArtistModel extends FlutterFlowModel<MakeupArtistWidget> {
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
