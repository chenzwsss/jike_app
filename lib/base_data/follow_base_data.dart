class FollowInfo {
  String headImgURL;
  String headTitle;
  String time;
  String mainContent;
  String markContent;
  String imgRightURL;
  List<String> imgURLs;
  String videoURL;
  int starNum;
  int commentNum;
  int insideShareNum;

  FollowInfo(this.headImgURL, this.headTitle, this.time, this.mainContent, this.starNum, this.commentNum,
      this.insideShareNum, {this.imgURLs, this.videoURL, this.markContent, this.imgRightURL});
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
      imgURLs: null,
      videoURL: null,
      markContent: '一个讲述大公司们如何获取第一批...',
      imgRightURL: 'https://cdn.ruguoapp.com/FrkBgyHpw9Bzp1imCV2G6UkR1Ct8.jpg?imageView2/0/w/2000/h/400/q/30'
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/FhTXF_UZmWUNPzIz5mJLb1AWoAus.png?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '美国 Billboard 单曲榜 TOP 50 视频更新提醒',
      '19:05',
      '「木JJ出品」时光机 Billboard 2017-2010第28周',
      14,
      27,
      20,
      imgURLs: null,
      videoURL: 'https://flutter.github.io/assets-for-api-docs/videos/butterfly.mp4',
      markContent: null,
      imgRightURL: null
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/Fjv1twcttU8Ev9mHnuq3S3pPfJmf.png?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '威锋网微博更新提醒',
      '2小时前',
      '【这两颗星球很地球】四年前，当美国宇航局宣布开普勒-186f成为第一个潜在可居住的类地行星时，世界各地的关于“地球2.0”的梦想就被彻底点燃。两年前的开普勒-62f也让人们越来越憧憬宇宙中是否真的存在适宜人类居住的其他星球。而根据最新的研究表明，这两颗行星可能比人们想象中的更像地球。',
      114,
      67,
      30,
      imgURLs: ['https://cdn.ruguoapp.com/4116a3c3ea6cb25805767aab5a515d1f?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/3384b6f56f20967ea971fb578f8d5a35?imageView2/0/w/2000/h/400/q/30',
      'https://cdn.ruguoapp.com/93aebce7e3f1dc99260f0f6b60205782?imageView2/0/w/2000/h/400/q/30'],
      videoURL: null,
      markContent: null,
      imgRightURL: null
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/o_1an09sdd5pe52p9132u1569ddkj.jpg?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '工程师的日常',
      '5小时前',
      '发明JavaScript的真是人才 [允悲] ​',
      1,
      6,
      10,
      imgURLs: ['https://cdn.ruguoapp.com/8942e9e9ebbb3d280a05889dcd374df5?imageView2/0/w/2000/h/400/q/30'],
      videoURL: null,
      markContent: null,
      imgRightURL: null
  ),
  FollowInfo(
      'https://cdn.ruguoapp.com/o_1a94vq74a9b6cbn1lbcig31mg06g.jpeg?imageView2/1/w/120/h/120/format/jpeg/q/30',
      '英文俚语精选',
      '1分钟前',
      'as high as a kite 烂醉如泥\n【例句】Look. He is as high as a kite now.\n【误解】瞧！他现在像风筝一样高。\n【正确】瞧！他现在烂醉如泥。\n【说明】as high as a kite是美国俚语，意思是“烂醉如泥”。​',
      1,
      6,
      2,
      imgURLs: null,
      videoURL: null,
      markContent: 'as high as a kite 烂醉如...',
      imgRightURL: 'https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg'
  ),
];