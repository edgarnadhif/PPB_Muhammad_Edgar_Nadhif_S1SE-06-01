import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker/place_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final LatLng _initialMapCenter = const LatLng(-6.901810, 109.655968);
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: _initialMapCenter,
    zoom: 11.0,
  );

  late GoogleMapController _mapController;

  // Fungsi untuk menangani pembentukan controller Google Maps
  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  // Fungsi untuk membuat marker default
  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: const MarkerId("marker_1"),
        position: _initialMapCenter,
        infoWindow: const InfoWindow(title: 'Rumah ku istanaku'),
        rotation: 90,
      ),
    };
  }

  // Fungsi untuk membuka Place Picker
  void _openPlacePicker() async {
    try {
      LocationResult? result = await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PlacePicker(
            "AIzaSyCJ_C0Tc29ZQ4lRmCTTDGt7hmuXL3e3pTg", // Ganti dengan API Key Anda
            displayLocation: _initialMapCenter, // Lokasi awal pada Place Picker
          ),
        ),
      );

      if (result != null && result.latLng != null) {
        print("Place Picked: ${result.formattedAddress}");

        // Memindahkan kamera ke lokasi yang dipilih
        _mapController.animateCamera(
          CameraUpdate.newLatLng(result.latLng!),
        );

        // Menambahkan marker pada lokasi yang dipilih
        setState(() {
          _createMarker().add(
            Marker(
              markerId: const MarkerId("picked_location"),
              position: result.latLng!,
              infoWindow: InfoWindow(
                title: "Picked Location",
                snippet: result.formattedAddress,
              ),
            ),
          );
        });
      }
    } catch (e) {
      print("Error picking place: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Maps'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _openPlacePicker,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
        onMapCreated: _onMapCreated,
        zoomControlsEnabled: false, // Menghilangkan kontrol zoom default
        markers: _createMarker(),
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose(); // Membersihkan controller saat widget dihancurkan
    super.dispose();
  }
}
