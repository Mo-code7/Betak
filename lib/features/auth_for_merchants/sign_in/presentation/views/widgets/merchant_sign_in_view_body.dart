import 'package:betak/core/utils/styles.dart';
import 'package:betak/core/widgets/custom_button.dart';
import 'package:betak/features/auth_for_client/sign_in/presentation/views/widgets/facebook_sign_up_button.dart';
import 'package:betak/features/auth_for_client/sign_in/presentation/views/widgets/google_sign_up_button.dart';
import 'package:betak/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/widgets/password_text_field.dart';

class MerchantSignInViewBody extends StatefulWidget {
  const MerchantSignInViewBody({super.key});

  @override
  State<MerchantSignInViewBody> createState() => _MerchantSignInViewBodyState();
}

class _MerchantSignInViewBodyState extends State<MerchantSignInViewBody> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Padding(
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
          const SizedBox(
            height: 12,
          ),
          Center(child: SvgPicture.asset(Assets.imagesLogo1)),
          const SizedBox(
            height: 25,
          ),
          Text(
            'تسجيل الدخول',
            style:
                Styles.styleSemiBoldInter30.copyWith(color: Styles.blueSky),
          ),
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: .5,
                    color: Color(0xFF5D5E61),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  'سجل دخولك عبر الايميل',
                  style: Styles.styleRegularInter16
                      .copyWith(color: const Color(0xFF5D5E61)),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Expanded(
                  child: Divider(
                    thickness: .5,
                    color: Color(0xFF5D5E61),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 65,
            width: screenWidth * 9,
            decoration: BoxDecoration(
              color: const Color(0xFFE0E3E8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  border: InputBorder.none,
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PasswordTextField(
            borderRadius: 12,
            hint: 'Enter your Password',
            checkVisibility: true,
            screenWidth: screenWidth,
          ),
          SizedBox(
            height: screenHeight > 892 ? 40 : 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Remember me',
                  style: Styles.styleRegularInter16,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: _isChecked ? Colors.grey : Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: _isChecked
                          ? Colors.transparent
                          : Colors.transparent,
                    ),
                    width: 26.0,
                    height: 26.0,
                    child: _isChecked
                        ? const Icon(
                            Icons.check,
                            size: 20.0,
                            color: Colors.green,
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),

          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomButton1(
              backgroundColor: Styles.blueSky,
              onPressed: () {},
              text: 'تسجيل دخول',
              textStyle:
                  Styles.styleSemiBoldInter18.copyWith(color: Colors.white),
              buttonWidth: screenWidth * 0.9,
                buttonHeight: screenHeight * .08,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
