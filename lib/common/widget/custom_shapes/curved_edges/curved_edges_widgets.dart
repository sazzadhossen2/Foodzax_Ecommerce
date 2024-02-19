import 'package:flutter/cupertino.dart';

import 'curved_edgges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child,
  });
  final Widget?child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCustomeCurvedEdges(),
        child: child

    );
  }
}