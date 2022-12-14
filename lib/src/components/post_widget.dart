import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
              type: AvatarType.TYPE3,
              nickname: 'kyu_s00_',
              size: 40,
              thumbPath:
                  'https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=2000'),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://cdn.pixabay.com/index/2022/08/24/06-50-51-598_1440x550.jpg');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 65,
              ),
              const SizedBox(width: 15),
              ImageData(
                IconsPath.replyIcon,
                width: 60,
              ),
              const SizedBox(width: 15),
              ImageData(
                IconsPath.directMessage,
                width: 55,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 50,
          ),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '????????? 150???',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            '????????? 1?????????.\n????????? 1?????????.\n????????? 1?????????.\n????????? 1?????????.\n',
            prefixText: '??????????????????',
            onPrefixTap: (){
              print('?????????????????? ????????? ??????');
            },
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            expandText: '?????????',
            collapseText: '??????',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _replyTextBtn(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GestureDetector(
        onTap: (){},
        child: Text('?????? 199??? ?????? ??????', style: TextStyle(color: Colors.grey, fontSize: 13))
      ),
    );
  }

  Widget _dateAgo(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text('1??? ???', style: TextStyle(color: Colors.grey, fontSize: 11)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(),
            const SizedBox(height: 15),
            _image(),
            const SizedBox(height: 15),
            _infoCount(),
            const SizedBox(height: 5),
            _infoDescription(),
            const SizedBox(height: 5),
            _replyTextBtn(),
            const SizedBox(height: 5),
            _dateAgo(),
          ],
        ));
  }
}
