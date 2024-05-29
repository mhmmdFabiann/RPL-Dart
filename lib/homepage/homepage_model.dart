import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  /// State fields for stateful widgets in this page.
  final FocusNode unfocusNode;

  /// Constructor
  HomepageModel() : unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {
    // Add initialization code here if needed
  }

  @override
  void dispose() {
    // Dispose the focus node to free up resources
    unfocusNode.dispose();
    super.dispose();
  }
}
