import 'package:betak/core/widgets/phone_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../core/widgets/password_text_field.dart';
import '../../../../../../generated/assets.dart';

class ClientSignUpViewBody extends StatefulWidget {
  const ClientSignUpViewBody({super.key});

  @override
  State<ClientSignUpViewBody> createState() => _ClientSignUpViewBodyState();
}

class _ClientSignUpViewBodyState extends State<ClientSignUpViewBody> {
  final TextEditingController _phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF455A64),
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            Center(child: SvgPicture.asset(Assets.imagesLogo1)),
            const SizedBox(
              height: 30,
            ),
            Text(
              'سجل حساب',
              style:
                  Styles.styleSemiBoldInter30.copyWith(color: Styles.blueSky),
            ),
            Text(
              'جديد',
              style: Styles.styleSemiBoldInter30
                  .copyWith(color: Styles.blueSky, height: .5),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
            CustomTextField(
              screenWidth: screenWidth,
              hint: 'Enter your Name',
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
            CustomTextField(
              screenWidth: screenWidth,
              hint: 'Enter your Email',
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Address',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
            CustomTextField(
              screenWidth: screenWidth,
              hint: 'Enter your Address',
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Phone',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
             PhoneField(screenWidth: screenWidth,),
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: CustomButton1(
                backgroundColor: Styles.blueSky,
                onPressed: () {},
                text: 'أنشئ كلمة المرور',
                textStyle:
                    Styles.styleSemiBoldInter18.copyWith(color: Colors.white),
                buttonWidth: screenWidth * 0.9,
                buttonHeight: screenHeight * .08,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
