class FollowInfo {
  String headImgURL;//头像
  String headTitle;//动态标题
  String time;//动态时间点
  String mainContent;//主要内容
  String markContent;//次要描述内容
  String videoURL;//视频连接
  String videoThumbnail;//视频缩略图
  int starNum;//点赞数量
  int commentNum;//评论数量
  int insideShareNum;//内部分享数量
  List<String> imagesList;

  FollowInfo(this.headImgURL, this.headTitle, this.time, this.mainContent, this.starNum, this.commentNum,
      this.insideShareNum, {this.videoURL, this.videoThumbnail, this.markContent, this.imagesList});
}

List<FollowInfo> followInfoList = [
  FollowInfo(
      'https://cdn.ruguoapp.com/o_1a99pqhrhgf29dt1tql1lakb4he.png?imageView2/0/w/120/h/120/format/jpeg/q/30',
      '听圈内人讲行业内幕',
      '19:25',
      '一个讲述大公司们如何获取第一批用户的网站，说不定能给你带来一些启发。',
      24,
      7,
      10,
      videoURL: null,
      videoThumbnail: null,
      markContent: '一个讲述大公司们如何获取第一批...',
      imagesList: ['https://cdn.ruguoapp.com/d84b2ed74e2c35015f103805a4711b0f?imageView2/0/w/2000/h/400/q/30']
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/FhTXF_UZmWUNPzIz5mJLb1AWoAus.png?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '美国 Billboard 单曲榜 TOP 50 视频更新提醒',
      '19:05',
      '「木JJ出品」时光机 Billboard 2017-2010第28周',
      14,
      27,
      20,
      videoURL: 'https://flutter.github.io/assets-for-api-docs/videos/butterfly.mp4',
      videoThumbnail: 'https://cdn.ruguoapp.com/FhTXF_UZmWUNPzIz5mJLb1AWoAus.png?imageView2/1/w/120/h/120/format/jpeg/q/30',
      markContent: null,
      imagesList: null
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/Fjv1twcttU8Ev9mHnuq3S3pPfJmf.png?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '威锋网微博更新提醒',
      '2小时前',
      '【这两颗星球很地球】四年前，当美国宇航局宣布开普勒-186f成为第一个潜在可居住的类地行星时，世界各地的关于“地球2.0”的梦想就被彻底点燃。两年前的开普勒-62f也让人们越来越憧憬宇宙中是否真的存在适宜人类居住的其他星球。而根据最新的研究表明，这两颗行星可能比人们想象中的更像地球。',
      114,
      67,
      30,
      videoURL: null,
      videoThumbnail: null,
      markContent: null,
      imagesList: ['https://cdn.ruguoapp.com/e1f034f1e40485323cd5d371853dc8ac?imageView2/0/w/2000/h/400/q/30',
                    'https://cdn.ruguoapp.com/b3351de3d13d89deea042d561fef10f4?imageView2/0/w/2000/h/400/q/30']
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/o_1an09sdd5pe52p9132u1569ddkj.jpg?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '工程师的日常',
      '5小时前',
      '发明JavaScript的真是人才 [允悲] ​',
      1,
      6,
      10,
      videoURL: null,
      videoThumbnail: null,
      markContent: null,
      imagesList: ['https://cdn.ruguoapp.com/c2075297acf758994968359e0a99a4b3?imageView2/0/w/2000/h/400/q/30']
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/o_1a94vq74a9b6cbn1lbcig31mg06g.jpeg?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '英文俚语精选',
      '1分钟前',
      'as high as a kite 烂醉如泥\n【例句】Look. He is as high as a kite now.\n【误解】瞧！他现在像风筝一样高。\n【正确】瞧！他现在烂醉如泥。\n【说明】as high as a kite是美国俚语，意思是“烂醉如泥”。​',
      1,
      6,
      2,
      videoURL: null,
      videoThumbnail: null,
      markContent: 'as high as a kite 烂醉如...',
      imagesList: ['https://cdn.ruguoapp.com/c2075297acf758994968359e0a99a4b3?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/d5bf8c26a5cc7408d23569a922d642fb?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/9603783bce3f130339cfe7c34c3eefd5?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/ab6aba7e6212a62d979146370b83b7bf?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/d3ad8bf67050d6b1a89a18c8b451308e?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/2f8a5ec9bfd4e0fc8e250369f87ee851?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/1a4d5334062e80f56f7334bd5b69d5d6?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/f5ac48290cf285c6bcb88d3b91adc19e?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/39ec5faaefc307e69da5976c27922e78?imageView2/0/w/2000/h/400/q/30']
  ),
];