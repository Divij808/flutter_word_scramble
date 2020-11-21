import 'dart:collection';
import 'package:flutter/material.dart';
import "dart:math";

var clicked = 'False';
var cat = '';
var word = 0;
String words = word.toString();
var coin = 0;
String coins = coin.toString();
var coin2 = 200;
String coins2 = coin.toString();
var originalList = [
  'Headwords', 'of', 'the', 'First', 'Words', '1st', 'A', 'ABLE', 'ABOUT', 'ABOVE', 'ABSOLUTE', 'ACCEPT', 'ACROSS', 'ACT', 'ACTUAL', 'ADD', 'ADDRESS', 'ADMIT', 'ADVERTISE', 'AFFORD', 'AFRAID', 'AFTER', 'AFTERNOON', 'AGAIN', 'AGAINST', 'AGE', 'AGO', 'AGREE', 'AHEAD', 'AIR', 'ALL', 'ALLOW', 'ALMOST', 'ALONE', 'ALONG', 'ALREADY', 'ALRIGHT', 'ALSO', 'ALTHOUGH', 'ALWAYS', 'AMAZE', 'AMONG', 'AMOUNT', 'AND', 'ANGRY', 'ANIMAL', 'ANOTHER', 'ANSWER', 'ANY', 'APART', 'APPARENT', 'APPEAR', 'AREA', 'ARM', 'AROUND', 'ARRANGE', 'ARRIVE', 'ART', 'AS', 'ASHAMED', 'ASK', 'AT', 'AUNT', 'AUTUMN', 'AWARE', 'AWAY', 'AWFUL', 'BABY', 'BACK', 'BAD', 'BAG', 'BALL', 'BANK', 'BAR', 'BASE', 'BASIC', 'BATH', 'BE', 'BEACH', 'BEAR', 'BEAT', 'BEAUTY', 'BECAUSE', 'BECOME', 'BED', 'BEFORE', 'BEGIN', 'BEHIND', 'BELIEVE', 'BELOW', 'BENEATH', 'BESIDE', 'BEST', 'BET', 'BETTER', 'BETWEEN', 'BEYOND', 'BIG', 'BILL', 'BILLION', 'BIRD', 'BIRTH', 'BIT', 'BLACK', 'BLOOD', 'BLOW', 'BLUE', 'BOARD', 'BOAT', 'BODY', 'BONE', 'BOOK', 'BORING', 'BORN', 'BOTH', 'BOTHER', 'BOTTLE', 'BOTTOM', 'BOX', 'BOY', 'BREAD', 'BREAK', 'BREAKFAST', 'BREATH', 'BRIGHT', 'BRING', 'BROTHER', 'BROWN', 'BUILD', 'BURN', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'BUS', 'BUSH', 'BUSINESS', 'BUSY', 'BUT', 'BUY', 'BY', 'CAKE', 'CALL', 'CAMP', 'CAN', 'CAR', 'CARD', 'CARE', 'CARRY', 'CASE', 'CAT', 'CATCH', 'CAUSE', 'CENTRE', 'CERTAIN', 'CHAIR', 'CHANCE', 'CHANGE', 'CHARGE', 'CHEAP', 'CHECK', 'CHICKEN', 'CHILD', 'CHIP', 'CHOICE', 'CHOOSE', 'CHRISTMAS', 'CHURCH', 'CITY', 'CLASS', 'CLEAN', 'CLEAR', 'CLIMB', 'CLOCK', 'CLOSE', 'CLOSED', 'CLOTHES', 'CLUB', 'COAT', 'COFFEE', 'COLD', 'COLLECT', 'COLLEGE', 'COLOUR', 'COME', 'COMFORT', 'COMPANY', 'COMPLETE', 'COMPUTER', 'CONCERN', 'CONSIDER', 'CONTINUE', 'CONTROL', 'CONVERSATION', 'COOK', 'COOL', 'CORNER', 'COST', 'COULD', 'COUNT', 'COUNTRY', 'COUPLE', 'COURSE', 'COURT', 'COVER', 'CRAZY', 'CRIME', 'CROSS', 'CRY', 'CUP', 'CUT', 'DAD', 'DANCE', 'DANGER', 'DARK', 'DARLING', 'DATE', 'DAUGHTER', 'DAY', 'DEAD', 'DEAL', 'DEAR', 'DEATH', 'DECIDE', 'DEEP', 'DEFINITE', 'DEGREE', 'DELICIOUS', 'DEPEND', 'DIE', 'DIFFERENCE', 'DIFFERENT', 'DIFFICULT', 'DIG', 'DINNER', 'DIRTY', 'DISCOVER', 'DO', 'DOCTOR', 'DOG', 'DOOR', 'DOUBLE', 'DOUBT', 'DOWN', 'DRAW', 'DREAM', 'DRESS', 'DRINK', 'DRIVE', 'DROP', 'DRUG', 'DRY', 'DURING', 'EACH', 'EAR', 'EARLY', 'EARTH', 'EAST', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'EASY', 'EAT', 'EDGE', 'EDUCATE', 'EGG', 'EIGHT', 'EITHER', 'ELEVEN', 'ELSE', 'EMPLOY', 'EMPTY', 'END', 'ENGINE', 'ENJOY', 'ENOUGH', 'ENTER', 'ESPECIALLY', 'EVEN', 'EVENING', 'EVER', 'EVERY', 'EXACT', 'EXCEPT', 'EXCITE', 'EXCUSE', 'EXPECT', 'EXPENSIVE', 'EXPERIENCE', 'EXPLAIN', 'EXPRESS', 'EXTRA', 'EYE', 'FACE', 'FACT', 'FAIR', 'FALL', 'FAMILY', 'FAR', 'FARM', 'FAST', 'FAT', 'FATHER', 'FAVOURITE', 'FEAR', 'FEED', 'FEEL', 'FELLOW', 'FEW', 'FIELD', 'FIGHT', 'FIGURE', 'FILL', 'FILM', 'FINAL', 'FIND', 'FINE', 'FINGER', 'FINISH', 'FIRE', 'FIRST', 'FISH', 'FIT', 'FIVE', 'FIX', 'FLAT', 'FLOOR', 'FLOWER', 'FLY', 'FOLLOW', 'FOOD', 'FOOT', 'FOOTBALL', 'FOR', 'FORCE', 'FOREST', 'FORGET', 'FORM', 'FORTUNATE', 'FORWARD', 'FOUR', 'FREE', 'FREEZE', 'FRESH', 'FRIDAY', 'FRIEND', 'FRIGHT', 'FROM', 'FRONT', 'FULL', 'FUN', 'FURTHER', 'GAME', 'GARDEN', 'GAS', 'GENERAL', 'GENTLE', 'GET', 'GIRL', 'GIVE', 'GLAD', 'GLANCE', 'GLASS', 'GO', 'GOD', 'GOLD', 'GOOD', 'GOODBYE', 'GOVERN', 'GRANDFATHER', 'GRASS', 'GREAT', 'GREEN', 'GREY', 'GROUND', 'GROUP', 'GROW', 'GUESS', 'GUN', 'GUY', 'HAIR', 'HALF', 'HALL', 'HAND', 'HANDLE', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'HANG', 'HAPPEN', 'HAPPY', 'HARD', 'HARDLY', 'HAT', 'HATE', 'HAVE', 'HE', 'HEAD', 'HEALTH', 'HEAR', 'HEART', 'HEAT', 'HEAVY', 'HELL', 'HELLO', 'HELP', 'HERE', 'HIDE', 'HIGH', 'HILL', 'HISTORY', 'HIT', 'HOLD', 'HOLE', 'HOLIDAY', 'HOME', 'HONEST', 'HONOUR', 'HOPE', 'HORRIBLE', 'HORSE', 'HOSPITAL', 'HOT', 'HOUR', 'HOUSE', 'HOW', 'HOWEVER', 'HUGE', 'HUMAN', 'HUNDRED', 'HUNGER', 'HUNT', 'HURRY', 'HURT', 'HUSBAND', 'I', 'ICE', 'IDEA', 'IF', 'IMAGINE', 'IMPORTANT', 'IN', 'INDEED', 'INFORM', 'INSIDE', 'INSTEAD', 'INSURE', 'INTEREST', 'INTERNET', 'INTO', 'INVOLVE', 'ISLAND', 'ISSUE', 'IT', 'JOB', 'JOIN', 'JOKE', 'JUDGE', 'JUMP', 'JUST', 'KEEP', 'KEY', 'KICK', 'KID', 'KILL', 'KIND', 'KING', 'KISS', 'KITCHEN', 'KNOCK', 'KNOW', 'LADY', 'LAKE', 'LAND', 'LARGE', 'LAST', 'LATE', 'LAUGH', 'LAW', 'LAY', 'LAZY', 'LEAD', 'LEARN', 'LEAST', 'LEAVE', 'LEFT', 'LEG', 'LESS', 'LET', 'LETTER', 'LEVEL', 'LIE', 'LIFE', 'LIFT', 'LIGHT', 'LIKE', 'LINE', 'LIP', 'LIST', 'LISTEN', 'LITTLE', 'LIVE', 'LOAD', 'LOCAL', 'LOCK', 'LONG', 'LOOK', 'LORD', 'LOSE', 'LOT', 'LOUD', 'LOVE', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'LOVELY', 'LOW', 'LUCK', 'LUNCH', 'MACHINE', 'MAD', 'MAIN', 'MAJOR', 'MAKE', 'MAN', 'MANAGE', 'MANY', 'MARK', 'MARKET', 'MARRY', 'MASTER', 'MATTER', 'MAY', 'MAYBE', 'MEAL', 'MEAN', 'MEET', 'MEMBER', 'MENTION', 'MESS', 'MIDDLE', 'MIGHT', 'MILE', 'MILK', 'MILLION', 'MIND', 'MINUTE', 'MISS', 'MISTAKE', 'MISTER', 'MOMENT', 'MONDAY', 'MONEY', 'MONTH', 'MORE', 'MORNING', 'MOST', 'MOTHER', 'MOUNTAIN', 'MOUTH', 'MOVE', 'MOVIE', 'MRS', 'MUCH', 'MUM', 'MUSIC', 'MUST', 'NAME', 'NATION', 'NATURE', 'NAUGHTY', 'NEAR', 'NEAT', 'NECESSARY', 'NECK', 'NEED', 'NEIGHBOUR', 'NEVER', 'NEW', 'NEWS', 'NEXT', 'NICE', 'NIGHT', 'NINE', 'NO', 'NOBODY', 'NOISE', 'NONE', 'NORMAL', 'NORTH', 'NOSE', 'NOT', 'NOTE', 'NOTHING', 'NOTICE', 'NOW', 'NUMBER', 'NURSE', 'OBVIOUS', 'ODD', 'OF', 'OFF', 'OFFER', 'OFFICE', 'OFFICER', 'OFTEN', 'OIL', 'OK', 'OLD', 'ON', 'ONCE', 'ONE', 'ONLY', 'OPEN', 'OR', 'ORANGE', 'ORDER', 'OTHER', 'OUGHT', 'OUT', 'OVER', 'OWN', 'OWNED', 'PACK', 'PAGE', 'PAIN', 'PAINT', 'PAIR', 'PAPER', 'PARDON', 'PARENT', 'PARK', 'PART', 'PARTICULAR', 'PARTY', 'PASS', 'PAST', 'PAY', 'PENNY', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'PEOPLE', 'PERFECT', 'PERHAPS', 'PERSON', 'PHOTOGRAPH', 'PICK', 'PICTURE', 'PIECE', 'PLACE', 'PLAN', 'PLANT', 'PLAY', 'PLEASE', 'PLENTY', 'PLUS', 'POINT', 'POLICE', 'POOR', 'POP', 'POSITION', 'POSSIBLE', 'POST', 'POT', 'POUND', 'POWER', 'PREPARE', 'PRESENT', 'PRESS', 'PRETTY', 'PRICE', 'PRINCE', 'PRISON', 'PROBABLY', 'PROBLEM', 'PROGRAMME', 'PROMISE', 'PROPER', 'PROTECT', 'PUBLIC', 'PULL', 'PUSH', 'PUT', 'QUARTER', 'QUEEN', 'QUESTION', 'QUICK', 'QUIET', 'QUITE', 'RABBIT', 'RACE', 'RADIO', 'RAIN', 'RAISE', 'RATE', 'RATHER', 'REACH', 'READ', 'READY', 'REAL', 'REALISE', 'REALLY', 'REASON', 'RECENT', 'RECORD', 'RED', 'RELATE', 'REMEMBER', 'RENT', 'REPLY', 'REPORT', 'RESPONSIBLE', 'REST', 'RETURN', 'RICH', 'RID', 'RIDE', 'RIGHT', 'RIGHTS', 'RING', 'RISE', 'RIVER', 'ROAD', 'ROCK', 'ROLL', 'ROOM', 'ROUGH', 'ROUND', 'RUBBISH', 'RULE', 'RUN', 'SAD', 'SAFE', 'SAIL', 'SAME', 'SATURDAY', 'SAVE', 'SAY', 'SCARE', 'SCHOOL', 'SCIENCE', 'SEA', 'SEAT', 'SECOND', 'SECURE', 'SEE', 'SEEM', 'SELF', 'SELL', 'SEND', 'SENSE', 'SERIOUS', 'SERVE', 'SERVICE', 'SET', 'SETTLE', 'SEVEN', 'SEVERAL', 'SEX', 'SHAKE', 'SHALL', 'SHAPE', 'SHARE', 'SHE', 'SHIP', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'SHIRT', 'SHOE', 'SHOOT', 'SHOP', 'SHORT', 'SHOULD', 'SHOULDER', 'SHOUT', 'SHOW', 'SHUT', 'SHY', 'SICK', 'SIDE', 'SIGHT', 'SIGN', 'SILLY', 'SIMPLE', 'SINCE', 'SING', 'SINGLE', 'SIR', 'SISTER', 'SIT', 'SITUATION', 'SIX', 'SIZE', 'SKIN', 'SKY', 'SLEEP', 'SLIGHT', 'SLIP', 'SLOW', 'SMALL', 'SMELL', 'SMILE', 'SMOKE', 'SNOW', 'SO', 'SOFT', 'SOME', 'SON', 'SONG', 'SOON', 'SORRY', 'SORT', 'SOUND', 'SOUTH', 'SPACE', 'SPEAK', 'SPECIAL', 'SPEND', 'SPORT', 'SPOT', 'SPRING', 'SQUARE', 'STAGE', 'STAND', 'STAR', 'STARE', 'START', 'STATE', 'STATION', 'STAY', 'STEAL', 'STEP', 'STICK', 'STILL', 'STONE', 'STOP', 'STORE', 'STORY', 'STRAIGHT', 'STRANGE', 'STREET', 'STRIKE', 'STRONG', 'STUDENT', 'STUDY', 'STUFF', 'STUPID', 'SUBJECT', 'SUCH', 'SUDDEN', 'SUGGEST', 'SUIT', 'SUMMER', 'SUN', 'SUNDAY', 'SUPPORT', 'SUPPOSE', 'SURE', 'SURPRISE', 'SWEET', 'SWIM', 'SYSTEM', 'TABLE', 'TAIL', 'TAKE', 'TALK', 'TALL', 'TAPE', 'TASTE', 'TAX', 'TEA', 'TEACH', 'TEAM', 'TEAR', 'TELEPHONE', 'TELEVISION', 'TELL', 'TEN', 'TEND', 'TERM', 'TERRIBLE', 'TEST', 'THAN', 'THANK', 'THAT', 'THE', 'THEN', 'THERE', 'THEY', 'THICK', 'THING', 'Headwords', 'of', 'the', 'First', 'Words', '1st', 'THINK', 'THIRST', 'THIRTEEN', 'THIRTY', 'THIS', 'THOUGH', 'THOUSAND', 'THREE', 'THROAT', 'THROUGH', 'THROW', 'THURSDAY', 'TIE', 'TIGHT', 'TILL', 'TIME', 'TIRE', 'TO', 'TODAY', 'TOGETHER', 'TOMORROW', 'TONIGHT', 'TOO', 'TOOTH', 'TOP', 'TOTAL', 'TOUCH', 'TOWARD', 'TOWN', 'TRACK', 'TRAIN', 'TRAVEL', 'TREAT', 'TREE', 'TRIP', 'TROUBLE', 'TRUE', 'TRUST', 'TRUTH', 'TRY', 'TUESDAY', 'TURN', 'TWELVE', 'TWENTY', 'TWO', 'TYPE', 'UGLY', 'UNCLE', 'UNDER', 'UNDERNEATH', 'UNDERSTAND', 'UNLESS', 'UNTIL', 'UP', 'UPON', 'USE', 'USUAL', 'VAN', 'VERY', 'VIDEO', 'VIEW', 'VISIT', 'VOICE', 'WAIT', 'WAKE', 'WALK', 'WALL', 'WANT', 'WAR', 'WARM', 'WASH', 'WASTE', 'WATCH', 'WATER', 'WAVE', 'WAY', 'WE', 'WEAR', 'WEATHER', 'WEB', 'WED', 'WEDNESDAY', 'WEEK', 'WEIGHT', 'WELL', 'WEST', 'WET', 'WHAT', 'WHEEL', 'WHEN', 'WHERE', 'WHETHER', 'WHICH', 'WHILE', 'WHITE', 'WHO', 'WHOLE', 'WHY', 'WIDE', 'WIFE', 'WILD', 'WILL', 'WIN', 'WIND', 'WINDOW', 'WINE', 'WINTER', 'WISH', 'WITH', 'WITHIN', 'WITHOUT', 'WOMAN', 'WONDER', 'WOOD', 'WORD', 'WORK', 'WORLD', 'WORRY', 'WORSE', 'WORTH', 'WOULD', 'WRITE', 'WRONG', 'YARD'
];
String scrambleWord = '';
Map<String, String> scrambleMap = new HashMap();
final _random = new Random();
String randomScrambledWord;
var keys;

