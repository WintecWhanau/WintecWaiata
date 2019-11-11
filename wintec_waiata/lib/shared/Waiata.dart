class Waiata {
  String name, brief, maoriWords, englishWords, thumbnailPath, vocalPath,nonVocalPath;

  bool vocal;//used to determine which button has been pressed. vocal or non vocal from brief

  Waiata(this.name, this.brief, this.maoriWords, 
          this.englishWords, this.thumbnailPath, this.vocalPath, this.nonVocalPath);
}