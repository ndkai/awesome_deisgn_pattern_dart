

import 'package:flutter_design_pattern/behavior/observer%20pattern/subject.dart';

import 'observer.dart';

class YoutubeVideo extends Subject{
  final String title;
  final String description;
  final String fileUrl;
  late PhoneNotifier phoneNotifier;
  late EmailNotifier emailNotifier;
  late FacebookNotifier facebookNotifier;

  YoutubeVideo(this.title, this.description, this.fileUrl){
    phoneNotifier = PhoneNotifier(this);
    emailNotifier = EmailNotifier(this);
    facebookNotifier = FacebookNotifier(this);
  }

  void onVideoChange(){
    notifyObserver("Video change");
  }
}