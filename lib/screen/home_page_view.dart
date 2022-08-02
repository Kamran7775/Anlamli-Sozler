import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController loveController;
  late AnimationController bookController;
  late AnimationController moneyController;
  late AnimationController jobsController;
  int sozIndex = 0;
  bool book = false;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    controller.animateTo(1);
    loveController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    bookController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    moneyController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    jobsController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Anlamlı Sözler'),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r)),
                    width: double.infinity.w,
                    child: (book == false)
                        ? Lottie.asset('assets/magicbook.json',
                            alignment: Alignment.center,
                            controller: controller,
                            repeat: false)
                        : Center(
                            child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              sozler[sozIndex],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                          )),
                  ),
                )),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 20.h, bottom: 20.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                loveController
                                    .animateTo(1)
                                    .whenCompleteOrCancel(() {
                                  loveController.animateBack(0);
                                });
                                setState(() {
                                  sozIndex = Random().nextInt(31) + 0;
                                  book = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple[50],
                                    border: Border.all(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(20.r)),
                                width: double.infinity.w,
                                height: 150.h,
                                child: Lottie.asset(
                                  'assets/love.json',
                                  alignment: Alignment.center,
                                  controller: loveController,
                                  repeat: false,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                moneyController
                                    .animateTo(1)
                                    .whenCompleteOrCancel(() {
                                  moneyController.animateBack(0);
                                });
                                setState(() {
                                  sozIndex = Random().nextInt(30) + 31;
                                  book = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple[50],
                                    border: Border.all(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(20.r)),
                                width: double.infinity.w,
                                height: 150.h,
                                child: Lottie.asset(
                                  'assets/money.json',
                                  alignment: Alignment.center,
                                  controller: moneyController,
                                  repeat: false,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, bottom: 20.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                bookController
                                    .animateTo(1)
                                    .whenCompleteOrCancel(() {
                                  bookController.animateBack(0);
                                });
                                setState(() {
                                  sozIndex = Random().nextInt(15) + 61;
                                  book = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple[50],
                                    border: Border.all(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(20.r)),
                                width: double.infinity.w,
                                height: 150.h,
                                child: Lottie.asset('assets/book1.json',
                                    alignment: Alignment.center,
                                    controller: bookController,
                                    repeat: false),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                jobsController
                                    .animateTo(1)
                                    .whenCompleteOrCancel(() {
                                  jobsController.animateBack(0);
                                });
                                setState(() {
                                  sozIndex = Random().nextInt(76) + 76;
                                  book = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple[50],
                                    border: Border.all(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(20.r)),
                                width: double.infinity.w,
                                height: 150.h,
                                child: Lottie.asset('assets/job.json',
                                    alignment: Alignment.center,
                                    controller: jobsController,
                                    repeat: false),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> sozler = [
    'ASK: Bugün, ask ve iliski hayatinizda biraz daha temkinli olmalisin. Onu her konuda dogru anlamda anladigindan da emin misin?',
    'ASK: Ask ve iliski hayatinizda hakimiyeti eline almak ve birlikteliginizi dilediginiz gibi yönlendirmek isteyebilirsin. Bu isteginin denge içerisindeki bir iliskiye ne sekilde fayda edecegini gözden geçirmelisin.',
    'ASK: Duygularinizin bugün biraz düzensiz oldugunu görebilirsiniz. Güne, daha önce hiç yapmadiginiz bir sekilde baslamanizi saglayan dogal bir elektrik hissi var. Kalbiniz her zaman dogruyu söyler.',
    'ASK: Duygulariniz çogu zaman rasyonel düsüncelerinize galip geliyor ve sonunda derinlerde duygularin besledigi bir karmasa ortaya çikiyor. Çok da mantikli düsünerek kalbinizi görmezden gelmeyin. Amaciniz bu ikisi arasinda dengeyi bulmak.',
    'ASK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalisin. Bazen sadece eglenmek gerekir, siz de rahatlayin ve birlikte eglenin!',
    'ASK: Cesur olmak, karşılığında bir şey beklemeden koşulsuzca birini sevmektir. Ya seveceksin ya da sevmeyeceksin. Ama unutma: Seveni asla üzmeyeceksin',
    'ASK: Aşk bizim gerçek kaderimizdir. Yaşamın anlamını yalnızken kendimiz bulamıyoruz. Başka biriyle buluyoruz.',
    'ASK: Aşk, düşmanı bir arkadaşa dönüştürebilen tek güçtür. İnsan güzel bulduğunu değil; sevdiğini güzel bulur',
    'ASK: Sen soğuğa hiç aldırmadan balkonda saatlerce izleyebileceğim bir manzarasın. Aşk güzel insanların da korkunç şeyler yapmasını sağlayabilir',
    'ASK: Aynı anda iki kişiyi seviyorsanız, ikinciyi seçin. Çünkü ilkini gerçekten sevseydiniz ikinci için düşmezdiniz',
    'ASK: Sevgi karanlık bir tünelde yakılan mum ışığı gibidir, size yolunuzu gösterir ama uzakta ne olduğunu söylemez',
    'ASK: Sen beni bir dağın eteğindeki gelincik kadar severken, ben seni o dağın doruğundaki kardelen kadar özlüyorum',
    'ASK: Bugün okulda 1 dakikanın 60 saniye, 60 saniyenin ise 1 dakika olduğunu öğrettiler ama sensiz geçen dakikalarımı hesaplayamadılar be gülüm',
    'ASK: Sen bazen zifiri karanlık gecemin güneşi, sen bazen hayatin cesaret veren mutluluk yani ve sen her zaman sevgimin tek nedenisin',
    'ASK: İçimden bir şiir yazmak geldi, yazıyorum çünkü seviyorum, seviyorum çünkü hissediyorum, hissediyorum çünkü yaşıyorum, yaşıyorum çünkü seninleyim',
    'ASK: Dualar ettim aşkımız hiç bitmesin diye, adını kumsallara yazdım yalvardım dalgalara ne olur silmeyin diye',
    'ASK: Sözlerin aklımda ya da aklımın ardında, hayalin karşımda ya da sesin kulağımda, ya ben çıldırıyorum ya da çok özlüyorum, ya özlemek ya da özlenen çok özel birtanem',
    'ASK: Gül bahçesinde geçse de ömrüm, inan üstüne gül koklamam gülüm. Seni koklamak olsa da ölüm, uğrunda ölmeye değer gülüm',
    'ASK: Bu gece rüyama gir gizlice, beni sımsıkı sar öp kokla iyice, son kez isyanlar savur, küfret güzelce ve sonra çek git kahrolası hayatımdan',
    'ASK: Yüreğine damla damla umut, günlerine bin tatlı mutluluk dolsun. Yüzün ve gülün hiç solmasın, sevdiklerin hep yanında olsun',
    'ASK: Seni ne kadar sevdiğimi merak ediyorsan, yağan yağmurun her damlasını tutmaya çalış, tutamadığın her yağmur damlası kadar seviyorum seni',
    'ASK: Gerçek aşklar bitmesini bilen aşklar olduğuna göre, insanlar ya hep sahte aşklarıyla evlenir ya da evlenerek aşklarını sahteleştirir',
    'ASK: Sesini duysam da her an yüzünü görmek gibi değil, özlediğimi bil her an çünkü hiçbir şey seni sevmek gibi degil!',
    'ASK: Eğer bir insan seni en kötü günlerinde ayağa kaldırıyorsa, sana ve hatalarına rağmen senden kopmuyorsa, onun gitmesine izin vermemelisin',
    'ASK: Sana dalgalardan kalem yaptım ve kıyıya seni seviyorum yazdım, sen de inandın değil mi? Sen delisin, seni sevmedim, sana bağlandım, sana taptım',
    'ASK: Gerçekten seviyorsan hiç bir şeyi mazeret etmeyeceksin. Sonuna kadar değil, sonsuza kadar Allah için seveceksin!',
    'ASK: Doğan her günün sabahında, içimde gözlerini görebilmek aşkı olmasa, inan hiçbir şeye değmezdi yaşamak',
    'ASK: Seni ben değil gözlerim seçti, onlar sevdi onlar beğendi. Sen benim değil onlarınsın, gittiysen bana ne onlar ağlasın',
    'ASK: Uyanınca uyandığına pişman eden, geri dönmek isteyip de dönemeyince çaresizlikten çıldırtan, hayatta sadece bir kez görülebilen harika bir rüyasın sen',
    'ASK: Bütün mevsimleri bir günde, bütün yılları bir mevsimde yaşamaya razıyım seninle. Bir tutam sevinç, bir tutam umut ve bir tutam mutluluk gönderiyorum sana',
    'ASK: Gözlerin nehir kirpiklerin köprü olsa, ben üzerinden geçerken ipler kopsa ve düştüğüm yer dudakların olsa',
    'PARA: Para her şeyi yapar diyen adam, para için her şeyi yapan adamdır',
    'PARA: Para nedir bazen ihtiyaç, bazen mutluluk, bazen varlığı acı kayıp. Para insana göre değerlendirilmez. Para harcanır ama insan harcanmaz',
    'PARA: Para hiçbir zaman insanı mutlu etmemiştir ve etmeyecektir, doğasında mutluluk yaratan hiçbir şey yoktur. Bir insan ne kadar çok para kazanırsa, o kadar fazlasını isteyecektir',
    'PARA: Paranın değerini öğrenmek isterseniz borç almaya çalışın. Akçenin değerini, ancak üstünde ki pas belli eder',
    'PARA: Para için evlenmeye, yasal şerefsizlik denir. Eğer zengin olmak istiyorsanız, kazanmak kadar biriktirmeyi de düşünün',
    'PARA: Para iyi hizmetçi, kötü bir efendidir. İnsan Parayı Bulunca Dostunu unutuyor',
    'PARA: Dünyada üç şey saklanamaz: Aşk, duman ve parasızlık. İnsan parasız pulsuz olduğunda kafası işlemeye başlar',
    'PARA: Parası ile kendini şımartan insanlar aslında aynaya baktıklarında hep yalnız ve mutsuzdurlar',
    'PARA: Dünyada en güzel servet insan kalbini kazanmaktır, Parada olunca bu servet ikiye katlanır ve daha güzel bir yaşam hakkına sahip olursunuz',
    'PARA: Diş ağrısı çekenler dişleri sağlam olanları; yoksulluk çekenler de parası çok olanları mutlu sanırlar. ',
    'PARA: Sen mi paraya bağlısın, para mı sana bağlı? İşte bu tamamen sana bağlı.Para bir araçtır. Sizi istediği yere götürür ama hiçbir zaman sürücü koltuğuna oturtmaz',
    'PARA: Yazgıların en güzeli, bir insanın sahip olabileceği en büyük hazine, tutkuyla yaptığı bir iş için ona para ödeniyor olmasıdır',
    'PARA: Bazı insanları dini, imanı para olmuş. Biraz parayı düşündükleri kadar islama yönelseler bu dünyanın aslında ne kadar boş olduğunu anlarlar',
    'PARA: Para aracılığı ile zaman kazanmak gerekirken, yaşamımızı para kazanmak için tüketiyoruz',
    'PARA: Zengin, çok mala sahip olana denmez, zengin kalbi olana denir. Bir insan satın alamadığı şeyler kadar zengindir',
    'PARA: Ömrün, altın kesesine benzer, geceyle gündüz de para sayan adamdır. Bilmeden, anlamadan sayar durur, nihayet kese boşalır, ay tutulur',
    'PARA: Para sadece mutluluk verecek başka bir şey olmadığı zaman mutluluk verebilir. Yeterli gelirin ötesinde insanın ruhu söz konusu olunca hiçbir şey gerçek tatmin veremez',
    'PARA: Kapitalizm dindir. Bankalar kilise, bankacılar rahip, zenginlik cennet, fakirlik cehennem, zenginler aziz, fakirler günahkar, mülkiyet kutsaldır, PARA İSE TANRIDIR!',
    'PARA: Kral olup paramı dilenci gibi harcamaktansa, dilenci olup, paramı kral gibi harcamayı tercih ederim',
    'PARA: Parayla Saadet olur, Merve olur, Hale olur, Jale olur.Parasız en fazla Naciye ne biliyim Hayriye falan olur',
    'PARA: Parayı kaybeden çok kaybeder, arkadaş kaybeden daha da çok kaybeder, inancını kaybeden her şeyini kaybeder',
    'PARA: Paranın tüm kötülüklerin kaynağı olduğunu söylüyorsunuz. Pek hiç tüm bu paranın kaynağının ne olduğunu sordunuz mu?',
    'PARA: Yeniçağda paranın gittikçe artan bir kuvvet oluşu, ahlak mukavemetinin gittikçe azalmasındandır',
    'PARA: Parayla Saadet olur, Merve olur, Hale olur, Jale olur.Parasız en fazla Naciye ne biliyim Hayriye falan olur',
    'PARA: Parayı zevk için tehlikeli şekilde kullanmak, çalıntı bir arabayla hız yapmak gibidir. Onu durdurmak için arabayı değil, şoförü tutuklamalısınız.',
    'PARA: Kafaniza uzun süredir koydugunuz bazi harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyaciniz oldugunu sorun ve bir kismini iptal edin. Bugün bir hayir kurumuna küçücük bir bagis yapin, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akisinizin dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa basina oturup bir bütçe hesabi yapmalisiniz, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, baskalarina yardim, destek ve hizmet duygunuzun yüksek oldugu bir gün olabilir, hayir, bagis islerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, baglantilariniz size verdikleri destekten süphelenebilirler. Sakin hareket edin, bir adim geri durun, ve paradan çok sagliginizla ilgilenin.',
    'PARA: Para kaynaklarimiz ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrica maddi konularda ve harcamalarda uzun süredir sizi mesgul eden bir konuda karara varabilirsiniz, yakinlarinizdan veya esinizden karar alirken yardim isteyin.',
    'TAVSIYE: Dünya, herkese yetebilecek büyüklükte. Onun için başkasının yerini kapmaktansa, çalışarak gerçek yerinizi bulun',
    'TAVSIYE: Yaşadığınız her olumsuz durumu, kafanıza takmayı bıraktığınız an daha az yorulduğunuzu, daha mutlu olduğunuzu fark edersiniz',
    'TAVSIYE: Düzeltmek yerine bitirmeyi gitmeyi seçen insandan uzak dur. Çünkü onun ya kendine güveni yoktur ya da sevgisine',
    'TAVSIYE: Kimseye sana ihanet etmesine izin verecek kadar güvenme. Haklı olduğun zaman, hiç kimseye boyun eğmeyeceksin',
    'TAVSIYE: Bir güzellik yap kendine. Sadece sahip olduklarını düşün, mutlu ol onlarla. Sahip olmadıkların üzülsün seninle olamadıklarına',
    'TAVSIYE: Terk ettiğin hiç bir şeyi, terk ettiğin yerde bulamazsın. O yüzden sakın geri dönme. İlerlemeye devam et.',
    'TAVSIYE: Yaşlanmaktan kork, gençliğinin kıymetini bilememiş sen. Unutulmaktan kork, arkanda iyi bir eser bırakamamış san. Ölmekten kork, ölmeden önce ölmeyi becerememişsen',
    'TAVSIYE: Sabahleyin aynada hoş bir yüzün görünüp görünmediğine dikkat et gün boyunca bir daha onu göremeyeceksin ama başkaları görecekler',
    "TAVSIYE: Adın, Mutluluk; Soy adın, Huzur olsun. Daima Güler Yüz'ün adresin olsun, seni unutanlara da yazıklar olsun",
    "TAVSIYE: Adın, Mutluluk; Soy adın, Huzur olsun. Daima Güler Yüz'ün adresin olsun, seni unutanlara da yazıklar olsun",
    'TAVSIYE: Bugün merakli kisiligini ön plana çikartarak insanlara soru sormaktan çekinme ',
    'TAVSIYE: Bugün daha önce hiç fark etmedigin seylerin hep orada oldugunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalis',
    'TAVSIYE: Bugün ikili iliskilerinde daha aktif ve verici olmaya çalisabilirsin, ayni fikirde oldugun insanlari daha dikkatli dinlemeye ve sorgulamaya basla',
    'TAVSIYE: Bugün sadece isine odaklan, dikkatini dagitacak her türlü nesne ve sosyal medyadan uzaklasmak kendini daha mutlu hissettirebilir',
    'TAVSIYE: Bugün tek basina biraz yürüyüs yap, çocuklugunda dinledigin sarkilari aç ve o zamanlar oynadigin oyunlari hayal et',
    'Hayat: Bugün, ask ve iliski hayatinizda biraz daha temkinli olmalisin. Onu her konuda dogru anlamda anladigindan da emin misin?',
    'Hayat: Ask ve iliski hayatinizda hakimiyeti eline almak ve birlikteliginizi dilediginiz gibi yönlendirmek isteyebilirsin. Bu isteginin denge içerisindeki bir iliskiye ne sekilde fayda edecegini gözden geçirmelisin.',
    'Hayat: Duygularinizin bugün biraz düzensiz oldugunu görebilirsiniz. Güne, daha önce hiç yapmadiginiz bir sekilde baslamanizi saglayan dogal bir elektrik hissi var. Kalbiniz her zaman dogruyu söyler.',
    'Hayat: Duygulariniz çogu zaman rasyonel düsüncelerinize galip geliyor ve sonunda derinlerde duygularin besledigi bir karmasa ortaya çikiyor. Çok da mantikli düsünerek kalbinizi görmezden gelmeyin. Amaciniz bu ikisi arasinda dengeyi bulmak.',
    'Hayat: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalisin. Bazen sadece eglenmek gerekir, siz de rahatlayin ve birlikte eglenin!',
    'Hayat: Cesur olmak, karşılığında bir şey beklemeden koşulsuzca birini sevmektir. Ya seveceksin ya da sevmeyeceksin. Ama unutma: Seveni asla üzmeyeceksin',
    'Hayat: Aşk bizim gerçek kaderimizdir. Yaşamın anlamını yalnızken kendimiz bulamıyoruz. Başka biriyle buluyoruz.',
    'Hayat: Aşk, düşmanı bir arkadaşa dönüştürebilen tek güçtür. İnsan güzel bulduğunu değil; sevdiğini güzel bulur',
    'Hayat: Sen soğuğa hiç aldırmadan balkonda saatlerce izleyebileceğim bir manzarasın. Aşk güzel insanların da korkunç şeyler yapmasını sağlayabilir',
    'Hayat: Aynı anda iki kişiyi seviyorsanız, ikinciyi seçin. Çünkü ilkini gerçekten sevseydiniz ikinci için düşmezdiniz',
    'Hayat: Sevgi karanlık bir tünelde yakılan mum ışığı gibidir, size yolunuzu gösterir ama uzakta ne olduğunu söylemez',
    'Hayat: Sen beni bir dağın eteğindeki gelincik kadar severken, ben seni o dağın doruğundaki kardelen kadar özlüyorum',
    'Hayat: Bugün okulda 1 dakikanın 60 saniye, 60 saniyenin ise 1 dakika olduğunu öğrettiler ama sensiz geçen dakikalarımı hesaplayamadılar be gülüm',
    'Hayat: Sen bazen zifiri karanlık gecemin güneşi, sen bazen hayatin cesaret veren mutluluk yani ve sen her zaman sevgimin tek nedenisin',
    'Hayat: İçimden bir şiir yazmak geldi, yazıyorum çünkü seviyorum, seviyorum çünkü hissediyorum, hissediyorum çünkü yaşıyorum, yaşıyorum çünkü seninleyim',
    'Hayat: Dualar ettim aşkımız hiç bitmesin diye, adını kumsallara yazdım yalvardım dalgalara ne olur silmeyin diye',
    'Hayat: Sözlerin aklımda ya da aklımın ardında, hayalin karşımda ya da sesin kulağımda, ya ben çıldırıyorum ya da çok özlüyorum, ya özlemek ya da özlenen çok özel birtanem',
    'Hayat: Gül bahçesinde geçse de ömrüm, inan üstüne gül koklamam gülüm. Seni koklamak olsa da ölüm, uğrunda ölmeye değer gülüm',
    'Hayat: Bu gece rüyama gir gizlice, beni sımsıkı sar öp kokla iyice, son kez isyanlar savur, küfret güzelce ve sonra çek git kahrolası hayatımdan',
    'Hayat: Yüreğine damla damla umut, günlerine bin tatlı mutluluk dolsun. Yüzün ve gülün hiç solmasın, sevdiklerin hep yanında olsun',
    'Hayat: Seni ne kadar sevdiğimi merak ediyorsan, yağan yağmurun her damlasını tutmaya çalış, tutamadığın her yağmur damlası kadar seviyorum seni',
    'Hayat: Gerçek aşklar bitmesini bilen aşklar olduğuna göre, insanlar ya hep sahte aşklarıyla evlenir ya da evlenerek aşklarını sahteleştirir',
    'Hayat: Sesini duysam da her an yüzünü görmek gibi değil, özlediğimi bil her an çünkü hiçbir şey seni sevmek gibi degil!',
    'Hayat: Eğer bir insan seni en kötü günlerinde ayağa kaldırıyorsa, sana ve hatalarına rağmen senden kopmuyorsa, onun gitmesine izin vermemelisin',
    'Hayat: Sana dalgalardan kalem yaptım ve kıyıya seni seviyorum yazdım, sen de inandın değil mi? Sen delisin, seni sevmedim, sana bağlandım, sana taptım',
    'Hayat: Gerçekten seviyorsan hiç bir şeyi mazeret etmeyeceksin. Sonuna kadar değil, sonsuza kadar Allah için seveceksin!',
    'Hayat: Doğan her günün sabahında, içimde gözlerini görebilmek aşkı olmasa, inan hiçbir şeye değmezdi yaşamak',
    'Hayat: Seni ben değil gözlerim seçti, onlar sevdi onlar beğendi. Sen benim değil onlarınsın, gittiysen bana ne onlar ağlasın',
    'Hayat: Uyanınca uyandığına pişman eden, geri dönmek isteyip de dönemeyince çaresizlikten çıldırtan, hayatta sadece bir kez görülebilen harika bir rüyasın sen',
    'Hayat: Bütün mevsimleri bir günde, bütün yılları bir mevsimde yaşamaya razıyım seninle. Bir tutam sevinç, bir tutam umut ve bir tutam mutluluk gönderiyorum sana',
    'Hayat: Gözlerin nehir kirpiklerin köprü olsa, ben üzerinden geçerken ipler kopsa ve düştüğüm yer dudakların olsa',
    'Hayat: Para her şeyi yapar diyen adam, para için her şeyi yapan adamdır',
    'Hayat: Para nedir bazen ihtiyaç, bazen mutluluk, bazen varlığı acı kayıp. Para insana göre değerlendirilmez. Para harcanır ama insan harcanmaz',
    'Hayat: Para hiçbir zaman insanı mutlu etmemiştir ve etmeyecektir, doğasında mutluluk yaratan hiçbir şey yoktur. Bir insan ne kadar çok para kazanırsa, o kadar fazlasını isteyecektir',
    'Hayat: Paranın değerini öğrenmek isterseniz borç almaya çalışın. Akçenin değerini, ancak üstünde ki pas belli eder',
    'Hayat: Para için evlenmeye, yasal şerefsizlik denir. Eğer zengin olmak istiyorsanız, kazanmak kadar biriktirmeyi de düşünün',
    'Hayat: Para iyi hizmetçi, kötü bir efendidir. İnsan Parayı Bulunca Dostunu unutuyor',
    'Hayat: Dünyada üç şey saklanamaz: Aşk, duman ve parasızlık. İnsan parasız pulsuz olduğunda kafası işlemeye başlar',
    'Hayat: Parası ile kendini şımartan insanlar aslında aynaya baktıklarında hep yalnız ve mutsuzdurlar',
    'Hayat: Dünyada en güzel servet insan kalbini kazanmaktır, Parada olunca bu servet ikiye katlanır ve daha güzel bir yaşam hakkına sahip olursunuz',
    'Hayat: Diş ağrısı çekenler dişleri sağlam olanları; yoksulluk çekenler de parası çok olanları mutlu sanırlar. ',
    'Hayat: Sen mi paraya bağlısın, para mı sana bağlı? İşte bu tamamen sana bağlı.Para bir araçtır. Sizi istediği yere götürür ama hiçbir zaman sürücü koltuğuna oturtmaz',
    'Hayat: Yazgıların en güzeli, bir insanın sahip olabileceği en büyük hazine, tutkuyla yaptığı bir iş için ona para ödeniyor olmasıdır',
    'Hayat: Bazı insanları dini, imanı para olmuş. Biraz parayı düşündükleri kadar islama yönelseler bu dünyanın aslında ne kadar boş olduğunu anlarlar',
    'Hayat: Para aracılığı ile zaman kazanmak gerekirken, yaşamımızı para kazanmak için tüketiyoruz',
    'Hayat: Zengin, çok mala sahip olana denmez, zengin kalbi olana denir. Bir insan satın alamadığı şeyler kadar zengindir',
    'Hayat: Ömrün, altın kesesine benzer, geceyle gündüz de para sayan adamdır. Bilmeden, anlamadan sayar durur, nihayet kese boşalır, ay tutulur',
    'Hayat: Para sadece mutluluk verecek başka bir şey olmadığı zaman mutluluk verebilir. Yeterli gelirin ötesinde insanın ruhu söz konusu olunca hiçbir şey gerçek tatmin veremez',
    'Hayat: Kapitalizm dindir. Bankalar kilise, bankacılar rahip, zenginlik cennet, fakirlik cehennem, zenginler aziz, fakirler günahkar, mülkiyet kutsaldır, PARA İSE TANRIDIR!',
    'Hayat: Kral olup paramı dilenci gibi harcamaktansa, dilenci olup, paramı kral gibi harcamayı tercih ederim',
    'Hayat: Parayla Saadet olur, Merve olur, Hale olur, Jale olur.Parasız en fazla Naciye ne biliyim Hayriye falan olur',
    'Hayat: Parayı kaybeden çok kaybeder, arkadaş kaybeden daha da çok kaybeder, inancını kaybeden her şeyini kaybeder',
    'Hayat: Paranın tüm kötülüklerin kaynağı olduğunu söylüyorsunuz. Pek hiç tüm bu paranın kaynağının ne olduğunu sordunuz mu?',
    'Hayat: Yeniçağda paranın gittikçe artan bir kuvvet oluşu, ahlak mukavemetinin gittikçe azalmasındandır',
    'Hayat: Parayla Saadet olur, Merve olur, Hale olur, Jale olur.Parasız en fazla Naciye ne biliyim Hayriye falan olur',
    'Hayat: Parayı zevk için tehlikeli şekilde kullanmak, çalıntı bir arabayla hız yapmak gibidir. Onu durdurmak için arabayı değil, şoförü tutuklamalısınız.',
    'Hayat: Kafaniza uzun süredir koydugunuz bazi harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyaciniz oldugunu sorun ve bir kismini iptal edin. Bugün bir hayir kurumuna küçücük bir bagis yapin, kendinizi çok daha iyi hissedeceksiniz.',
    'Hayat: Nakit akisinizin dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa basina oturup bir bütçe hesabi yapmalisiniz, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'Hayat: Bugün, baskalarina yardim, destek ve hizmet duygunuzun yüksek oldugu bir gün olabilir, hayir, bagis islerinde yer alabilirsiniz.',
    'Hayat: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, baglantilariniz size verdikleri destekten süphelenebilirler. Sakin hareket edin, bir adim geri durun, ve paradan çok sagliginizla ilgilenin.',
    'Hayat: Para kaynaklarimiz ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrica maddi konularda ve harcamalarda uzun süredir sizi mesgul eden bir konuda karara varabilirsiniz, yakinlarinizdan veya esinizden karar alirken yardim isteyin.',
    'Hayat: Dünya, herkese yetebilecek büyüklükte. Onun için başkasının yerini kapmaktansa, çalışarak gerçek yerinizi bulun',
    'Hayat: Yaşadığınız her olumsuz durumu, kafanıza takmayı bıraktığınız an daha az yorulduğunuzu, daha mutlu olduğunuzu fark edersiniz',
    'Hayat: Düzeltmek yerine bitirmeyi gitmeyi seçen insandan uzak dur. Çünkü onun ya kendine güveni yoktur ya da sevgisine',
    'Hayat: Kimseye sana ihanet etmesine izin verecek kadar güvenme. Haklı olduğun zaman, hiç kimseye boyun eğmeyeceksin',
    'Hayat: Bir güzellik yap kendine. Sadece sahip olduklarını düşün, mutlu ol onlarla. Sahip olmadıkların üzülsün seninle olamadıklarına',
    'Hayat: Terk ettiğin hiç bir şeyi, terk ettiğin yerde bulamazsın. O yüzden sakın geri dönme. İlerlemeye devam et.',
    'Hayat: Yaşlanmaktan kork, gençliğinin kıymetini bilememiş sen. Unutulmaktan kork, arkanda iyi bir eser bırakamamış san. Ölmekten kork, ölmeden önce ölmeyi becerememişsen',
    'Hayat: Sabahleyin aynada hoş bir yüzün görünüp görünmediğine dikkat et gün boyunca bir daha onu göremeyeceksin ama başkaları görecekler',
    "Hayat: Adın, Mutluluk; Soy adın, Huzur olsun. Daima Güler Yüz'ün adresin olsun, seni unutanlara da yazıklar olsun",
    "Hayat: Adın, Mutluluk; Soy adın, Huzur olsun. Daima Güler Yüz'ün adresin olsun, seni unutanlara da yazıklar olsun",
    'Hayat: Bugün merakli kisiligini ön plana çikartarak insanlara soru sormaktan çekinme ',
    'Hayat: Bugün daha önce hiç fark etmedigin seylerin hep orada oldugunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalis',
    'Hayat: Bugün ikili iliskilerinde daha aktif ve verici olmaya çalisabilirsin, ayni fikirde oldugun insanlari daha dikkatli dinlemeye ve sorgulamaya basla',
    'Hayat: Bugün sadece isine odaklan, dikkatini dagitacak her türlü nesne ve sosyal medyadan uzaklasmak kendini daha mutlu hissettirebilir',
    'Hayat: Bugün tek basina biraz yürüyüs yap, çocuklugunda dinledigin sarkilari aç ve o zamanlar oynadigin oyunlari hayal et'
  ];
}