void main() {
  for (var i = 0; i < originalList.length; i++) {
    var originalWord = originalList[i];
    scrambleWord = generateScrambledWord(originalWord);
    scrambleMap.putIfAbsent(scrambleWord.toLowerCase(), () => originalWord.toLowerCase());
  }
  keys = scrambleMap.keys.toList();
  randomScrambledWord = keys[_random.nextInt(keys.length)];
  runApp(MyApp());
}

String generateScrambledWord(String word) {
  List<int> positionList = new List();
  String scrambledWord = '';
  for (var i = 0; i < word.length; i++) {
    positionList.add(i);
  }
  int initialListLength = positionList.length;
  for (var i = 0; i < initialListLength; i++) {
    int position = _random.nextInt(positionList.length);
    int valueAtPosition = positionList[position];
    scrambledWord = scrambledWord + word[valueAtPosition];
    positionList.removeAt(position);
  }
  return scrambledWord;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Word Scramble ')), body: TextInputWidget());
  }
}

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  // ignore: non_constant_identifier_names
  void Change2() {
    setState(() {
      clicked = 'True';
      if (clicked == 'True') {

        if (text.toLowerCase() == scrambleMap[randomScrambledWord]) {
          text = 'b';
          cat = 'clue = b';
          coin = coin - 1;
          text = "";
          cat = 'correct';
          controller.clear();
          randomScrambledWord = keys[_random.nextInt(keys.length)];
        } else {
          cat = 'wrong word! the answer = '+  scrambleMap[randomScrambledWord];
          controller.clear();
          randomScrambledWord = keys[_random.nextInt(keys.length)];
        }

        if (word == 2) {
          coin2 = coin + 1;
          coins2 = coin2.toString();
          word = 0;
          words = word.toString();
        }
        if (coin == 0) {
          coin = coin + 1;
        }
        if (text == 'exit') {
          controller.clear();
          cat = '';
          text = "";
        }
      }
    });
  }

  // ignore: non_constant_identifier_names
  void Change() {
    setState(() {
      cat =
      'go to https://www.youtube.com/watch?v=NZwqycq70ns for rules to the app';
    });
  }

  void change(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
          autocorrect: false,
          autofocus: true,
          obscureText: true,
          controller: this.controller,
          decoration: new InputDecoration(
            hintText: "Enter Answer",
            suffixIcon: IconButton(
                icon: Icon(Icons.send),
                splashColor: Colors.blue,
                tooltip: 'Send your to do list',
                onPressed: Change2),
          ),
          onChanged: (text) => this.change(text)),
      Text('Your Answer = ' + text, style: TextStyle(fontSize: 20)),
      Text('scrambled word = ' + randomScrambledWord,
          style: TextStyle(fontSize: 20)),
      Text(cat, style: TextStyle(fontSize: 20)),
    ]);
  }
}
