import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_chienbm/values/src_values.dart';

import '../src_search_page.dart';

class NewAndHotScreen extends StatefulWidget {
  const NewAndHotScreen({super.key});

  @override
  State<NewAndHotScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<NewAndHotScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.black,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.black,
              title: const Text(
                AppStr.newAndHot,
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: AppColors.white,
                ),
                const SizedBox(
                  width: AppDimens.sizedboxMedium,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppDimens.radius8),
                  child: Container(
                    color: AppColors.blue,
                    height: AppDimens.heightAvatar,
                    width: AppDimens.widthAvatar,
                  ),
                ),
                const SizedBox(height: AppDimens.sizedboxMedium),
              ],
              bottom: TabBar(
                dividerColor: Colors.black,
                isScrollable: false,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                labelColor: Colors.black,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                unselectedLabelColor: Colors.white,
                tabs: const [
                  Tab(
                    text: '  🦋 Coming Soon  ',
                  ),
                  Tab(
                    text: "  ❄️ Everyone's watching  ",
                  ),
                ],
              ),
            ),
            body: const TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    ComingSoonMovieWidget(
                      imageUrl:
                          'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/7/0/700x1000-kereta.jpg',
                      overview:
                          'Từng toa tàu biến mất bí ẩn mỗi khi băng qua đường hầm cùng hàng loạt viễn cảnh ghê rợn và đẫm máu liên tiếp ập đến khiến hành khách phải đối diện với ranh giới sinh tử trước mắt',
                      logoUrl:
                          "https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/7/0/700x1000-kereta.jpg",
                      month: "Feb",
                      day: "20",
                    ),
                    ComingSoonMovieWidget(
                      imageUrl:
                          'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/4/7/470x700_abigail.jpg',
                      overview:
                          'Một nhóm tội phạm bắt cóc một diễn viên ba lê nhí - con gái của một ông trùm quyền lực trong thế giới ngầm. Chúng trốn đến một biệt thự biệt lập, nhưng không hề hay biết mình đang bị giam cầm cùng một "cô bé" hoàn toàn không bình thường.',
                      logoUrl:
                          "https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/4/7/470x700_abigail.jpg",
                      month: "March",
                      day: "17",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ComingSoonMovieWidget(
                      imageUrl:
                          'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/h/phim_i_n_nh_nh_ng_t_b_o_c_a_yumi.jpg',
                      overview:
                          'Cô nàng nhân viên văn phòng Yumi đã bước sang độ tuổi 30, với biết bao chông chênh về cuộc đời, về công việc và tình yêu... Nhưng đừng lo lắng nhé Yumi, cho dù có cô đơn, bất an, hoài nghi bản thân đến đâu, bạn vẫn là ưu tiên số 1 của các tế bào trong bạn.',
                      logoUrl:
                          "https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/h/phim_i_n_nh_nh_ng_t_b_o_c_a_yumi.jpg",
                      month: "June",
                      day: "15",
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: ComingSoonMovieWidget(
                      imageUrl:
                          'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/m/a/mai_teaser_poster_digital_1_.jpg',
                      overview:
                          '"Mai" xoay quanh cuộc đời của một người phụ nữ đẹp tên Mai (do Phương Anh Đào thủ vai) có số phận rất đặc biệt. Bởi làm nghề mát xa, Mai thường phải đối mặt với ánh nhìn soi mói, phán xét từ những người xung quanh. Và rồi Mai gặp Dương (Tuấn Trần) - chàng trai đào hoa lãng tử. Những tưởng bản thân không còn thiết tha yêu đương và mưu cầu hạnh phúc cho riêng mình thì khao khát được sống một cuộc đời mới trong Mai trỗi dậy khi Dương tấn công cô không khoan nhượng. Họ cho mình những khoảnh khắc tự do, say đắm và tràn đầy tiếng cười. Liệu cặp đôi ấy có nắm giữ được niềm hạnh phúc đó dài lâu khi miệng đời lắm khi cay nghiệt, bất công? "Mai" - một câu chuyện tâm lý, tình cảm pha lẫn nhiều tràng cười vui nhộn với sự đầu tư mạnh tay nhất trong ba phim của Trấn Thành hứa hẹn sẽ đem đến cho khán giả những phút giây thật sự ý nghĩa trong mùa Tết năm nay.',
                      logoUrl:
                          "https://s3.amazonaws.com/www-inside-design/uploads/2017/10/strangerthings_feature-983x740.jpg",
                      month: "March",
                      day: "17",
                    ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
