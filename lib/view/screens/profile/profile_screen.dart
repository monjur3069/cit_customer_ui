import 'dart:io';
import 'package:cit_customer/routes/routes_name.dart';
import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/common_widgets/common_image_widget.dart';
import 'package:cit_customer/view/common_widgets/getFormatedDateTime.dart';
import 'package:cit_customer/view/screens/profile/profile_controller.dart';
import 'package:cit_customer/view/screens/profile/widget/common_text_field.dart';
import 'package:cit_customer/view/screens/profile/widget/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: scaffoldBg,
        extendBodyBehindAppBar: true,
        body: Form(
          key: controller.formKey,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    color: scaffoldBg,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ClipPath(
                          clipper: CustomClipperPage(),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: const [0.1, 0.5, 0.7, 0.9],
                                colors: [
                                  Color(0xfF4ec9df),
                                  Color(0xff63a1d0),
                                  Color(0xff3576a7),
                                  Color(0xff344986),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () async {
                              await showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      DraggableScrollableSheet(
                                        initialChildSize: 0.43,
                                        minChildSize: 0.43,
                                        maxChildSize: 0.43,
                                        expand: false,
                                        builder: (BuildContext context,
                                            ScrollController scrollController) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            decoration: BoxDecoration(
                                                color:
                                                scaffoldBg,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    kSize)),
                                            child: ListView(
                                              controller: scrollController,
                                              physics:
                                              const NeverScrollableScrollPhysics(),
                                              children: [
                                                ListTile(
                                                  onTap: () {
                                                    controller.imageSource =
                                                        ImageSource.camera;
                                                    controller.getImage();
                                                    Get.back();
                                                  },
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: kSize * 1.5,
                                                      child: Icon(
                                                        Icons.camera_alt,
                                                        color:
                                                        primaryBlack,
                                                        size: kSize * 1.2,
                                                      )),
                                                  title: CommonTextWidget(
                                                    text: 'Take Photo',
                                                    fontSize: kSize,
                                                    fontColor:
                                                    primaryBlack,
                                                  ),
                                                ),
                                                ListTile(
                                                  onTap: () {
                                                    controller.imageSource =
                                                        ImageSource.gallery;
                                                    controller.getImage();
                                                    Get.back();
                                                  },
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: kSize * 1.5,
                                                      child: Icon(
                                                        Icons.folder_copy,
                                                        color:
                                                        primaryBlack,
                                                        size: kSize * 1.2,
                                                      )),
                                                  title: CommonTextWidget(
                                                    text: 'Upload Photo',
                                                    fontSize: kSize,
                                                    fontColor:
                                                    primaryBlack,
                                                  ),
                                                ),
                                                ListTile(
                                                  onTap: () => Get.to(
                                                      controller.imgUrl.isEmpty
                                                          ? const CommonImageWidget(
                                                        imgUrl:
                                                        "https://cdn.pixabay.com/photo/2024/02/22/09/04/warehouse-8589487_640.jpg",
                                                      )
                                                          : SafeArea(
                                                        child: SizedBox(
                                                          height: MediaQuery.of(
                                                              context)
                                                              .size
                                                              .height,
                                                          width: MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width,
                                                          child: Center(
                                                            child: Hero(
                                                              tag: 'dash',
                                                              child:
                                                              PhotoView(
                                                                imageProvider:
                                                                FileImage(
                                                                    controller.image!),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      curve: Curves.easeInOut,
                                                      transition:
                                                      Transition.fade,
                                                      duration: const Duration(
                                                          seconds: 1)),
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: kSize * 1.5,
                                                      child: Container(
                                                          padding:
                                                          EdgeInsets.zero,
                                                          margin:
                                                          EdgeInsets.zero,
                                                          alignment:
                                                          Alignment.center,
                                                          height: kHeight / 45,
                                                          width: kWidth / 25,
                                                          decoration: BoxDecoration(
                                                              color:
                                                              primaryBlack,
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  2)),
                                                          child: Icon(
                                                            Icons.person,
                                                            color: Colors
                                                                .grey.shade100,
                                                            size: kSize * 1.2,
                                                          ))),
                                                  title: CommonTextWidget(
                                                    text: 'See profile picture',
                                                    fontSize: kSize,
                                                    fontColor:
                                                    primaryBlack,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ));
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: primaryWhite,
                                  radius: kSize * 3.28,
                                  child: Obx(
                                        () => ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: controller.imgUrl.value.isEmpty
                                          ? FadeInImage.assetNetwork(
                                          fit: BoxFit.cover,
                                          height: 80,
                                          width: 80,
                                          placeholder: "images/loading.gif",
                                          image:
                                          "https://cdn.pixabay.com/photo/2024/02/22/09/04/warehouse-8589487_640.jpg",
                                          imageErrorBuilder: (c, o, s) {
                                            return Image.asset(
                                              "images/no_image.png",
                                              fit: BoxFit.cover,
                                              height: 80,
                                              width: 80,
                                            );
                                          })
                                          : Image.file(
                                        File(controller.image!.path)
                                            .absolute,
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 50,
                                  right: 0,
                                  bottom: 0,
                                  child: CircleAvatar(
                                    backgroundColor: primaryWhite,
                                    radius: kSize * .95,
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: primaryBlack,
                                      size: kSize * 1.2,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kHeight / 70,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///Name
                          CommonTextField(
                            controller: controller.nameController,
                            icon: Icons.person_outline,
                            title:
                                'No Name',
                          ),
                          ///Email
                          CommonTextField(
                            controller: controller.emailController,
                            icon: Icons.mail,
                            title:
                                'No email',
                          ),

                          ///Phone
                          CommonTextField(
                            controller: controller.phoneController,
                            icon: Icons.phone_iphone_outlined,
                            title:
                                'No Phone',
                          ),
                          ///Address
                          CommonTextField(
                              title: '482/12 Uttara',
                              icon: Icons.business_center_outlined,
                              controller: controller.addressController),

                          //Date Of Birth
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12, bottom: 10),
                            child: ListTile(
                                contentPadding:
                                const EdgeInsets.only(left: 16.0),
                                minLeadingWidth: 0,
                                horizontalTitleGap: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(kSize)),
                                tileColor: primaryWhite,
                                leading: Icon(
                                  Icons.cake_outlined,
                                  color: const Color(0xff2B3A4A),
                                  size: kSize * 1.5,
                                ),
                                title: TextButton(
                                    onPressed: () async {
                                      await controller
                                          .selectBirthDate(context);
                                    },
                                    child: Row(
                                      children: [
                                        Obx(
                                              () => Align(
                                            alignment: Alignment.centerLeft,
                                            child: CommonTextWidget(
                                                fontColor: primaryGrey,
                                                fontSize: kSize * 1.2,
                                                text: controller
                                                    .addDate.value ==
                                                    null
                                                    ? 'Add Date Of Birth'
                                                    : getFormattedDateTime(
                                                  controller
                                                      .addDate.value!,
                                                  'dd/MM/yyyy',
                                                )),
                                          ),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.edit,
                                          size: kSize,
                                          color: primaryBlack,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        )
                                      ],
                                    ))),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: ()=>controller.onUpdate(),
                              child: Container(
                                width: 200,
                                alignment: Alignment.center,
                                height: 50,
                                margin: const EdgeInsets.symmetric(vertical: 15),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    stops: const [0.1, 0.5, 0.7, 0.9],
                                    colors: [
                                      Color(0xfF4ec9df),
                                      Color(0xff63a1d0),
                                      Color(0xff3576a7),
                                      Color(0xff344986),
                                    ],
                                  ),
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                                ),
                                child: const Text(
                                  'Update',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 5,
                top: 25,
                child: PopupMenuButton<int>(
                  surfaceTintColor: Colors.transparent,
                  color: primaryWhite,
                  iconColor: primaryWhite,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: ListTile(leading: Icon(Icons.vpn_key),title: SizedBox(width: 50,child: CommonTextWidget(text: 'Password Change',maxLine: 2,)),),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: ListTile(leading: Icon(Icons.exit_to_app_outlined),title: CommonTextWidget(text: 'Logout'),),
                    ),
                    // Add more options as needed
                  ],
                  onSelected: (value) {
                    // Handle the selected option
                    switch (value) {
                      case 1:
                      Get.toNamed(Routes.changePasswordRoute);
                        break;
                      case 2:
                        Get.offAllNamed(Routes.splashRoute);
                        break;


                    // Add more cases as needed
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
