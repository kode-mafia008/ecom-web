import 'package:flutter/material.dart';
import 'package:gmap/src/ui/widgets/svg.dart';
import '../../constants/assets_constant.dart';
import '../../constants/ui_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: const BoxDecoration(color: UIConstant.kWhite),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTopBarMenu(),
                const SizedBox(height: 12),
                topNavMenu(),
                const SizedBox(height: 90),
                _buildFilterMenu(),
                const SizedBox(
                  height: 23,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ...UIConstant.categoryFilterMenuItems.values.map(
                        (e) => Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) =>
                                  print('checkbox pressed: $value'),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              e.title!,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  width: 156,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Color',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Wrap(
                        children: [
                          ...UIConstant.colorFilterItems.values
                              .map((e) => Container(
                                    height: 25,
                                    width: 25,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(width: 2),
                                      color: e,
                                    ),
                                  )),
                        ],
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  width: 156,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Size',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }

  Row _buildFilterMenu() {
    return Row(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 70),
              child: const Text(
                'Filters',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              'Clear Filters',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffc4c4c4),
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        Container(
          width: 256,
          height: 36,
          margin: const EdgeInsets.only(left: 600),
          decoration: const BoxDecoration(
            color: Color(0xffEBF2FF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Show all',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 36,
                width: 85,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: const Color(0xff2979ff).withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: const Color(0xff1b4ea3).withOpacity(0.2),
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ]),
                child: const Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 14,
                      color: UIConstant.kBlue,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Buy later',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Container(
          width: 136,
          height: 36,
          decoration: const BoxDecoration(
            color: Color(0xffEBF2FF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: EdgeInsets.zero,
                  width: 68,
                  child: Center(
                    child: SVG.asset(
                      Assets.icons.menuTile,
                      width: 17,
                      height: 14,
                      color: UIConstant.iconColor,
                    ),
                  )),
              Container(
                  height: 36,
                  width: 68,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff2979FF).withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: const Color(0xff1B4EA3).withOpacity(0.2),
                        offset: const Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: SVG.asset(
                      Assets.icons.menuTile,
                      width: 18,
                      height: 18,
                      color: UIConstant.kBlue,
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }

  Row topNavMenu() {
    return Row(
      children: [
        Container(
          height: 39.2,
          width: 44,
          margin: const EdgeInsets.only(left: 125, top: 5),
          decoration: BoxDecoration(
              color: UIConstant.bgColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SVG.asset(
              Assets.icons.arrowBack,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          height: 32,
          width: 1090,
          margin: const EdgeInsets.only(left: 32, top: 5),
          decoration: BoxDecoration(
              color: UIConstant.bgColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ...UIConstant.topNavMenuItems.values.map(
                  (e) => Container(
                    height: 28,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      e.title!,
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

  Row buildTopBarMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            Assets.images.logo,
          ),
        ),
        const SizedBox(width: 35),
        const Text(
          'Sell on ZIL',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 15),
        Container(
          height: 45,
          width: 568,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffF3F3F3).withOpacity(0.83),
                  offset: const Offset(-8, -8),
                  blurRadius: 20,
                  spreadRadius: 0,
                )
              ]),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Container(
                  width: 45,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: UIConstant.searchBack,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SVG.asset(
                      Assets.icons.search,
                    ),
                  ),
                )),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          width: 500,
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.withOpacity(0.5))),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...UIConstant.topBarMenuItems.values.map((e) {
                  if (e.title == 'Bag') {
                    return Stack(
                      fit: StackFit.loose,
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SVG.asset(
                              e.icon!,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(e.title!),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF44336),
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                  child: Text(
                                    '12',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SVG.asset(
                        e.icon!,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(e.title!),
                    ],
                  );
                }).toList(),
              ]),
        )
      ],
    );
  }
}
