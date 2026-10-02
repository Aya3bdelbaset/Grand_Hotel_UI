import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/theme/app_theme.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customcheck.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customaddremove.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customrow.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Custombooking.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customtext.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_button.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Custompaymentmethod.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/bookingComplete.dart';


class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        leading: Icon(Icons.arrow_back,size:  AppSizes.iconXLarge,),
        centerTitle: true,
        title: Text("Checkout",style:TextStyles.subtitle.copyWith(
          fontWeight: FontWeight.w600,
          fontFamily: 'Jost',
        )),
        actions: [Icon(Icons.more_vert,size:  AppSizes.iconXLarge,)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.xxl),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AppAssets.astonvill),
                  SizedBox(width: 12.w,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("The Aston Vill Hotel",style: TextStyles.title2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Jost',
                          ),),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.star),
                              Text("4.7",style: TextStyles.body.copyWith(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                              ),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/map.svg"),
                           Text("Vuem Point , Mickikoton",style: TextStyles.caption2.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyColor,
                            fontFamily: 'Plus Jakarta Sans',
                           ),),
                        ],
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: "\$120/",style: TextStyles.body.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          color: AppColors.primaryColor,
                        )),
                        TextSpan(text: "night",style: TextStyles.body.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                        )),
                      ]))
                    ],),
                  )
                ],
              ),
                 Padding(
                   padding: const EdgeInsets.only(top: AppSizes.xxl),
                   child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.backgroundColor,
                      border: Border.all(width: 1.w,color: AppColors.bordercl),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.lg),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Customtext(text2: "Your Booking",),
                            SizedBox(height: AppSizes.lg,),
                            Custombooking(text1: "Dates",date1: "12-14 Nov 2024",asset: AppAssets.cal,),
                            SizedBox(height: AppSizes.lg,),
                            Custombooking(text1: "Guest",date1: "2 Guests(1 Room)",asset: AppAssets.user,),
                            SizedBox(height: AppSizes.lg,),
                            Custombooking(text1: "Room type ",date1: "Queen Room",asset: AppAssets.building,),
                            SizedBox(height: AppSizes.lg,),
                            Custombooking(text1: "phone",date1: "02134345646",asset: AppAssets.phone,),
                            SizedBox(height: AppSizes.xxl,),
                          const Divider(
                        color: AppColors.bordercl,
                        thickness: 1,
                        ),
                    SizedBox(height: AppSizes.xxl,),
                    Customtext(text2: "Price Details"),
                    SizedBox(height: AppSizes.lg,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price",style: TextStyles.body.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                        ),),
                        Text("\$139.00",style:TextStyles.body.copyWith(
                            fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                        ) ,),
                      ],
                    ),
                    SizedBox(height: AppSizes.lg,),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Admin Fee",style: TextStyles.body.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                        ),),
                        Text("\$2.5",style:TextStyles.body.copyWith(
                            fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                        
                        ) ,),
                      ],
                    ),
                  SizedBox(height: AppSizes.lg,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Total Price", style: TextStyles.body.copyWith(
                        fontFamily: 'Plus Jakarta Sans',
                      ),),
                        Text("\$141.5", style: TextStyles.body.copyWith(
                        fontFamily: 'Plus Jakarta Sans',
                      ),),
                    ],), 
                          ],
                        ),
                      ),
                    ),
                  ),
                 ),
                 const Spacer(),
              AppButton(text: "Select Payment", onPressed:(){showModalBottomSheet(context: context, builder:(context){
                return Padding(
                  padding: const EdgeInsets.all(AppSizes.xxxl),
                  child: Container(
                   width: double.infinity,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Payment Method",style: TextStyles.title2.copyWith(
                        fontFamily: 'Jost',
                      )),
                      Icon(Icons.close,size: 24,),
                    ],),
                    SizedBox(height:AppSizes.xxxl,),
                    Custompaymentmethod(payment: "Master card",Check: AppAssets.correctcheckbox,visa: AppAssets.master,),
                     SizedBox(height: AppSizes.xxl,),
                     Custompaymentmethod(payment: "Visa",Check: AppAssets.check,visa: AppAssets.visa,),
                     SizedBox(height: AppSizes.xxl,),
                    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bottomcl,
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        boxShadow: [
          BoxShadow(
            color: AppColors.blurcl,
          )
        ]
      ),child: Padding(
        padding: const EdgeInsets.all(AppSizes.sm),
        child: Container(
       child: Row(
        children: [
          SvgPicture.asset("assets/icons/Iconadd.svg"),
          Text("Add Debit Card",style: TextStyles.body.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: 'Plus Jakarta Sans',
          ))
        ],
       ),
        ),
      ),),
      const Spacer(),
      AppButton(text: "Confirm and Pay", onPressed:() {
            Navigator.pushNamed(context,RouteNames.bookingComplete);
      },)
                  ],), 
                  ),
                );
              }
              );}),
            ],
          ),
        ),
      ),
    );
  }
}


