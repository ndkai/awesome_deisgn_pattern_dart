

import 'package:flutter_design_pattern/behavior/observer%20pattern/video_data.dart';

main(){
  YoutubeVideo youtubeVideo= YoutubeVideo("KaiND", "This is my youtube video", "https://www.youtube.com/watch?v=Yn6xZ4wM8Kw&list=PLoaAbmGPgTSOrVuxwbnDJ14U9J6CXJXUk&index=6");
  youtubeVideo.onVideoChange();
}