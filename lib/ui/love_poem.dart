import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms/dao/poem_dao.dart';
import 'package:sms/entity/poem.dart';

class LovePoemPage extends StatefulWidget {
  final PoemDao dao;
  final String category;

  const LovePoemPage({Key? key, required this.dao, required this.category})
      : super(key: key);

  @override
  _LovePoemPageState createState() => _LovePoemPageState();
}

class _LovePoemPageState extends State<LovePoemPage> {
  String title = '';

  @override
  void initState() {
    super.initState();
    switch (widget.category) {
      case 'love':
        title = "SEVGI\nSHE'RLARI";
        break;
      case 'miss':
        title = "SOG'INCH\nARMON";
        break;
      case 'congratulations':
        title = "TABRIK\nSHE'RLAR";
        break;
      case 'parents':
        title = "OTA-ONA\nHAQIDA";
        break;
      case 'friendship':
        title = "DO'STLIK\nSHE'RLARI";
        break;
      case 'joke':
        title = "HAZIL\nSHE'RLAR";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xffE5E5E5),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xcd908e8e), spreadRadius: 1)
                              ]
                              // border: Border.all(color: Colors.blueAccent,),
                              ),
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: SvgPicture.asset(
                                  'assets/svg/ic_back.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 50,
                          fontFamily: 'assets/fonts/regular.OTF',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: StreamBuilder(
                  stream: widget.dao.getAllPoemByCategory(widget.category),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Poem>> snapshot) {
                    if (snapshot.hasData) {
                      var list = snapshot.data as List<Poem>;
                      return ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {

                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 5),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: const Color(0xffffffff),
                                  elevation: 2.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 13.0,
                                        right: 10.0,
                                        top: 8.0,
                                        bottom: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list[index].title!,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          list[index].body!,
                                          maxLines: 4,
                                          style: const TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
