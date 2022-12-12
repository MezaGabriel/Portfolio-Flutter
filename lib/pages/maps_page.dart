import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qrscanner/providers/scan_list_provider.dart';
import 'package:qrscanner/widgets/scan_tiles.dart';

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(type: 'http');
  }
}
