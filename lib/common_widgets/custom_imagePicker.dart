import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CustomImagePicker extends StatelessWidget {
  CustomImagePicker(
      {super.key, required this.controller, this.hint, this.icon, this.title});
  final String? title;
  final String? hint;
  TextEditingController controller = TextEditingController();
  String imgeUrl = '';
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!,
            style: TextStyle(
                fontFamily: regular, fontSize: 14.sp, color: titlegreyColor)),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          onTap: () {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Center(
                      child: Text(
                    'Please upload',
                    style: TextStyle(color: greenColor, fontSize: 18.sp),
                  )),
                  content: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          // capture image from camera
                          ImagePicker imagePicker = ImagePicker();
                          XFile? file = await imagePicker.pickImage(
                              source: ImageSource.gallery);

                          if (file == null) return;
                          //Import dart:core
                          String uniqueFileName =
                              DateTime.now().millisecondsSinceEpoch.toString();
                          //Get a reference to storage root
                          Reference referenceRoot =
                              FirebaseStorage.instance.ref();
                          Reference referenceDirImages =
                              referenceRoot.child('images');

                          //Create a reference for the image to be stored
                          Reference referenceImageToUpload =
                              referenceDirImages.child(uniqueFileName);
                          //Handle errors/success
                          try {
                            //Store the file
                            await referenceImageToUpload
                                .putFile(File(file.path));
                            //Success: get the download URL
                            imgeUrl =
                                await referenceImageToUpload.getDownloadURL();

                            controller.text = imgeUrl;
                          } catch (error) {
                            //Some error occurred
                          }
                        },
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            backgroundColor: greenColor,
                            textStyle: const TextStyle(color: Colors.white)),
                        child: Text(
                          'Gallery',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          // capture image from camera
                          ImagePicker imagePicker = ImagePicker();
                          XFile? file = await imagePicker.pickImage(
                              source: ImageSource.camera);

                          if (file == null) return;
                          //Import dart:core
                          String uniqueFileName =
                              DateTime.now().millisecondsSinceEpoch.toString();
                          //Get a reference to storage root
                          Reference referenceRoot =
                              FirebaseStorage.instance.ref();
                          Reference referenceDirImages =
                              referenceRoot.child('images');

                          //Create a reference for the image to be stored
                          Reference referenceImageToUpload =
                              referenceDirImages.child(uniqueFileName);
                          //Handle errors/success
                          try {
                            //Store the file
                            await referenceImageToUpload
                                .putFile(File(file.path));
                            //Success: get the download URL
                            imgeUrl =
                                await referenceImageToUpload.getDownloadURL();

                            controller.text = imgeUrl;
                          } catch (error) {
                            //Some error occurred
                          }
                        },
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            backgroundColor: greenColor,
                            textStyle: const TextStyle(color: Colors.white)),
                        child: Text(
                          'Camera',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: greenColor, fontSize: 15.sp),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          readOnly: true,
          // validator: ((value) {
          //   if (value!.isEmpty) {
          //     return ' Requird';
          //     return null;
          //   }
          // }),
          style: TextStyle(
              color: blackTitle, fontSize: 15.sp, fontFamily: regular),
          cursorColor: greenColor,
          controller: controller,
          autocorrect: false,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
            suffixIcon: Icon(
              icon,
              color: greenColor,
              size: 30,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.r),
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.r),
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.5.w),
              borderRadius: BorderRadius.circular(9.r),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.5.w),
              borderRadius: BorderRadius.circular(9.r),
            ),
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: hintgreyColor),
            hintText: hint,
            isDense: true,
            fillColor: greyColor,
            filled: true,
          ),
        ),
      ],
    );
  }
}
