import 'package:betak/core/widgets/phone_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../core/widgets/password_text_field.dart';
import '../../../../../../generated/assets.dart';

class MerchantSignUpViewBody extends StatefulWidget {
  const MerchantSignUpViewBody({super.key});

  @override
  State<MerchantSignUpViewBody> createState() => _MerchantSignUpViewBodyState();
}

class _MerchantSignUpViewBodyState extends State<MerchantSignUpViewBody> {
  final TextEditingController _phoneController = TextEditingController();
  String _validationMessage = '';

  var _dropDownValue = 'ازياء نسائيه';
  var _items = [
    'ازياء نسائيه',
    'اجهزه اللابتوب',
    'العاب الفيديو',
    'اثاث',
    'اجهزه منزليه',
    'الالكترونيات'
  ];

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
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Product category',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
            Container(
              height: 65,
              width: screenWidth * 9,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E3E8),
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: DropdownButton(
                    iconSize: 30,
                    underline: const SizedBox(),
                    isExpanded: true,
                    items: _items.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropDownValue = newValue!;
                      });
                    },
                    value: _dropDownValue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
            PasswordTextField(
              hintColor: const Color(0xFF5D5D60),
              borderRadius: 12,
              hint: 'Create your Password',
              checkVisibility: false,
              screenWidth: screenWidth,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 2, bottom: 14),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm Password',
                    style: Styles.styleSemiBoldInter20,
                  )),
            ),
            PasswordTextField(
              hintColor: const Color(0xFF5D5D60),
              borderRadius: 12,
              hint: 'Confirm your Password',
              checkVisibility: false,
              screenWidth: screenWidth,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: CustomButton1(
                backgroundColor: Styles.blueSky,
                onPressed: () {},
                text: 'تسجيل حساب جديد',
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
