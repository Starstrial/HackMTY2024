import '/flutter_flow/flutter_flow_util.dart';
import 'id_widget.dart' show IdWidget;
import 'package:flutter/material.dart';

class IdModel extends FlutterFlowModel<IdWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
