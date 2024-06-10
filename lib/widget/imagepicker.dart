import 'dart:developer';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logindemo/controller/tapcontroller.dart';

class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker({super.key});

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    log('From Build :${controller.profileimageurl!}');
    return GetBuilder<GetxTapController>(builder: (_) {
      return Column(
        children: [
          controller.profileimageurl == null
              ? kIsWeb
                  ? controller.webImage != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.memory(
                            controller.webImage!,
                            fit: BoxFit.cover,
                            height: 110,
                            width: 110,
                          ),
                        )
                      : InkWell(
                          onTap: () => _showPicker(context, controller),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 110,
                            height: 110,
                            child: Image.asset('assets/images/uploadpro.jpg'),
                          ),
                        )
                  : controller.image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            controller.image!,
                            fit: BoxFit.cover,
                            height: 110,
                            width: 110,
                          ),
                        )
                      : InkWell(
                          onTap: () => _showPicker(context, controller),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 110,
                            height: 110,
                            child: Image.asset('assets/images/uploadpro.jpg'),
                          ),
                        )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    controller.profileimageurl!,
                    fit: BoxFit.cover,
                    height: 110,
                    width: 110,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      log('From Build :${controller.profileimageurl!}');
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
        ],
      );
    });
  }

  void _showPicker(BuildContext context, GetxTapController controller) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  controller.pickImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  controller.pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
