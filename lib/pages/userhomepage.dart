import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:logindemo/controller/tapcontroller.dart';
import 'package:mime/mime.dart';
import 'package:mime_type/mime_type.dart';

@RoutePage()
class UserhomePage extends StatefulWidget {
  const UserhomePage({super.key});

  @override
  _FilePickerDemoState createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<UserhomePage> {
  String _fileName = 'No file selected';
  String _filePath = '';
  String _fileSize = '';
  DateTime? _lastModified;
  String _actualExtension = '';
  String _mime = '';

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      List<int> bytes = await file.readAsBytes();
      setState(() {
        _fileName = result.files.single.name;
        _filePath = result.files.single.path!;
        _fileSize =
            '${(result.files.single.size / 1024).toStringAsFixed(2)} KB';

        _actualExtension = result.files.single.extension!;

        _mime = lookupMimeType(result.files.single.path!, headerBytes: bytes)!;
      });

      // Get the mime type of the file

      // Compare mime type with declared extension
      if (_mime.contains('/')) {
        String declaredExtension = _mime.split('/').last;
        if (declaredExtension.substring(0, 2) !=
            _actualExtension.substring(0, 2)) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Warning'),
                content: const Text(
                    'The file extension does not match its actual type.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));

    return Scaffold(
      appBar: AppBar(
        title: const Text('File Metadata Checker'),
        actions: [
          const Icon(Icons.logout),
          TextButton(
            onPressed: () {
              controller.logoutaccount();
            },
            child: const Text(
              'Log Out',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: GetBuilder<GetxTapController>(builder: (_) {
        return Center(
          child: controller.alluserdata == null
              ? const SizedBox(
                  height: 70, width: 70, child: CircularProgressIndicator())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome ${controller.alluserdata!.firstName}',
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                      onPressed: _openFilePicker,
                      child: const Text('Select File'),
                    ),
                    const SizedBox(height: 20),
                    Text('File Name: $_fileName'),
                    Text('File Path: $_filePath'),
                    Text('File Size: $_fileSize'),
                    Text('Last Modified: $_lastModified'),
                    Text('Actual Extension: $_actualExtension'),
                    Text('Mime Type: $_mime'),
                  ],
                ),
        );
      }),
    );
  }
}
