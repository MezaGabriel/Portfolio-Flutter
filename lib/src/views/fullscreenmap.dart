import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:http/http.dart' as http;

class FullScreenMap extends StatefulWidget {
  @override
  State<FullScreenMap> createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController? mapController;
  final center = LatLng(-26.814585, -65.225724);
  String selectedStyle =
      'mapbox://styles/mezagabriel/cld7vwpz4001101o3wutzdqmd';
  final darkStyle = 'mapbox://styles/mezagabriel/cld7vuw20000m01nuuay680g1';
  final clearStyle = 'mapbox://styles/mezagabriel/cld7vwpz4001101o3wutzdqmd';

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
    _onStyleLoaded();
  }

  void _onStyleLoaded() {
    addImageFromAsset("assetImage", "assets/custom-icon.png");
    addImageFromUrl(
        "networkImage", Uri.parse("https://via.placeholder.com/50"));
  }

  /// Adds an asset image to the currently displayed style
  Future<void> addImageFromAsset(String name, String assetName) async {
    final ByteData bytes = await rootBundle.load(assetName);
    final Uint8List list = bytes.buffer.asUint8List();
    return mapController!.addImage(name, list);
  }

  /// Adds a network image to the currently displayed style
  Future<void> addImageFromUrl(String name, Uri uri) async {
    var response = await http.get(uri);
    return mapController!.addImage(name, response.bodyBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createMap(),
      floatingActionButton: floatingButtons(),
    );
  }

  Column floatingButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //Symbol
        FloatingActionButton(
          child: Icon(Icons.emoji_symbols),
          onPressed: (() {
            mapController?.addSymbol(
              SymbolOptions(
                geometry: center,
                // iconSize: 3,
                iconImage: 'assetImage',
                textField: 'This is your mark!',
                textOffset: Offset(0, 3),
              ),
            );
          }),
        ),

        SizedBox(height: 5),

        //ZoomOut
        FloatingActionButton(
          child: Icon(Icons.zoom_out),
          onPressed: (() {
            mapController?.animateCamera(
              CameraUpdate.zoomOut(),
            );
          }),
        ),

        SizedBox(height: 5),

        //ZoomIn
        FloatingActionButton(
          child: Icon(Icons.zoom_in),
          onPressed: (() {
            mapController?.animateCamera(
              CameraUpdate.zoomIn(),
            );
          }),
        ),

        SizedBox(height: 5),

        // Style
        FloatingActionButton(
          child: Icon(Icons.add_to_home_screen),
          onPressed: () {
            if (selectedStyle == darkStyle) {
              selectedStyle = clearStyle;
            } else {
              selectedStyle = darkStyle;
            }
            _onStyleLoaded();
            setState(() {});
          },
        ),
      ],
    );
  }

  MapboxMap createMap() {
    return MapboxMap(
      styleString: selectedStyle,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: center,
        zoom: 14,
      ),
    );
  }
}
