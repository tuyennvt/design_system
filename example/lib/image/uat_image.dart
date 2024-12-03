import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class UatImage extends StatefulWidget {
  const UatImage({super.key, required this.title});

  final String title;

  @override
  State<UatImage> createState() => UatImageState();
}

class UatImageState extends State<UatImage> {
  KvCacheNetworkImageSize size = KvCacheNetworkImageSize.medium;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KvAppBar(
        visibleBack: true,
        onBackPressed: () {
          Navigator.pop(context);
        },
        child: KvAppBarPage(
          pageTitle: widget.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  KvCacheNetworkImage(
                    imageUrl: null,
                    imageType: KvCacheNetworkImageType.avatar,
                    imageSize: size,
                  ),
                  const SizedBox(width: 16),
                  KvCacheNetworkImage(
                    imageUrl: null,
                    imageType: KvCacheNetworkImageType.image,
                    imageSize: size,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  KvCacheNetworkImage(
                    imageUrl: 'https://picsum.photos/200',
                    imageType: KvCacheNetworkImageType.avatar,
                    imageSize: size,
                  ),
                  const SizedBox(width: 16),
                  KvCacheNetworkImage(
                    imageUrl: 'https://picsum.photos/200',
                    imageType: KvCacheNetworkImageType.image,
                    imageSize: size,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  KvCacheNetworkImage(
                    imageUrl: 'not_found',
                    imageType: KvCacheNetworkImageType.avatar,
                    imageSize: size,
                  ),
                  const SizedBox(width: 16),
                  KvCacheNetworkImage(
                    imageUrl: 'not_found',
                    imageType: KvCacheNetworkImageType.image,
                    imageSize: size,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  KvCacheNetworkImage(
                    imageUrl: 'error',
                    imageType: KvCacheNetworkImageType.avatar,
                    imageSize: size,
                  ),
                  const SizedBox(width: 16),
                  KvCacheNetworkImage(
                    imageUrl: 'error',
                    imageType: KvCacheNetworkImageType.image,
                    imageSize: size,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              RadioGroup<KvCacheNetworkImageSize>(
                title: 'Size',
                initialValue: KvCacheNetworkImageSize.medium,
                items: KvCacheNetworkImageSize.values,
                onChanged: (value) {
                  setState(() => size = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
