import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_test/utils/assets_path.dart';
import 'package:ui_test/utils/color.dart';
import 'package:ui_test/utils/spacer.dart';
import 'package:ui_test/utils/typograpgy.dart';
import 'package:ui_test/widgets/components/custom_image_holder.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.black,
        shape: const Border(
            bottom: BorderSide(color: AppColor.borderColor, width: 1)),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.white,
            )),
        title: Text(
          'Kafiul Islam',
          style: tTextStyle600.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [_buildProfileSection()],
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomImageHolder(imageUrl: userImage, height: 80, width: 80),
            Column(
              children: [
                Text(
                  '277',
                  style: tTextStyle600.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 4,),
                Text(
                  'Followers',
                  style: tTextStyleRegular,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '2',
                  style: tTextStyle600.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 4,),
                Text(
                  'Following',
                  style: tTextStyleRegular,
                ),
              ],
            ),
          ],
        ), 
        eightVerticalSpace,
        Row(children: [
          Text('Test Me',style: tTextStyle600.copyWith(fontSize: 24),),
          SvgPicture.asset(verifyIcon)
        ],),
        eightVerticalSpace,
        Text('Here to create memories for you!', style: tTextStyleRegular,),
        eightVerticalSpace,
        Row(children: [
          SvgPicture.asset(locationIcon),
          Text('Accra, Ghana',style: tTextStyleRegular,),
          const Spacer(),
          SvgPicture.asset(instagramIcon),
          const SizedBox(width: 4,),
          SvgPicture.asset(facebookIcon),

        ],)
      ],
    );
  }
}
