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

class RequestToBookScreen extends StatelessWidget {
  const RequestToBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size:  AppSizes.iconXLarge,),
        centerTitle: true,
        title: Text("Request to book",style:TextStyles.subtitle.copyWith(
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Date",style: TextStyles.body.copyWith(fontFamily: 'Plus Jakarta Sans',
        color: AppColors.blackColor)),
        SizedBox(height:AppSizes.md ,),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Customcheck(text: "Check-In",date: "Nov12,2024",),
            Customcheck(text: "Check-Out",date: "Nov14,2024",),
          ],
        ),
        SizedBox(height:AppSizes.xxxl,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Geust",style: TextStyles.body.copyWith(
              color: AppColors.blackColor,
              fontFamily: 'Plus Jakarta Sans',
            ),),
            Row(
              children: [
              Customaddremove(Containercl: AppColors.offwhite,iconcolor: AppColors.primaryColor,
              icon: Icons.remove,),
              SizedBox(width: AppSizes.lg,),
              Text("1",style: TextStyles.title2.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: 'Jost',
              ),),
                SizedBox(width: AppSizes.lg,),
  Customaddremove(Containercl: AppColors.primaryColor,iconcolor: AppColors.backgroundColor,
              icon: Icons.add,),
              ],
            ),
            
          ],
        ),
                SizedBox(height:AppSizes.xxxl,),
    Text("Pay With",style: TextStyles.body.copyWith(
              color: AppColors.blackColor,
              fontFamily: 'Plus Jakarta Sans',
            ),),
            SizedBox(height:AppSizes.lg,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:AppSizes.xl,
              horizontal: AppSizes.sm,
               ),
              child: Container(
                width: double.infinity,
                height: 64.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.greyColor)
                ),
                child: ListTile(
                  leading:
                     Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: AppColors.whitegray,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: SvgPicture.asset("assets/icons/wall.svg"),
                      
                    ),
                    title: Text("FastPayz",style: TextStyles.body.copyWith(
                      color: AppColors.blackColor,
                      fontFamily: 'Plus Jakarta Sans',
                    )),
                    subtitle: Text("*******6587",style: TextStyles.body.copyWith(
                      color: AppColors.greyColor,
                    ),),
                    trailing: Container(
                      width: 55.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.primaryColor,width: 1.w),
                      ),
                      child: Center(child: Text("Edit",
                      style: TextStyles.body.copyWith(
                        color: AppColors.primaryColor,
                         fontFamily: 'Plus Jakarta Sans',
                      ),)),
                    ),
                ),
              ),
            ),
          SizedBox(height:AppSizes.xxxl,),
    Text("Payment Details",style: TextStyles.body.copyWith(
        fontFamily: 'Plus Jakarta Sans',
    ),),
    SizedBox(height: AppSizes.md,),
    Customrow(service: "Total : 2 Nights",price: "\$400",),
        SizedBox(height: AppSizes.md,),
    Customrow(service: "Cleaning Fee",price: "\$5",),
          SizedBox(height: AppSizes.md,),
    Customrow(service: "Service Fee",price: "\$5",),
            SizedBox(height: AppSizes.md,),
         const Divider(),
            SizedBox(height: AppSizes.md,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Total Payment",style: TextStyles.subtitle.copyWith(
      fontFamily: 'Plus Jakarta Sans',
    )),
    Text("\$410",style: TextStyles.body.copyWith(
      fontFamily: 'Plus Jakarta Sans',
    ),),
  ],
),
     const Spacer(),
     AppButton(text: "Checkout", onPressed: () {
 showDialog(
  context: context,
  builder: (context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Container(
        width: 322.w,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Select Date",
              style: TextStyles.subtitle.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
            SizedBox(height: 10),
            SfDateRangePicker(
              backgroundColor: Colors.white,
              selectionMode: DateRangePickerSelectionMode.range,
              showActionButtons: false,
              showNavigationArrow: true,
              startRangeSelectionColor: const Color(0xFF1E3A8A),
              endRangeSelectionColor: const Color(0xFF1E3A8A),
              rangeSelectionColor: const Color(0xFFE2E8F0),
              selectionTextStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              rangeTextStyle: const TextStyle(
                color: Colors.black87,
              ),
              headerStyle: DateRangePickerHeaderStyle(
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              monthCellStyle: const DateRangePickerMonthCellStyle(
                textStyle: TextStyle(color: Colors.black),
                trailingDatesTextStyle: TextStyle(color: Colors.grey),
                leadingDatesTextStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                    Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    onPressed: () {
              Navigator.pushNamed(context,RouteNames.paymentMethod);
                    },
                    child: Text(
                      "Apply",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  },
);
},) ],
    ),
  ),
),
    );
  }
}





