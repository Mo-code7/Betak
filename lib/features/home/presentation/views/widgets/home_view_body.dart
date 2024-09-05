import 'package:betak/core/utils/styles.dart';
import 'package:betak/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:betak/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<String> categories = [
      'ازياء نسائيه',
      'اجهزه اللابتوب',
      'العاب الفيديو',
      'اثاث',
      'اجهزه منزليه',
      'الالكترونيات',
      'مجموعات',
    ];
    List<String> categoryImages = [
      Assets.imagesCategory1,
      Assets.imagesCategory2,
      Assets.imagesCategory3,
      Assets.imagesCategory4,
      Assets.imagesCategory5,
      Assets.imagesCategory6,
    ];

    List<String> categoryName = [
      'أَرَائِكُ',
      'كراسي',
      'وحدات تلفزيون',
      'طَاوِلَات',
      'مجموعات الغرفة',
      'سراير'
    ];
    double width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Container(
          height: 157+7,
          width: double.infinity,
          color: const Color(0xFF455A64),
          child: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 37),
                  child: SvgPicture.asset(
                    Assets.imagesLogo1,
                    width: 51,
                    height: 53,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 55,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF3F7F8),
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      CustomSearchTextField(screenWidth: width),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11, top: 9),
          child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'الفئات',
                style: Styles.styleBoldIrinaSans48
                    .copyWith(fontSize: 24, color: const Color(0xFF455A64)),
              )),
        ),
        Container(
          width: double.infinity,
          height: 52,
          color: Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () => setState(() => selectedIndex = index),
                child: Container(
                  width: 62,
                  height: 52,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFF3F7F8) : Colors.white,
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFFDEC2C2)
                          : Colors.transparent,
                      width: 2.0, // Adjust border width as needed
                    ),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: Styles.styleRegularIrinaSans10,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              padding: const EdgeInsets.only(bottom: 20,top: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10, // Spacing between columns
                mainAxisSpacing: 12,

              ),
              itemCount: categoryImages.length, // Number of items
              itemBuilder: (BuildContext context, int index) {
                return SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(categoryImages[index]),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              categoryName[index],
                              style: Styles.styleBoldInriaSans16
                                  .copyWith(fontSize: 16,color: const Color(0xFF455A64)),
                            )),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
