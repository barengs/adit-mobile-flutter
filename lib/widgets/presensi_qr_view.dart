import 'package:flutter/material.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PresensiQRView extends StatefulWidget {
  const PresensiQRView({super.key});

  @override
  State<PresensiQRView> createState() => _PresensiQRViewState();
}

class _PresensiQRViewState extends State<PresensiQRView> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool isFlashOn = false;
  bool hasPermission = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Cek dan request permission kamera
  Future<void> _checkCameraPermission() async {
    final status = await Permission.camera.status;

    if (status.isGranted) {
      setState(() {
        hasPermission = true;
        isLoading = false;
      });
    } else if (status.isDenied) {
      final result = await Permission.camera.request();
      setState(() {
        hasPermission = result.isGranted;
        isLoading = false;
      });
    } else {
      setState(() {
        hasPermission = false;
        isLoading = false;
      });
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;

    // Cek status flash saat awal
    controller.getFlashStatus().then((value) {
      if (mounted) {
        setState(() {
          isFlashOn = value ?? false;
        });
      }
    });

    controller.scannedDataStream.listen((scanData) {
      // Tampilkan hasil QR
      debugPrint('QR Code: ${scanData.code}');

      // Hentikan kamera setelah scan
      controller.pauseCamera();

      // Tampilkan hasilnya ke user
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('QR Terdeteksi: ${scanData.code}')),
        );
      }
    });
  }

  void _toggleFlash() async {
    await controller?.toggleFlash();
    final status = await controller?.getFlashStatus();
    if (mounted) {
      setState(() {
        isFlashOn = status ?? false;
      });
    }
  }

  // Widget untuk menampilkan error permission
  Widget _buildPermissionDenied() {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      height: 417,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(31),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.camera_alt_outlined, size: 64, color: Colors.grey[600]),
          const SizedBox(height: 16),
          Text(
            'Akses Kamera Diperlukan',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Berikan izin akses kamera\nuntuk scan QR Code',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              await openAppSettings();
            },
            child: const Text('Buka Pengaturan'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        const Text(
          'Arahkan kamera ke QR Code untuk presensi',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Color.fromRGBO(107, 107, 107, 1.0),
          ),
        ),
        const SizedBox(height: 12),

        // Loading indicator
        if (isLoading)
          Container(
            width: MediaQuery.of(context).size.width - 30,
            height: 417,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(31),
            ),
            child: const Center(child: CircularProgressIndicator()),
          )
        // Permission denied
        else if (!hasPermission)
          _buildPermissionDenied()
        // Camera view
        else
          Container(
            width: MediaQuery.of(context).size.width - 30,
            height: 417,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(31),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(31),
              child: Stack(
                children: [
                  QRView(
                    key: qrKey,
                    onQRViewCreated: _onQRViewCreated,
                    overlay: QrScannerOverlayShape(
                      borderColor: colors.primary,
                      borderRadius: 16,
                      borderLength: 30,
                      borderWidth: 8,
                      cutOutSize: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: GestureDetector(
                      onTap: _toggleFlash,
                      child: Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: colors.primary,
                          shape: BoxShape.circle,
                        ),
                        child:
                            isFlashOn
                                ? Icon(Icons.flash_off)
                                : Icon(Icons.flash_on),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
