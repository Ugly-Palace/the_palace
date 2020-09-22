import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:thepalace/screens/create_exhibition.dart';
import 'package:thepalace/screens/home_screen.dart';

class ExhibitionCenter extends StatefulWidget {
  static const String id = 'ExhibitionCenter';
  @override
  _ExhibitionCenterState createState() => _ExhibitionCenterState();
}

class _ExhibitionCenterState extends State<ExhibitionCenter> {
  List<Widget> exhibitionCenter = [
    TechStream(),
    MusicStream(),
    FashionStream(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Exhibition Center',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CreateExhibition.id);
              },
            ),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 14),
              unselectedLabelStyle: TextStyle(
                fontSize: 11,
              ),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(child: Text('Tech')),
                Tab(child: Text('Music')),
                Tab(child: Text('Fashion')),
              ]),
        ),
        body: TabBarView(children: exhibitionCenter),
      ),
    );
  }
}

class FashionStream extends StatefulWidget {
  const FashionStream({
    Key key,
  }) : super(key: key);

  @override
  _FashionStreamState createState() => _FashionStreamState();
}

class _FashionStreamState extends State<FashionStream> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FashionAdsSlide(),
        FashionAdsNoSlide(),
        FashionAdsNoSlide(),
        FashionAdsNoSlide(),
      ],
    );
  }
}

class FashionAdsSlide extends StatefulWidget {
  const FashionAdsSlide({
    Key key,
  }) : super(key: key);

  @override
  _FashionAdsSlideState createState() => _FashionAdsSlideState();
}

class _FashionAdsSlideState extends State<FashionAdsSlide> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
              ),
              width: double.infinity,
              child: Carousel(
                images: [
                  NetworkImage(
                      'https://www.resilience.org/wp-content/uploads/2019/11/The_Golden_Book_Gown_by_Ryan_Jude_Novelline.jpg'),
                  NetworkImage(
                    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F14%2F2020%2F09%2F16%2FInStyle-October-Lanvin-Lead-1-2000.jpg',
                  ),
                  NetworkImage(
                    'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                  )
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.orange,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.transparent,
                borderRadius: true,
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(
                left: 20,
                top: 25,
                bottom: 10,
              ),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 5,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.25),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  ProfilePic(
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Ali Usman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 19),
        Container(
          margin: EdgeInsets.only(left: 5, right: 15),
          width: 290,
          child: Text(
            'Advertisement \n Fashion designer Featuring  Hausa motivational speaker',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class FashionAdsNoSlide extends StatelessWidget {
  const FashionAdsNoSlide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(
                  left: 5,
                  top: 10,
                  bottom: 10,
                ),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    ProfilePic(
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Musa Damu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19),
          Text(
            'Advertisement Fashion designer',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class MusicStream extends StatefulWidget {
  const MusicStream({
    Key key,
  }) : super(key: key);

  @override
  _MusicStreamState createState() => _MusicStreamState();
}

class _MusicStreamState extends State<MusicStream> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
      ),
      child: ListView(
        children: [
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
          MusicCard(),
        ],
      ),
    );
  }
}

class MusicCard extends StatefulWidget {
  const MusicCard({
    Key key,
  }) : super(key: key);

  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ProfilePic(
        width: 45,
        height: 45,
      ),
      title: Text(
        'Alex Ipsums',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        'Eminem,Rap god',
        style: TextStyle(color: Colors.white),
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            isPlaying = !isPlaying;
          });
        },
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isPlaying ? Colors.orange : Colors.grey,
          ),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class TechStream extends StatefulWidget {
  const TechStream({
    Key key,
  }) : super(key: key);

  @override
  _TechStreamState createState() => _TechStreamState();
}

class _TechStreamState extends State<TechStream> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://www.theindianwire.com/wp-content/uploads/2019/07/WeChat.jpg',
                appName: 'We Chat',
                onStore: 'On Play and App Store',
              ),
              AppAds(
                image:
                    'https://images-na.ssl-images-amazon.com/images/I/91DEx9ApgBL.png',
                appName: 'Ckz 2, Origins',
                onStore: 'On App Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image: 'https://photomath.app/i/share/Photomath5.png',
                appName: 'Photo Math',
                onStore: 'On Play and App Store',
              ),
              AppAds(
                image:
                    'https://cdn.vox-cdn.com/thumbor/O0ZjQx5CfoP798QPNvu0g7SO2Hk=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/21693493/snap_music.jpg',
                appName: 'Snap Chat',
                onStore: 'On Play Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://content.fortune.com/wp-content/uploads/2019/11/Waze-Mobile-App-Interface.jpg?resize=1200,600',
                appName: 'Waze App',
                onStore: 'On App Store',
              ),
              AppAds(
                image:
                    'https://cdn.apkmonk.com/images/com.stonelab.nearchat.png',
                appName: 'Near Chat',
                onStore: 'On Play Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://www.dccomics.com/sites/default/files/DCAA_DCpageHeader_5813d5a3d5d388.62246187.jpg',
                appName: 'DC All Access',
                onStore: 'On Play and App Store',
              ),
              AppAds(
                image:
                    'https://businessday.ng/wp-content/uploads/2019/11/Ulesson-Africa-750x405.jpg',
                appName: 'uLesson',
                onStore: 'On Play Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://cdn.dribbble.com/users/997070/screenshots/6752314/time_and_date_2x.png',
                appName: 'Timeblr (time table app)',
                onStore: 'On App Store',
              ),
              AppAds(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT7r9Ii21p8y6-WEoExafYX2zIV3dz6DvtRoQ&usqp=CAU',
                appName: 'Sky Whale',
                onStore: 'On App Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS2OEj6t5AYx8onBRnmc8htA2G8jTxpBrvAoQ&usqp=CAU',
                appName: 'Luno Crypto',
                onStore: 'On App Store',
              ),
              AppAds(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS2OEj6t5AYx8onBRnmc8htA2G8jTxpBrvAoQ&usqp=CAU',
                appName: 'Luno Crypto',
                onStore: 'On App Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS2OEj6t5AYx8onBRnmc8htA2G8jTxpBrvAoQ&usqp=CAU',
                appName: 'Luno Crypto',
                onStore: 'On App Store',
              ),
              AppAds(
                image:
                    'https://signal.org/assets/screenshots/download-mobile-bdc14a52a345c02611f4a8ac2a2796dfd4f5f2d9cf9abbf2494bd3e244d63035.png',
                appName: 'Signal Chat',
                onStore: 'on Play Store',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppAds(
                image:
                    'https://signal.org/assets/screenshots/download-mobile-bdc14a52a345c02611f4a8ac2a2796dfd4f5f2d9cf9abbf2494bd3e244d63035.png',
                appName: 'Signal Chat',
                onStore: 'on Play Store',
              ),
              AppAds(
                image:
                    'https://signal.org/assets/screenshots/download-mobile-bdc14a52a345c02611f4a8ac2a2796dfd4f5f2d9cf9abbf2494bd3e244d63035.png',
                appName: 'Signal Chat',
                onStore: 'on Play Store',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppAds extends StatelessWidget {
  const AppAds({
    Key key,
    this.onTap,
    this.image,
    this.appName,
    this.onStore,
  }) : super(key: key);
  final Function onTap;
  final String image;
  final String appName;
  final String onStore;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    '$image',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$appName',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2),
              Text(
                '$onStore',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
