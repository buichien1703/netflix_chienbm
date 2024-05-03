import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_chienbm/common/utils.dart';
import 'package:netflix_chienbm/values/src_values.dart';

import '../model/src_model.dart';

class MovieCardWidget extends StatelessWidget {
  final Future<UpComingModel> future;
  final String headLineText;
  const MovieCardWidget(
      {super.key, required this.future, required this.headLineText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data?.results;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headLineText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: AppDimens.sizedboxMedium,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data?.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(AppDimens.paddingSmallest),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppDimens.radius20),
                      ),
                      child:
                          Image.network("$imageUrl${data?[index].posterPath}"),
                    );
                  },
                ),
              )
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
