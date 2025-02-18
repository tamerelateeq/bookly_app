import 'package:bookly_app/Features/home/presentation/manger/relative_books_cubit/relative_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action_detailsview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_listview.dart';

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelativeBooksCubit, RelativeBooksState>(
      builder: (context, state) {
        if (state is RelativeBooksSuccess) {
          return Column(
            children: [
              // Custome App Bar
              CustomeDetailsAppbar(),
              // Image Items
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: CustomeItems(
                  imageUrl:
                      'https://lh3.googleusercontent.com/fife/ALs6j_FkDfH775LWlkQhi82qHOp9PPWv1XI2eXG0rT31h3bwBYq5UU-NFZvU6U9w_AmATdLnf_El3OtMh3-0nxONxaTp9BHtCmgCWO51ymijHZJX_MojicHL06ihOvQeBIJJtbtG9T0SkP_n7b-qYGyjH5pfhIVVjDsWGG_FYW5TlIlwe7eofP_WwW12RZuuuaKN5jn78sJdVVXWCDQYWEc2blT9wwSSNCSD2M5Y-cRblL4Ym8deuxdL2v7pc70TZadbHQVIk_o8z37oXv-5jgGVmos7cRd3Y58riF2qQkPA1lDYn2_XiAMZk-FcBv8_AhTozCKyyxmaJtmENGqVlemYXGZHdJL-6lslua9bcpRs8oK6Nk-e_yiP3j7vDX04u5_PFU-ENdQpCDc7ArqlLc48gzERYxu8NSn8EAXaglz9B80KGUybm14z_YjZwBnWVqfY-XM6bpwb1GFCLlSMVuyR63QS3rC2anvbJl1-Vblhbm4ZDSg6NsPpKyHC3WRYkEmmt7uMZ54pCHbCZLmeS3gmJJBI7oujpcZrvivkz5Dtij_ejYWaWTnEVQCYgi1pcGTwrqU4hckSWJMi8LYWiZV9c8GANulfdX1_6XnR5UFYJ5VvIC5byLBd_IwHTAsZ8PhtvWDXz-y3J5IodfK9X0o4nvEYcigxhk_BNw71YHfdFE0QR_k1GFVXAp_VhUBSekzkz_K5ElA4WkV_KTL8zxTzZg9No4SEsoiZKtYDbXmth248np9OOMBfOOG4n7vpRyexzCzZyp4cO_0OyNirnlHnDUmNu2YvSLEfToHyc6hSnueZG6kLFSjMSC3Ral-iW9iwoqJXjyB5s21EYvfESizTzC6IwBqSF8s4a04KqyIYWHZDqt528SqkblTEjQwmDlNSLbLscPmmMW1sst6w2Ry3ottuU8OlvTTcRtrpgshL0woTK1_szHbzViZKyRG-AG3vL4mKwf1EjsDMEKISkEE3ahzE79egI6Q36bqn_Koaeo5fkoF48KyKZ_KTNYELuXP8hDQpmewSbYarwR5plaCjOAnxgoNozwtSdrcidrnT72FHBXIeFR_F_ahYR0fN-QsbSi_RnoSo41ddCeMcSwZCc2jwg3hG7CxPMmWZTRyBcVbCcBVXYyPNI2aEANLxokz2fR2fgGQ-iFiqAq_Yy4FIII1tsEi1TPzeHgpil2IcGBklQ3szk7sx9Q9S3Z0p2E2aw4E4Mcg6YJd4vOGCZkdCsZVnMY8YXeoMsvx8Tbb-AtpQX9fzMHDAW3YOiSJcHES3qYxhm27hcSijF2FYNsgmRchLg9G0OihCtDoLvNGaibrQ6P4uNkdbINFsWLXAldYcBeGhphIQsszB0nREOjD6G_r1XYa4xxdJLVisj95vPxUvMPpqjl3dKksc3iMFAeeVLgxa3olegw_48LF2r-yLOyX52y4MbyZwsgmmZvsgHiys11jqwWn-V3sMGxx2C61z_HEPVaw_8mSNe6Lhjk941ueDf6NV3C7ODKuVGaj23K8NzJV-HqtYHjZFBCWYFr_R2FrIbs2n0QwfwjEvVOch8Loi_4Oe2_Ep76baY9VCRY1W7n5v7jscGi5P72ty_m3MQYkAAitO7HwVAOsRoEXvyercKaa3-NsEesfST77I5NKE4z7xUunc8_BrWQ=w1592-h748',
                ),
              ),
              //space
              const SizedBox(height: 43),
              // Title description text
              BookDetails(),
              //Spce
              const SizedBox(height: 38),
              // add Button for price & Free
              const BookActions(),
              //Spce
              SizedBox(height: 50),
              // text
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              //Spce
              const SizedBox(height: 20),
              // List View
              DetailsListview(),
              //Spce
              const SizedBox(height: 40),
            ],
          );
        } else if (state is RelativeBooksFailure) {
          return CustomeErrorWidget(errMassage: state.errMassage);
        } else {
          return CustomeLoadingWidget();
        }
      },
    );
  }
}
