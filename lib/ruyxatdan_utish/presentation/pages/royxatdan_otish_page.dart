import 'package:air_travel/travel/presentation/widgets/FavoritesTexts_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class EnterNumberPage extends StatelessWidget {
  const EnterNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: Container(
          padding: EdgeInsets.all(18),
          width: 28,
          height: 28,
          child: GestureDetector(
            onTap: () {
              context.go('/');
            },
            // child: SvgPicture.asset(
            //   "TravelAssets/icons/back-arrow.svg",
            //   color: AppColors.GreenMain,
            // ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          spacing: 62,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "TravelAssets/icons/logo.svg",
              color: AppColors.GreenMain,
            ),
            Text(
              "Kodni kiriting",
              style: TextStyle(
                color: AppColors.TextColor,
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Text(
                    "/",
                    style: TextStyle(fontSize: 16),
                  ),
                  Expanded(
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9+]')),
                      ],
                      decoration: InputDecoration(
                        hintText: "SMS kodni kiriting",
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                        hintStyle: TextStyle(
                          color: Colors.grey.withValues(alpha: 0.8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/home') ;
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.GreenMain),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  fixedSize: MaterialStateProperty.all(
                    Size(400, 58),
                  )
              ),
              child: Text(
                "Tasdiqlash",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
//
//
// import 'package:air_travel/utils/AppColors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:go_router/go_router.dart';
//
// class EnterNumberPage extends StatelessWidget {
//   const EnterNumberPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         surfaceTintColor: Colors.transparent,
//         leading: Container(
//           padding: EdgeInsets.all(18),
//           width: 28,
//           height: 28,
//           child: GestureDetector(
//             onTap: () {
//               context.go('/');
//             },
//             child: Icon(
//               Icons.arrow_back,
//               color: AppColors.GreenMain,
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: Column(
//           spacing: 62,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Bu qismni olib tashladik:
//             // SvgPicture.asset(
//             //   "TravelAssets/icons/logo.svg",
//             //   color: AppColors.GreenMain,
//             // ),
//             Text(
//               "Kodni kiriting",
//               style: TextStyle(
//                 color: AppColors.TextColor,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 32,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFAFAFA),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "/",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   Expanded(
//                     child: TextField(
//                       inputFormatters: [
//                         FilteringTextInputFormatter.allow(RegExp(r'[0-9+]')),
//                       ],
//                       decoration: InputDecoration(
//                         hintText: "SMS kodni kiriting",
//                         filled: true,
//                         border: InputBorder.none,
//                         fillColor: Colors.transparent,
//                         hintStyle: TextStyle(
//                           color: Colors.grey.withOpacity(0.8),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 context.go('/home');
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(AppColors.GreenMain),
//                 foregroundColor: MaterialStateProperty.all(Colors.white),
//                 fixedSize: MaterialStateProperty.all(
//                   Size(400, 58),
//                 ),
//               ),
//               child: Text(
//                 "Tasdiqlash",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

