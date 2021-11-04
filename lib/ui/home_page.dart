import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sms/dao/poem_dao.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/ui/love_poem.dart';

class HomePage extends StatefulWidget {
  final PoemDao? dao;

  const HomePage({Key? key, required this.dao}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  addIntToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('intValue', 1);
  }

  getIntValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int? intValue = prefs.getInt('intValue');
    return intValue;
  }

  writePoems() async {
    if (await getIntValuesSF() == null) {
      var s1 =
          "Dunyoga kelarkan mitti farishta\nIchida esa katta bir olam\nKozimdagi yoshim tugaydimu hech\nFaqat Hudoyim eshitar nolam.\n\nDost deganimga men yod bolibman\nDardi bolsa oz boynimga olibman\nOrtdan qancha giybatiga qolibman\nDost deganimga men yod bolibman.\n\nGapirgim kelmaydi nega bilmadim\nAytay desam dardlarim bisyor\nEsimga olgan choglarim esa\nYonimda bolmaydi bitta ham dasyor.\n\nHamma inson yahshi bizlardan ozga\nBiz qilgan yahshilik korinmas kozga\nZor bolgan kunimiz bor bir chimdim tuzga\nBu 5-kunlik dunyoda ahil bolaylik.\n\nKun ketidan kunlar o'tmoqda asta\nMen yashayotgan olamim hech kim bilmaydi\nO'zim kulib yurganim bilan\nIchimdan otayotgan dardim bilmaydi.\n\nBahtli kunimni korolmaydimi\nDushmanlar koz yoshim suvday ichadi\nGiybatimni qilib yurganlar\nMenga savob, madhin bichadi.";
      var s2 =
          "Qoqilsam gar hayotda,\nKimlar kulmas holimga.\nKoz yoshlarim artmoq uchun,\nDostim kelar yonimga.\n\nEslayman uni doyim,\nHar bir otgan onimda.\nQorqmayman endi gamdan,\nDostim borku yonimda.\n\nDostim bilan bolsam men,\nHech kim hafa qilmaydi.\nUni yahshi koraman,\nLekin buni bilmaydi.";
      var s3 =
          "Қошлари камондек хилолим,\nСоябон, сарбоним, Билолим.\nҚалбимда эзгулик нихолим,\nДадажоним, Сизни соғиндим.\n\nСизсиз менинг қалбим қуёшим,\nСиз биландир мағрурдир бошим.\nХ,алол рисқ- у беминнат ошим,\nДадажоним, Сизни соғиндим.\n\nХ,аммадан xам мехрибонгинам,\nЖондан ортиқ жонажонгинам.\nТахти баланд Сулаймонгинам,\nДадажоним, Сизни соғиндим.\n\nДадаларнинг зўри Ўзингиз,\nПурх,икматли доно сўзингиз.\nПорлаб турар қора кўзингиз,\nДадажоним, Сизни соғиндим.\n\nБахтимиз Сиз тахтиравоним,\nСуянгувчи оромижоним.\nНасих,атгўй жон-у жах,оним,\nДадажоним, Сизни соғиндим.\n\nДада десам қувнайди кўзим,\nЛабда ханда, кулади юзим\nДоногинам, ох, ширин сўзим,\nДадажоним, Сизни соғиндим.\n\nМудом хаммадан керагимсиз,\nУриб турган бу юрагимсиз.\nДалда бўлган зўр тиргагимсиз,\nДадажоним, Сизни согиндим.";
      var s4 = """
Ийсо Масиҳ келса ҳам,
Сен троллар қаролсан.
«Мен холисман»-, десанг ҳам,
Сен троллар қаролсан.

Виждонини сотворган,
Пасткашликда кетворган,
Номусини ютворган,
Сен троллар қаролсан.

На насаб бор, на жисм,
Ва на шарафли исм,
Отаси бору, етим -
Сен троллар қаролсан.

Баҳодир - юзсиз ажиб,
Номард, субутсиз ғариб,
Катта кетсанг ҳам харип,
Сен троллар қаролсан.

Инсонийликка орсан,
Қўрқоқликда қиролсан,
Душманларга қаролсан,
Сен қароллар тролсан...

Қўйгин, «мазги»ни ема!
Сенгамас бу маҳкама,
Зан бўлиб, мардман дема!
Сен троллар қаролсан!
""";
      var s5 = """
Mayli tog‘lar nurab ketsa xam.
Yo dard kelsa qilarman toqat.
Nolimayman nedir bo‘lsa kam.
Onam ko‘z yosh to‘kmasin faqat.

Yulduzlarin yashirsin osmon.
Xidlarini qizg‘onsin rayxon.
O‘tinchim shu: lek ikki jaxon.
Onam ko‘z yosh to‘kmasin faqat.

Onam bo‘lsa tashvish yo‘q butkul.
Qaxratonda ochiladi gul.
Olloxdan so‘ng ulargaman qul.
Onam ko‘z yosh to‘kmasin faqat.

Xizmatida bo‘layin fido.
Gʻam ko‘rmasin, chekmasin nido.
O‘tinchimni tinglagin Xudo.
Onam ko‘z yosh to‘kmasin faqat.
""";
      var s6 = """
Hasad qilib nega yonasiz,
Menda bori sizda bo‘lmasa.
Nima qilay yashamaymi-a?
Tirikligim sizga yoqmasa.

Men ayibdor emasman ahir,
Bugun omad sizga kulmasa.
Mayli suymang, g‘iybatim qiling,
Yaxshiligim sizga yoqmasa.

Soxta kulib maqtaysiz ammo,
Qon yig‘laysiz ko‘zlarim kulsa.
Hasratlarda yonib keting siz,
Kulib turgan ko‘zim yoqmasa.

Kim dushmanu kimlar menga do‘st,
Kim bilardi xudo bilmasa.
Men kimga ham kerakman o‘zi,
Cho‘ntagimda pulim bo‘lmasa.

Eh odamlar ko‘rolmaysiz-a,
Menda bori sizda bo‘lmasa.
Kulib kulib yashayveraman,
Sizga borib yoqsa yoqmasa.

Hech Qodirni ko‘ngli to‘lmaydi,
Qo‘lga qalam olib turmasa.
Sizdan aslo xafa bo‘lmaydi,
Yozgan sheri  sizga yoqmasa.
""";
      var s7 = """
Doim kulib yuring tabassum bilan.
Yashang doim baxtga oshyona.
Mexrdan poyizga to'shayman gilam.
Tug'ulgan kuningiz bilan ona. 
""";
      var s8 = """
O‘tsa ham qancha yillar,
Unda ekan hayoling.
Unutilmas ekanda,
Chindan sevgan insoning.

Qo‘msab qolasan yana,
O‘sha baxtli kunlarni
Qadri bo‘lak ekanda,
O‘sha bedor tunlarni.

Ko‘zlarini izlaysan.
So‘zlarini eslaysan,
Unutolmay, yoningda,
Bo‘lishini xohlaysan.

Unutdim deysan asta,
Aslida yurak qo‘msar.
Yoniga boray deysan,
Gʻururing yo‘ling to‘sar.

Ha u boshqacha edi,
Endi alam qilasan.
Uni chindan sevganing,
Kech bo‘lganda bilasan.

O‘tsa ham qancha yillar,
Unda ekan hayoling.
Unutilmas ekanda,
Chindan sevgan insoning.
""";
      var s9 = """
Og'ir kunda tirgak do'st,
Havotirda sergak do'st,
100 ta dushman oldida,
Qochmas aslo erkak do'st!

Dushmanlari ortganda,
Sohta do'stlar qochganda,
Barcha qo'lin tortganda,
Qo'lin cho'zar Chindan do'st!
""";
      final poem1 = Poem(
          title: "Dardim", body: s1, category: "miss", isNew: 1, isLiked: 0);
      final poem2 = Poem(
          title: "Dostim",
          body: s2,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem3 = Poem(
          title: "Дадажоним, Сизни соғиндим.",
          body: s3,
          category: "parents",
          isNew: 0,
          isLiked: 0);
      final poem4 = Poem(
          title: "АБУ ҚАРОЛ ИБН ТРОЛГА",
          body: s4,
          category: "joke",
          isNew: 0,
          isLiked: 0);
      final poem5 = Poem(
          title: "Onam yig‘lamasin...",
          body: s5,
          category: "parents",
          isNew: 1,
          isLiked: 0);
      final poem6 = Poem(
          title: "YOQMASA..", body: s6, category: "love", isNew: 1, isLiked: 0);
      final poem7 = Poem(
          title: "Tug'ilgan kunga tabrik ona oyi aya uchun",
          body: s7,
          category: "congratulations",
          isNew: 0,
          isLiked: 0);
      final poem8 = Poem(
          title: "Chindan sevgan insoning!",
          body: s8,
          category: "love",
          isNew: 1,
          isLiked: 0);
      final poem9 = Poem(
          title: "Chin do'st",
          body: s9,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem10 = Poem(
          title: "Chin do'st",
          body: s9,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem11 = Poem(
          title: "Dardim", body: s1, category: "miss", isNew: 1, isLiked: 0);
      final poem12 = Poem(
          title: "Dostim",
          body: s2,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem13 = Poem(
          title: "Дадажоним, Сизни соғиндим.",
          body: s3,
          category: "parents",
          isNew: 0,
          isLiked: 0);
      final poem14 = Poem(
          title: "АБУ ҚАРОЛ ИБН ТРОЛГА",
          body: s4,
          category: "joke",
          isNew: 0,
          isLiked: 0);
      final poem15 = Poem(
          title: "Onam yig‘lamasin...",
          body: s5,
          category: "parents",
          isNew: 1,
          isLiked: 0);
      final poem16 = Poem(
          title: "YOQMASA..", body: s6, category: "love", isNew: 1, isLiked: 0);
      final poem17 = Poem(
          title: "Tug'ilgan kunga tabrik ona oyi aya uchun",
          body: s7,
          category: "congratulations",
          isNew: 0,
          isLiked: 0);
      final poem18 = Poem(
          title: "Chindan sevgan insoning!",
          body: s8,
          category: "love",
          isNew: 1,
          isLiked: 0);
      final poem19 = Poem(
          title: "Chin do'st",
          body: s9,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem20 = Poem(
          title: "Dardim", body: s1, category: "miss", isNew: 1, isLiked: 0);
      final poem21 = Poem(
          title: "Dardim", body: s1, category: "miss", isNew: 1, isLiked: 0);
      final poem22 = Poem(
          title: "Dostim",
          body: s2,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem23 = Poem(
          title: "Дадажоним, Сизни соғиндим.",
          body: s3,
          category: "parents",
          isNew: 0,
          isLiked: 0);
      final poem24 = Poem(
          title: "АБУ ҚАРОЛ ИБН ТРОЛГА",
          body: s4,
          category: "joke",
          isNew: 0,
          isLiked: 0);
      final poem25 = Poem(
          title: "Onam yig‘lamasin...",
          body: s5,
          category: "parents",
          isNew: 1,
          isLiked: 0);
      final poem26 = Poem(
          title: "YOQMASA..", body: s6, category: "love", isNew: 1, isLiked: 0);
      final poem27 = Poem(
          title: "Tug'ilgan kunga tabrik ona oyi aya uchun",
          body: s7,
          category: "congratulations",
          isNew: 0,
          isLiked: 0);
      final poem28 = Poem(
          title: "Chindan sevgan insoning!",
          body: s8,
          category: "love",
          isNew: 1,
          isLiked: 0);
      final poem29 = Poem(
          title: "Chin do'st",
          body: s9,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem30 = Poem(
          title: "Dardim", body: s1, category: "miss", isNew: 1, isLiked: 0);
      final poem31 = Poem(
          title: "Dardim", body: s1, category: "miss", isNew: 1, isLiked: 0);
      final poem32 = Poem(
          title: "Dostim",
          body: s2,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      final poem33 = Poem(
          title: "Дадажоним, Сизни соғиндим.",
          body: s3,
          category: "parents",
          isNew: 0,
          isLiked: 0);
      final poem34 = Poem(
          title: "АБУ ҚАРОЛ ИБН ТРОЛГА",
          body: s4,
          category: "joke",
          isNew: 0,
          isLiked: 0);
      final poem35 = Poem(
          title: "Onam yig‘lamasin...",
          body: s5,
          category: "parents",
          isNew: 1,
          isLiked: 0);
      final poem36 = Poem(
          title: "YOQMASA..", body: s6, category: "love", isNew: 1, isLiked: 0);
      final poem37 = Poem(
          title: "Tug'ilgan kunga tabrik ona oyi aya uchun",
          body: s7,
          category: "congratulations",
          isNew: 0,
          isLiked: 0);
      final poem38 = Poem(
          title: "Chindan sevgan insoning!",
          body: s8,
          category: "love",
          isNew: 1,
          isLiked: 0);
      final poem39 = Poem(
          title: "Chin do'st",
          body: s9,
          category: "friendship",
          isNew: 1,
          isLiked: 0);
      widget.dao!.insertPoem(poem1);
      widget.dao!.insertPoem(poem2);
      widget.dao!.insertPoem(poem3);
      widget.dao!.insertPoem(poem4);
      widget.dao!.insertPoem(poem5);
      widget.dao!.insertPoem(poem6);
      widget.dao!.insertPoem(poem7);
      widget.dao!.insertPoem(poem8);
      widget.dao!.insertPoem(poem9);
      widget.dao!.insertPoem(poem10);
      widget.dao!.insertPoem(poem11);
      widget.dao!.insertPoem(poem12);
      widget.dao!.insertPoem(poem13);
      widget.dao!.insertPoem(poem14);
      widget.dao!.insertPoem(poem15);
      widget.dao!.insertPoem(poem16);
      widget.dao!.insertPoem(poem17);
      widget.dao!.insertPoem(poem18);
      widget.dao!.insertPoem(poem19);
      widget.dao!.insertPoem(poem20);
      widget.dao!.insertPoem(poem21);
      widget.dao!.insertPoem(poem22);
      widget.dao!.insertPoem(poem23);
      widget.dao!.insertPoem(poem24);
      widget.dao!.insertPoem(poem25);
      widget.dao!.insertPoem(poem26);
      widget.dao!.insertPoem(poem27);
      widget.dao!.insertPoem(poem28);
      widget.dao!.insertPoem(poem29);
      widget.dao!.insertPoem(poem30);
      widget.dao!.insertPoem(poem31);
      widget.dao!.insertPoem(poem32);
      widget.dao!.insertPoem(poem33);
      widget.dao!.insertPoem(poem34);
      widget.dao!.insertPoem(poem35);
      widget.dao!.insertPoem(poem36);
      widget.dao!.insertPoem(poem37);
      widget.dao!.insertPoem(poem38);
      widget.dao!.insertPoem(poem39);
      await addIntToSF();
    }
  }

  @override
  void initState() {
    super.initState();
    writePoems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "SMS\nSHE'RLAR",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'assets/fonts/regular.OTF',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xfff8C500),
                        elevation: 10,
                        shadowColor: const Color(0xfff8C500),
                        margin: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: SvgPicture.asset(
                                          'assets/svg/ic_news_pack.svg',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Yangilar",
                                      style: TextStyle(
                                          color: Color(0xffB99303),
                                          fontSize: 18,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FutureBuilder(
                                      future: widget.dao!.getAllPoemNew(),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasError) {
                                          return Center(
                                            child: Text("${snapshot.error}"),
                                          );
                                        } else if (snapshot.hasData) {
                                          var list =
                                              snapshot.data as List<Poem>;
                                          var count = list.length;
                                          return Text(
                                            '$count',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                fontFamily:
                                                    'assets/fonts/SFProDisplay.ttf'),
                                          );
                                        } else {
                                          return const Text(
                                            '0',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                fontFamily:
                                                    'assets/fonts/SFProDisplay.ttf'),
                                          );
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'ta',
                                      style: TextStyle(
                                          color: Color(0xffB99303),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                )
                              ],
                            ),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x99f8c500),
                                  blurRadius: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffea1655),
                        elevation: 5,
                        shadowColor: const Color(0xffea1655),
                        margin: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: SvgPicture.asset(
                                          'assets/svg/ic_liked_pack.svg',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Saqlanganlar",
                                      style: TextStyle(
                                          color: Color(0xffFFA6B6),
                                          fontSize: 18,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FutureBuilder(
                                      future: widget.dao!.getAllPoemLiked(),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasError) {
                                          return Center(
                                            child: Text("${snapshot.error}"),
                                          );
                                        } else if (snapshot.hasData) {
                                          var list =
                                              snapshot.data as List<Poem>;
                                          var count = list.length;
                                          return Text(
                                            '$count',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                fontFamily:
                                                    'assets/fonts/SFProDisplay.ttf'),
                                          );
                                        } else {
                                          return const Text(
                                            '0',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                fontFamily:
                                                    'assets/fonts/SFProDisplay.ttf'),
                                          );
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'ta',
                                      style: TextStyle(
                                          color: Color(0xffFFA6B6),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                )
                              ],
                            ),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x8bea1655),
                                  blurRadius: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LovePoemPage(
                                dao: widget.dao!, category: 'love');
                          }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: const Color(0xffffffff),
                          elevation: 0.0,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/png/ic_lovely.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Sevgi she'rlari",
                                style: TextStyle(
                                    color: Color(0xff6a6a6a),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontFamily:
                                        'assets/fonts/SFProDisplay.ttf'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LovePoemPage(
                                dao: widget.dao!, category: 'miss');
                          }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: const Color(0xffffffff),
                          elevation: 0.0,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/png/ic_miss.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Sog'inch armon",
                                style: TextStyle(
                                    color: Color(0xff6a6a6a),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontFamily:
                                        'assets/fonts/SFProDisplay.ttf'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LovePoemPage(
                                dao: widget.dao!, category: 'congratulations');
                          }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: const Color(0xffffffff),
                          elevation: 0.0,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/png/ic_congratulations.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Tabrik she'rlari",
                                style: TextStyle(
                                    color: Color(0xff6a6a6a),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontFamily:
                                        'assets/fonts/SFProDisplay.ttf'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LovePoemPage(
                                dao: widget.dao!, category: 'parents');
                          }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: const Color(0xffffffff),
                          elevation: 0.0,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/png/ic_parents.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Ota-ona haqida",
                                style: TextStyle(
                                    color: Color(0xff6a6a6a),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontFamily:
                                        'assets/fonts/SFProDisplay.ttf'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LovePoemPage(
                                dao: widget.dao!, category: 'friendship');
                          }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: const Color(0xffffffff),
                          elevation: 0.0,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/png/ic_friendship.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Do'stlik she'rlari",
                                style: TextStyle(
                                    color: Color(0xff6a6a6a),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontFamily:
                                        'assets/fonts/SFProDisplay.ttf'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LovePoemPage(
                                dao: widget.dao!, category: 'joke');
                          }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: const Color(0xffffffff),
                          elevation: 0.0,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/png/ic_joke.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Hazil she'rlar",
                                style: TextStyle(
                                    color: Color(0xff6a6a6a),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontFamily:
                                        'assets/fonts/SFProDisplay.ttf'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
