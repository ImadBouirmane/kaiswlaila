import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['fr', 'ar', 'en', 'tr'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String frText = '',
    String arText = '',
    String enText = '',
    String trText = '',
  }) =>
      [frText, arText, enText, trText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SignIn
  {
    'as69m6hd': {
      'fr': 'Langue',
      'ar': 'اللغة',
      'en': 'Language',
      'tr': 'Dilim',
    },
    'ehobpuwl': {
      'fr': 'Email',
      'ar': 'بريد الالكتروني',
      'en': 'E-mail',
      'tr': 'E-posta',
    },
    'ppwkq56k': {
      'fr': 'Mot de passe',
      'ar': 'كلمة السر',
      'en': 'Password',
      'tr': 'Şifre',
    },
    'nxdkxn3l': {
      'fr': 'Se connecter',
      'ar': 'تسجيل الدخول',
      'en': 'Login',
      'tr': 'Giriş yapmak',
    },
    'li21rn5t': {
      'fr': 'Mot de passe oublié ?',
      'ar': 'نسيت رقمك السري ؟',
      'en': 'Forgot your password ?',
      'tr': 'Parolanızı mı unuttunuz ?',
    },
    'n3vpdygg': {
      'fr': 'Vous n\'avez pas de compte?',
      'ar': 'لا يوجد لديك حساب؟',
      'en': 'You do not have an account?',
      'tr': 'Hesabınız yok mu?',
    },
    'tjs7xgjs': {
      'fr': 'Inscrivez-vous',
      'ar': 'تسجل',
      'en': 'Register',
      'tr': 'Kayıt ol',
    },
    'ed8hdv6r': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // PhoneSignIn
  {
    'b77nv5sa': {
      'fr': 'Connectez-vous par téléphone',
      'ar': 'تسجيل الدخول عبر الهاتف المحمول',
      'en': 'Connect by Phone Number',
      'tr': 'Mobil giriş',
    },
    'eqlje8ar': {
      'fr': 'Numéro de téléphone',
      'ar': 'رقم التليفون',
      'en': 'Phone Number',
      'tr': 'Telefon numarası',
    },
    '36gt66mz': {
      'fr': 'Créer',
      'ar': 'إنشاء',
      'en': 'Create',
      'tr': 'Yaratmak',
    },
    'n8a0ygiq': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ana sayfa',
    },
  },
  // signUp
  {
    '8k6ie3sk': {
      'fr': 'Créez votre compte',
      'ar': 'إنشاء حسابك',
      'en': 'Register your account',
      'tr': 'hesabını oluştur',
    },
    'gt7vkk2a': {
      'fr': 'Par Email',
      'ar': 'بالبريد الالكتروني',
      'en': 'By email',
      'tr': 'Eposta ile',
    },
    'z42km0y1': {
      'fr': 'Email',
      'ar': 'بريد الالكتروني',
      'en': 'E-mail',
      'tr': 'E-posta',
    },
    'fqj0yzbm': {
      'fr': 'Mot de passe',
      'ar': 'كلمة السر',
      'en': 'Password',
      'tr': 'Şifre',
    },
    'e4z8ytmt': {
      'fr': 'Confirmez le mot de passe',
      'ar': 'تأكيد من كلمة السر',
      'en': 'Confirm the password',
      'tr': 'Şifreyi onaylayın',
    },
    'syi85ic2': {
      'fr': 'Créer',
      'ar': 'إنشاء',
      'en': 'Create',
      'tr': 'Yaratmak',
    },
    '4frrvv2y': {
      'fr': 'Par Téléphone',
      'ar': 'بالهاتف المحمول',
      'en': 'By telephone',
      'tr': 'Telefonla',
    },
    'm0dlzs3r': {
      'fr': 'Votre Téléphone',
      'ar': 'هاتفك',
      'en': 'Your phone',
      'tr': 'Telefonunuz',
    },
    'jfb6a30q': {
      'fr': 'Créer',
      'ar': 'إنشاء',
      'en': 'Create',
      'tr': 'Yaratmak',
    },
    'uxtc8q7f': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // Onboarding
  {
    'd2f68ui3': {
      'fr':
          'KWL est la première\napplication conçue \npar une équipe d’experts \nen psychologie et \nspécialistes des relations \nde couple. ',
      'ar':
          'KWL هو أول تطبيق صممه فريق من خبراء \nعلم النفس وأخصائيي العلاقات الزوجية.',
      'en':
          'KWL is the first application\ndesigned by a team of \npsychology experts and \ncouple relationship \nspecialists.',
      'tr':
          'KWL ilk\nuygulama tasarlanmış\nuzman bir ekip tarafından\npsikolojide ve\nilişki uzmanları\ntork.',
    },
    's11ixzl1': {
      'fr': 'Trouvez votre \npartenaire idéal\navec nous,',
      'ar': 'ابحث عن شريكك المثالي معنا ،',
      'en': 'Find your ideal \npartner with us,',
      'tr': 'seninkini bul\nideal eş\nbizimle,',
    },
    'u3k7yufq': {
      'fr': 'Love for Real !',
      'ar': 'الحب الحقيقي!',
      'en': 'Love for Real!',
      'tr': 'Gerçek Aşk!',
    },
    'p911bmit': {
      'fr': 'Commencer',
      'ar': 'بداية',
      'en': 'Start',
      'tr': 'Başlamak',
    },
    'lmckg3ku': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ana sayfa',
    },
  },
  // conditionsUtilisation
  {
    'b0tz6do3': {
      'fr': 'SÉCURITÉ',
      'ar': 'الأمن',
      'en': 'SECURITY',
      'tr': 'GÜVENLİK',
    },
    '4qvw3h16': {
      'fr':
          'Nous luttons activement contre le harcèlement sexuel. Voilà pourquoi la reconnaissance faciale est indispensable sur KWL.',
      'ar':
          'نحن نكافح بنشاط ضد التحرش الجنسي. هذا هو السبب في أن التعرف على الوجه ضروري في KWL.',
      'en':
          'We actively fight against sexual harassment. This is why facial recognition is essential on KWL.',
      'tr':
          'Cinsel tacize karşı aktif olarak mücadele ediyoruz. Bu yüzden KWL de yüz tanıma çok önemlidir.',
    },
    'l533ecqf': {
      'fr': 'CONFIDENTIALITÉ',
      'ar': 'الإجمالية',
      'en': 'PRIVACY',
      'tr': 'MAHREMİYET',
    },
    'lc9oz0sz': {
      'fr':
          'Le respect de la vie privée nous est essentiel.\nL\'ensemble des donnes partagées sur notre plateforme sont confidentielles.',
      'ar':
          'الخصوصية مهمة بالنسبة لنا. جميع البيانات المشتركة على منصتنا سرية.',
      'en':
          'Privacy is important to us. All data shared on our platform is confidential.',
      'tr':
          'Gizlilik bizim için önemlidir. Platformumuzda paylaşılan tüm veriler gizlidir.',
    },
    'bm8e1hav': {
      'fr': 'MATCHING',
      'ar': 'تطابق',
      'en': 'MATCHING',
      'tr': 'EŞLEŞTİRME',
    },
    'ltac2q7o': {
      'fr':
          'KWL est la première application de rencontre pour relation durable qui utilise un questionnaire de matching realise par des experts.',
      'ar':
          'KWL هو أول تطبيق مواعدة لعلاقة دائمة يستخدم استبيانًا مطابقًا تم إنشاؤه بواسطة خبراء.',
      'en':
          'KWL is the first dating application for a lasting relationship that uses a matching questionnaire created by experts.',
      'tr':
          'KWL, uzmanlar tarafından oluşturulan eşleşen bir anket kullanan kalıcı bir ilişki için ilk flört uygulamasıdır.',
    },
    '9j7mjjoq': {
      'fr': 'EXPERTISE',
      'ar': 'خبرة',
      'en': 'EXPERTISE',
      'tr': 'UZMANLIK',
    },
    '6agvmqp2': {
      'fr':
          'Nos experts sont une équipe de psychologues spécialistes de relations de couple.\nNotre mission de donner à toutes les mêmes chances de s\'épanouir dans leur vie, grace à l\'application. Nous vous accompagnons dans le découverte de vos valeurs, de votre personnalité et de votre potentiel.',
      'ar':
          'خبرائنا هم فريق من علماء النفس المتخصصين في العلاقات الزوجية. مهمتنا هي منح الجميع فرصة الازدهار في حياتهم بفضل التطبيق. نحن ندعمك في اكتشاف قيمك وشخصيتك وإمكانياتك.',
      'en':
          'Our experts are a team of psychologists specializing in couple relationships. Our mission to give everyone the same chance to flourish in their lives, thanks to the application. We support you in discovering your values, your personality and your potential.',
      'tr':
          'Uzmanlarımız, çift ilişkileri konusunda uzmanlaşmış bir psikolog ekibidir. Misyonumuz, uygulama sayesinde herkese hayatlarında gelişmek için aynı şansı vermek. Değerlerinizi, kişiliğinizi ve potansiyelinizi keşfetmenizde size destek oluyoruz.',
    },
    'a8fyy6u9': {
      'fr': 'BONNE DECOUVERTE !',
      'ar': 'اكتشاف جيد!',
      'en': 'GOOD DISCOVERY !',
      'tr': 'İYİ KEŞİF!',
    },
    'ednu7sr1': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'bpfkv1dv': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // genderChoice
  {
    '3nwj6z0s': {
      'fr': 'Que cherchez-vous?',
      'ar': 'ما الذي تبحث عنه؟',
      'en': 'What are you looking for?',
      'tr': 'Ne arıyorsun?',
    },
    'ofrd39d8': {
      'fr': 'Connectez-vous et socialisez avec des millions\n de personnes',
      'ar': 'تواصل واجتماعيا مع\nملايين البشر',
      'en': 'Connect and socialize with\nmillions people',
      'tr': 'ile bağlantı kurun ve sosyalleşin\nmilyonlarca\ninsanlar',
    },
    'u0pll6sm': {
      'fr': 'Homme',
      'ar': 'ذكر',
      'en': 'Male',
      'tr': 'Erkek',
    },
    'd45gk2qa': {
      'fr': 'Femme',
      'ar': 'المؤنث',
      'en': 'Feminine',
      'tr': 'Kadınsı',
    },
    'y8imvytw': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    '6ivfyewp': {
      'fr': 'Accueil',
      'ar': 'الصفحه الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // selectLocation
  {
    'p43xrbq8': {
      'fr': 'Partagez votre localisation',
      'ar': 'شارك موقعك',
      'en': 'Share your Location',
      'tr': 'Konumunuzu paylaşın',
    },
    'tvc4xe6r': {
      'fr': 'Appuyez sur le bouton ci-dessous:',
      'ar': 'اضغط على الزر أدناه:',
      'en': 'Press the button below:',
      'tr': 'Aşağıdaki düğmeye basın:',
    },
    'tzk7uib8': {
      'fr': 'Sélectionnez localisation',
      'ar': 'اختر موقعا',
      'en': 'Select Location',
      'tr': 'Konum Seçin',
    },
    'hkuwn3lx': {
      'fr': 'Continuer',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'qr03crzg': {
      'fr': 'Home',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // photoProfile
  {
    'oeoe3l6k': {
      'fr': 'Photo de profil',
      'ar': 'الصوره الشخصيه',
      'en': 'Profile picture',
      'tr': 'Profil fotoğrafı',
    },
    'jpdcya6h': {
      'fr': 'Insérez votre photo',
      'ar': 'أدخل صورتك',
      'en': 'Insert your photo',
      'tr': 'Fotoğrafınızı ekleyin',
    },
    'wo9oaq4u': {
      'fr': 'Continuer',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'evcfpeyr': {
      'fr': 'Acceuil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // baseInfo1
  {
    'e4oxhcn1': {
      'fr': 'Base',
      'ar': 'معلومات أساسية',
      'en': 'Base',
      'tr': 'Temelli',
    },
    '9vdcx824': {
      'fr': 'Nom Complet',
      'ar': 'الاسم الكامل',
      'en': 'Full Name',
      'tr': 'Ad Soyad',
    },
    'ht2oa9j3': {
      'fr': 'Fonction',
      'ar': 'المهنة',
      'en': 'Job',
      'tr': 'İşlev',
    },
    '5j9y9uqq': {
      'fr': 'Présentez-vous !',
      'ar': 'قدم نفسك !',
      'en': 'Introduce yourself !',
      'tr': 'Kendini tanıt !',
    },
    'kh7tjb9c': {
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'eb73lqdc': {
      'fr': 'Home',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // baseInfo2
  {
    'nlcf25gn': {
      'fr': 'Sexe:',
      'ar': 'الجنس:',
      'en': 'Gender:',
      'tr': 'Cinsiyet:',
    },
    'tb24brgs': {
      'fr': 'Homme',
      'ar': 'رجل',
      'en': 'Man',
      'tr': 'Erkek adam',
    },
    'ozp4v9m5': {
      'fr': 'Femme',
      'ar': 'امرأة',
      'en': 'Women',
      'tr': 'Kadın',
    },
    'djgnn95q': {
      'fr': 'Date de naissance:',
      'ar': 'تاريخ الميلاد:',
      'en': 'Date of Birth:',
      'tr': 'Doğum tarihi:',
    },
    'wj57ucb7': {
      'fr': 'Jour',
      'ar': 'يوم',
      'en': 'Day',
      'tr': 'Gün',
    },
    '61gljfgg': {
      'fr': 'Mois',
      'ar': 'شهر',
      'en': 'Month',
      'tr': 'Ay',
    },
    '63amt7r1': {
      'fr': 'Année',
      'ar': 'سنة',
      'en': 'Year',
      'tr': 'Yıl',
    },
    'vdfau4s7': {
      'fr': 'Sélectionnez votre ville:',
      'ar': 'اختر مدينتك:',
      'en': 'Select your city:',
      'tr': 'Şehrinizi seçin:',
    },
    'rxo3jbg1': {
      'fr': 'Ville',
      'ar': 'قرية',
      'en': 'Town',
      'tr': 'Şehir',
    },
    'somnr7cs': {
      'fr': 'Sélectionnez votre pays:',
      'ar': 'اختر بلدك:',
      'en': 'Choose your country:',
      'tr': 'Ülkenizi seçin:',
    },
    '9afmd91m': {
      'fr': 'Maroc',
      'ar': 'المملكة المغربية',
      'en': 'Morocco',
      'tr': 'Fas',
    },
    'eapr3xqf': {
      'fr': 'Algérie',
      'ar': 'الجزائر',
      'en': 'Algeria',
      'tr': 'Cezayir',
    },
    'pk65n8cj': {
      'fr': 'Tunisie',
      'ar': 'تونس',
      'en': 'Tunisia',
      'tr': 'Tunus',
    },
    't9yzd88w': {
      'fr': 'Libye',
      'ar': 'ليبيا',
      'en': 'Libya',
      'tr': 'Libya',
    },
    'f8it7sfx': {
      'fr': 'Mauritanie',
      'ar': 'موريتانيا',
      'en': 'Mauritania',
      'tr': 'Moritanya',
    },
    'nedwt14c': {
      'fr': 'Egypte',
      'ar': 'مصر',
      'en': 'Egypt',
      'tr': 'Mısır',
    },
    'u2wowc5b': {
      'fr': 'Saudi Arabia',
      'ar': 'المملكة العربية السعودية',
      'en': 'saudi arabia',
      'tr': 'Suudi Arabistan',
    },
    '9b4quj22': {
      'fr': 'UAE',
      'ar': 'الإمارات العربية المتحدة',
      'en': 'UAE',
      'tr': 'BAE',
    },
    'azj4d96u': {
      'fr': 'Oman',
      'ar': 'سلطنة عمان',
      'en': 'Oman',
      'tr': 'Umman',
    },
    'z57lorym': {
      'fr': 'Qatar',
      'ar': 'دولة قطر',
      'en': 'Qatar',
      'tr': 'Katar',
    },
    'kgyotstk': {
      'fr': 'Bahrain',
      'ar': 'البحرين',
      'en': 'Bahrain',
      'tr': 'Bahreyn',
    },
    'uyecosi8': {
      'fr': 'Kuwait',
      'ar': 'الكويت',
      'en': 'Kuwait',
      'tr': 'Kuveyt',
    },
    'jmebzwjb': {
      'fr': 'Soudan',
      'ar': 'السودان',
      'en': 'Sudan',
      'tr': 'Sudan',
    },
    'd2hgu81u': {
      'fr': 'Syrie',
      'ar': 'سوريا',
      'en': 'Syria',
      'tr': 'Suriye',
    },
    'a41foqe4': {
      'fr': 'Liban',
      'ar': 'لبنان',
      'en': 'Lebanon',
      'tr': 'Lübnan',
    },
    'bc1sw9k4': {
      'fr': 'Turquie',
      'ar': 'تركيا',
      'en': 'Turkey',
      'tr': 'Türkiye',
    },
    'a4tlfb4j': {
      'fr': 'Pays',
      'ar': 'دولة',
      'en': 'Country',
      'tr': 'Ülke',
    },
    'hwte74bp': {
      'fr': 'Continuer',
      'ar': 'الإستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'byiry6u3': {
      'fr': 'Accuel',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // photos
  {
    'jqgzv7gq': {
      'fr': 'Vos Photos',
      'ar': 'صورك',
      'en': 'Your pictures',
      'tr': 'Senin fotoğrafların',
    },
    'fmsmx7ba': {
      'fr': 'Veuillez insérer au moins une de vos photos...',
      'ar': 'الرجاء إدخال واحدة على الأقل من صورك ...',
      'en': 'Please insert at least one of your photos...',
      'tr': 'Lütfen fotoğraflarınızdan en az birini ekleyin...',
    },
    'c78disd1': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    '2xbe9ynp': {
      'fr': 'Accueil',
      'ar': 'الصفحه الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage1
  {
    'c5ye6u7t': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'vksprlxx': {
      'fr': '0%',
      'ar': '0٪',
      'en': '0%',
      'tr': '0%',
    },
    'x8q1d0fx': {
      'fr':
          'Il est important pour moi de maintenir les valeurs ou les croyances traditionnelles ',
      'ar': 'من المهم بالنسبة لي الحفاظ على القيم أو المعتقدات التقليدية',
      'en': 'It is important to me to maintain traditional values or beliefs',
      'tr':
          'Geleneksel değerleri veya inançları sürdürmek benim için önemlidir.',
    },
    'plyj4lq2': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'wbf8z75e': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'vcxsupx4': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    'rc0ktr4f': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    '7x6cdcsf': {
      'fr':
          'Il est important pour moi de prendre mes propres décisions en ce qui concerne ma vie ',
      'ar': 'من المهم بالنسبة لي أن أتخذ قراراتي الخاصة فيما يتعلق بحياتي',
      'en': 'It is important for me to make my own decisions regarding my life',
      'tr': 'Hayatımla ilgili kendi kararlarımı vermek benim için önemlidir.',
    },
    '04w2ce3p': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'pvxursmn': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'ngh7531z': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    'jdbmphar': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    '4g9k36gl': {
      'fr': 'Continuer',
      'ar': 'إستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'e5zj2gls': {
      'fr': 'Accueil',
      'ar': 'ترحيب',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage2
  {
    'yj7oaw5w': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'gglth7yf': {
      'fr': '20%',
      'ar': '10٪',
      'en': '10%',
      'tr': '10%',
    },
    'ksllz08d': {
      'fr':
          'Il est important pour moi d’être la personne la plus influente dans un couple ',
      'ar': 'من المهم بالنسبة لي أن أكون الشخص الأكثر نفوذاً بين الزوجين',
      'en':
          'It is important for me to be the most influential person in a couple',
      'tr': 'Bir çiftte en etkili kişi olmak benim için önemlidir',
    },
    'kbr4i517': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'z3u5kyvz': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'kvvkqzcs': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
      'tr': 'Tamamen',
    },
    'wtsdzneb': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    't42rf8ef': {
      'fr':
          'Il est important pour moi de suivre les règles même quand personne ne surveille ',
      'ar': 'من المهم بالنسبة لي اتباع القواعد حتى عندما لا يراقبها أحد',
      'en':
          'It is important for me to follow the rules even when no one is watching',
      'tr': 'Kimse izlemiyorken bile kurallara uymak benim için önemlidir.',
    },
    'bk3iupzg': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'd4foqjnl': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'vv2kj4ta': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
      'tr': 'Tamamen',
    },
    'lsvv4p73': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    '6daytfl0': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam et',
    },
    '71kc94p9': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage3
  {
    'mc942bqj': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'pe7k4a3w': {
      'fr': '30%',
      'ar': '20٪',
      'en': '20%',
      'tr': '20%',
    },
    'jz9ayuiz': {
      'fr': 'Le plus important dans une relation ?\n (3 choix)',
      'ar': 'أهم شيء في العلاقة؟ (3 اختيارات)',
      'en': 'The most important thing in a relationship? (3 choices)',
      'tr': 'Bir ilişkideki en önemli şey? (3 seçenek)',
    },
    'dnrpkcb2': {
      'fr': 'La passion',
      'ar': 'الصبر',
      'en': 'Passion',
      'tr': 'Tutku',
    },
    '3t29gxoa': {
      'fr': 'L\'amour',
      'ar': 'الحب',
      'en': 'love',
      'tr': 'Aşk',
    },
    'ym47iji9': {
      'fr': 'La complicité',
      'ar': 'التواطؤ',
      'en': 'Complicity',
      'tr': 'suç ortaklığı',
    },
    'qanjrt27': {
      'fr': 'La loyauté',
      'ar': 'وفاء',
      'en': 'Loyalty',
      'tr': 'Bağlılık',
    },
    '4p7sq5nj': {
      'fr': 'La fidélité',
      'ar': 'جدير بالثقة',
      'en': 'Faithfulness',
      'tr': 'sadakat',
    },
    'rrdwotq1': {
      'fr': 'La transparence ',
      'ar': 'شفافية',
      'en': 'Transparency',
      'tr': 'şeffaflık',
    },
    'vptosgd4': {
      'fr': 'L’authenticité ',
      'ar': 'أصالة',
      'en': 'Authenticity',
      'tr': 'özgünlük',
    },
    'fqmnws25': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'u0ruarh6': {
      'fr': 'Home',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage5
  {
    '268nm25r': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '8tb2kgag': {
      'fr': '60%',
      'ar': '60٪',
      'en': '60%',
      'tr': '60%',
    },
    'rgdesdex': {
      'fr': 'Quel est votre niveau d’études ?',
      'ar': 'ما هو مستواك الدراسي ؟',
      'en': 'What is your level of study ?',
      'tr': 'Eğitim seviyeniz nedir?',
    },
    'p9swrnq5': {
      'fr': 'Sans diplôme',
      'ar': 'بدون دبلوم',
      'en': 'Without diploma',
      'tr': 'diplomasız',
    },
    'ruwhy5ui': {
      'fr': 'Collège',
      'ar': 'كلية',
      'en': 'College',
      'tr': 'Kolej',
    },
    'z0kbrf7f': {
      'fr': 'BAC ou BAC PRO',
      'ar': 'بكالوريا أو بكالوريا مهنية ',
      'en': 'BAC or BAC PRO',
      'tr': 'BAC veya BAC PRO',
    },
    'lbmcfc27': {
      'fr': 'BAC +2 /BAC +3',
      'ar': 'بكالوريا 2+ أو بكالوريا 3+',
      'en': 'BAC +2 /BAC +3',
      'tr': 'BAC +2 /BAC +3',
    },
    '0dfcrqgn': {
      'fr': 'BAC +4 / BAC +5',
      'ar': 'بكالوريا 4+ أو بكالوريا 5+ ',
      'en': 'BAC +4 / BAC +5',
      'tr': 'BAC +4 / BAC +5',
    },
    '21btpdlo': {
      'fr': 'Doctorat',
      'ar': 'دكتوراه',
      'en': 'PhD',
      'tr': 'Doktora',
    },
    'benq6kct': {
      'fr':
          'Quelle importance attachez-vous au niveau d’études de votre partenaire ?',
      'ar': 'ما الأهمية التي توليها لمستوى تعليم شريكك؟',
      'en':
          'What importance do you attach to the level of education of your partner?',
      'tr': 'Partnerinizin eğitim düzeyine ne kadar önem veriyorsunuz?',
    },
    'whih40fe': {
      'fr': 'Aucune importance',
      'ar': 'لا أهمية',
      'en': 'Doesn\'t matter',
      'tr': 'önemli değil',
    },
    'm68w14bg': {
      'fr': 'Peu important',
      'ar': 'غير مهم',
      'en': 'Not important',
      'tr': 'Önemli değil',
    },
    'zspmvdas': {
      'fr': 'Important',
      'ar': 'الأهمية',
      'en': 'Important',
      'tr': 'Önemli',
    },
    'p0un418b': {
      'fr': 'Plutôt important',
      'ar': 'مهم جدا',
      'en': 'Quite important',
      'tr': 'oldukça önemli',
    },
    '4lsogzl3': {
      'fr': 'Vraiment important',
      'ar': 'مهم للغاية',
      'en': 'Really important',
      'tr': 'Gerçekten önemli',
    },
    '2kw6o9vt': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam et',
    },
    '4nhyhv0h': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage4
  {
    'ppu4s2x0': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '7682nbj1': {
      'fr': '40%',
      'ar': '40٪',
      'en': '40%',
      'tr': '40%',
    },
    'il0hvrhc': {
      'fr': 'Vos besoins',
      'ar': 'احتياجاتك',
      'en': 'Your needs',
      'tr': 'İhtiyaçlarınız',
    },
    'b88wrl3j': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très \nimportant)',
      'ar': 'من 1 إلى 5 (1 ليس مهمًا جدًا ، 10 مهم جدًا)',
      'en': 'From 1 to 5 (1 not very important, 10 very important)',
      'tr': '1\'den 5\'e (1 çok önemli değil, 10 çok önemli)',
    },
    'ulzkksko': {
      'fr': 'Affection',
      'ar': 'عاطفة',
      'en': 'Affection',
      'tr': 'Alaka',
    },
    'z18sn5vq': {
      'fr': 'Indépendance',
      'ar': 'استقلال',
      'en': 'Independence',
      'tr': 'Bağımsızlık',
    },
    'yflj2fva': {
      'fr': 'Liberté',
      'ar': 'حرية',
      'en': 'Freedom',
      'tr': 'Özgürlük',
    },
    'wouevk5m': {
      'fr': 'Reconnaissance',
      'ar': 'إعتراف',
      'en': 'Acknowledgement',
      'tr': 'teşekkür',
    },
    'ysmqc5y7': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très \nimportant)',
      'ar': 'من 1 إلى 5 (1 ليس مهمًا جدًا ، 10 مهم جدًا)',
      'en': 'From 1 to 5 (1 not very important, 10 very important)',
      'tr': '1\'den 5\'e (1 çok önemli değil, 10 çok önemli)',
    },
    'g6vr4fu1': {
      'fr': 'Admiration ',
      'ar': 'الإعجاب',
      'en': 'Admiration',
      'tr': 'hayranlık',
    },
    'ljkxmklp': {
      'fr': 'Fonder une famille',
      'ar': 'تكوين أسرة',
      'en': 'Build a family',
      'tr': 'bir aile kur',
    },
    '5ehrybj4': {
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam et',
    },
    'o978kh7p': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'EV',
    },
  },
  // QsPage6
  {
    'mwt2fa5y': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '6gmg1s8i': {
      'fr': '70%',
      'ar': '70٪',
      'en': '70%',
      'tr': '70%',
    },
    'rcn30c2m': {
      'fr':
          'Imaginez que vos amis devaient vous décrire, quels seraient les adjectifs qui vous correspondraient ?\n(Choisir 9 adjectifs)',
      'ar':
          'تخيل أن على أصدقائك أن يصفوك ، ما هي الصفات التي تناسبك؟ (اختر 9 صفات)',
      'en':
          'Imagine that your friends had to describe you, what would be the adjectives that would correspond to you? (choose 9 adjectives)',
      'tr':
          'Arkadaşlarınızın sizi tanımlaması gerektiğini düşünün, size karşılık gelen sıfatlar ne olurdu? (9 sıfat seçin)',
    },
    '1hn5qh91': {
      'fr': 'Ses valeurs',
      'ar': 'قيمها',
      'en': 'Her values',
      'tr': 'Onun değerleri',
    },
    'voskdiu6': {
      'fr': 'Son énergie',
      'ar': 'طاقته',
      'en': 'His energy',
      'tr': 'Onun enerjisi',
    },
    'zifr7v5v': {
      'fr': 'L’attachement',
      'ar': 'مرفق',
      'en': 'Attachment',
      'tr': 'Ek dosya',
    },
    'k4veflv4': {
      'fr': 'Les habitudes',
      'ar': 'العادات',
      'en': 'Habits',
      'tr': 'Alışkanlıklar',
    },
    'mq2x1ksm': {
      'fr': 'Le plaisir et la détente',
      'ar': 'المتعة والاسترخاء',
      'en': 'Pleasure and relaxation',
      'tr': 'Zevk ve rahatlama',
    },
    'yj1yf58v': {
      'fr': 'Être à deux',
      'ar': 'لنكن معا',
      'en': 'be together',
      'tr': 'Birlikte olmak',
    },
    '7q945q5j': {
      'fr': 'Ma confiance en elle (lui)',
      'ar': 'ثقتي بها',
      'en': 'My trust in her (him)',
      'tr': 'Ona olan güvenim (ona)',
    },
    'bm14bjj9': {
      'fr': 'Son sex-appeal',
      'ar': 'جاذبيتها الجنسية',
      'en': 'Her sex appeal',
      'tr': 'Onun seks çekiciliği',
    },
    'vx0d7yqh': {
      'fr': 'Son amour pour les enfants',
      'ar': 'حبه للأطفال',
      'en': 'His love for children',
      'tr': 'Çocuklara olan sevgisi',
    },
    'mj9rqx3a': {
      'fr': 'Le partage',
      'ar': 'مشاركة',
      'en': 'The sharing',
      'tr': 'Paylaşım',
    },
    'p5vrz6tt': {
      'fr': 'Ses convictions',
      'ar': 'قناعاته',
      'en': 'his convictions',
      'tr': 'onun mahkumiyetleri',
    },
    'fncvqqdj': {
      'fr': 'La passion',
      'ar': 'الصبر',
      'en': 'Passion',
      'tr': 'Tutku',
    },
    '6j84fai7': {
      'fr': 'Sa joie de vivre',
      'ar': 'فرحته في العيش',
      'en': 'His joy of living',
      'tr': 'Onun yaşama sevinci',
    },
    '643vde0y': {
      'fr': 'Son apparence physique ',
      'ar': 'مظهره الجسدي',
      'en': 'His physical appearance',
      'tr': 'Onun fiziksel görünüşü',
    },
    'aak2zz1g': {
      'fr': 'Notre attirance réciproque ',
      'ar': 'جاذبيتنا المتبادلة',
      'en': 'Our mutual attraction',
      'tr': 'karşılıklı çekiciliğimiz',
    },
    '79aw810k': {
      'fr': 'Nos similitudes ',
      'ar': 'أوجه التشابه بيننا',
      'en': 'Our similarities',
      'tr': 'benzerliklerimiz',
    },
    'bn98g8p4': {
      'fr': 'L’affection que je ressens\n pour elle (lui)',
      'ar': 'المودة التي أشعر بها تجاهها',
      'en': 'The affection I feel for her (him)',
      'tr': 'Onun için hissettiğim sevgi (o)',
    },
    'idao9r8m': {
      'fr': 'Sa personnalité ',
      'ar': 'شخصيته',
      'en': 'Her personality',
      'tr': 'onun kişiliği',
    },
    'vk1vfsno': {
      'fr': 'Sa gentillesse',
      'ar': 'لطفه',
      'en': 'His kindness',
      'tr': 'Onun nezaketi',
    },
    '09lp2049': {
      'fr': 'Éprouver des sensations fortes',
      'ar': 'تجربة الإثارة',
      'en': 'Experience thrills',
      'tr': 'Heyecan yaşayın',
    },
    '3pf8k24c': {
      'fr': 'Sa position sociale',
      'ar': 'وضعه الاجتماعي',
      'en': 'His social position',
      'tr': 'Onun sosyal konumu',
    },
    'azcxrjix': {
      'fr': 'J’ai besoin d’un homme\n (d’une femme) dans ma vie',
      'ar': 'أحتاج إلى رجل (امرأة) في حياتي',
      'en': 'I need a man (a woman) in my life',
      'tr': 'Hayatımda bir erkeğe (bir kadına) ihtiyacım var',
    },
    'd48ohd78': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'o5zfgh4f': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage7
  {
    'hob5p3op': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'wobh1re8': {
      'fr': '80%',
      'ar': '80٪',
      'en': '80%',
      'tr': '80%',
    },
    'sueikj41': {
      'fr': 'Je suis spontané(e)',
      'ar': 'أنا عفوي',
      'en': 'I am spontaneous',
      'tr': 'ben spontaneyim',
    },
    'q5hazta3': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    '3jajp8fy': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'bx6idgbl': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    'aceyrn2r': {
      'fr': 'Tout à fait',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'aqx0bpe8': {
      'fr': 'Il est facile pour moi de discuter avec de nouvelles personnes',
      'ar': 'من السهل بالنسبة لي الدردشة مع أشخاص جدد',
      'en': 'It&#39;s easy for me to chat with new people',
      'tr': 'Yeni insanlarla sohbet etmek benim için kolay',
    },
    'urvjj1rs': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    '9efjwy7x': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    '68w5pgmv': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    'x5ajn5fe': {
      'fr': 'Tout à fait',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'hhhhcaip': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    '1ppdc30w': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That\'s enough for me!',
      'tr': 'Bu bana yeter!',
    },
    'f3dhdl1s': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage8
  {
    'ryh79sof': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'vz0jw1ce': {
      'fr': '90%',
      'ar': '90٪',
      'en': '90%',
      'tr': '90%',
    },
    '98yt7fto': {
      'fr':
          'Quels seraient les 3 points qui pourraient vous rendre heureux(se) ?',
      'ar': 'ما هي النقاط الثلاث التي يمكن أن تجعلك سعيدًا؟',
      'en': 'What would be the 3 points that could make you happy?',
      'tr': 'Seni mutlu edecek 3 nokta ne olurdu?',
    },
    'sds7x7o4': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'yowkqpii': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That\'s enough for me!',
      'tr': 'Bu bana yeter!',
    },
    '1k6hs9mf': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsPage9
  {
    'aj5dfmso': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'l8rpdkni': {
      'fr': '100%',
      'ar': '100٪',
      'en': '100%',
      'tr': '100%',
    },
    'qatms1rh': {
      'fr': 'Vos centres d’intérêts ? \nVeuillez choisir au moins 3 éléments',
      'ar': 'مجالات اهتمامك؟ الرجاء اختيار 3 عناصر على الأقل',
      'en': 'Your areas of interest? Please choose at least 3 items',
      'tr': 'İlgi alanlarınız? Lütfen en az 3 öğe seçin',
    },
    '3ky21j5y': {
      'fr': 'Les concerts',
      'ar': 'الحفلات',
      'en': 'Concerts',
      'tr': 'konserler',
    },
    'nn7a0v6b': {
      'fr': 'Sports équestres',
      'ar': 'رياضة الفروسية',
      'en': 'Equestrian sports',
      'tr': 'binicilik sporları',
    },
    'igfq1ewi': {
      'fr': 'La randonnée',
      'ar': 'جولة على الأقدام',
      'en': 'Hiking',
      'tr': 'Doğa yürüyüşü',
    },
    'sui499zu': {
      'fr': 'Gastronomie et restaurants',
      'ar': 'فن الطهو والمطاعم',
      'en': 'Gastronomy and restaurants',
      'tr': 'Gastronomi ve restoranlar',
    },
    'pdx2jvgb': {
      'fr': 'Arts et activités manuelles',
      'ar': 'الفنون والحرف اليدوية',
      'en': 'Arts and crafts',
      'tr': 'Sanat ve El işi',
    },
    'auzefjr1': {
      'fr': 'Théâtre /Danse/Opéra/Ballet',
      'ar': 'مسرح / رقص / أوبرا / باليه',
      'en': 'Theatre/Dance/Opera/Ballet',
      'tr': 'Tiyatro/Dans/Opera/Bale',
    },
    'kx20bnz3': {
      'fr': 'Nature/Jardinage',
      'ar': 'الطبيعة / البستنة',
      'en': 'Nature/Gardening',
      'tr': 'Doğa/Bahçecilik',
    },
    '1el40kgd': {
      'fr': 'Sorties/Soirées',
      'ar': 'نزهات / أمسيات',
      'en': 'Outings/Evenings',
      'tr': 'Geziler/Akşamlar',
    },
    'z9xvtx7r': {
      'fr': 'Diner au restaurant',
      'ar': 'عشاء في مطعم',
      'en': 'Dinner at the restaurant',
      'tr': 'restoranda akşam yemeği',
    },
    '1wrlvg1g': {
      'fr': 'Sports d’hiver',
      'ar': 'الرياضات الشتوية',
      'en': 'Winter sports',
      'tr': 'Kış sporları',
    },
    'o6rx20wm': {
      'fr': 'L\'art',
      'ar': 'فن',
      'en': 'Art',
      'tr': 'Sanat',
    },
    'icecacia': {
      'fr': 'Photographie',
      'ar': 'التصوير',
      'en': 'Photography',
      'tr': 'fotoğrafçılık',
    },
    'fcfv7s51': {
      'fr': 'Voile/Planche à voile/Sports nautiques',
      'ar': 'الإبحار / ركوب الأمواج / الرياضات المائية',
      'en': 'Sailing/Windsurfing/Water sports',
      'tr': 'Yelken/Rüzgar Sörfü/Su sporları',
    },
    'b30tqd0c': {
      'fr': 'Littérature/Lecture',
      'ar': 'أدب / قراءة',
      'en': 'Literature/Reading',
      'tr': 'Edebiyat/Okuma',
    },
    'younrt95': {
      'fr': 'La chasse',
      'ar': 'الصيد',
      'en': 'The hunt',
      'tr': 'Av',
    },
    'hy3jrvfa': {
      'fr': 'Randonnée/Escalade',
      'ar': 'المشي لمسافات طويلة / التسلق',
      'en': 'Hiking/Climbing',
      'tr': 'Yürüyüş/Tırmanma',
    },
    'b6qs4dez': {
      'fr': 'Sports collectifs  (Football, Rugby, \nHandball…)',
      'ar': 'الرياضات الجماعية (كرة القدم ، الرجبي ، كرة اليد ...)',
      'en': 'Team sports (Football, Rugby, Handball…)',
      'tr': 'Takım sporları (Futbol, Rugby, Hentbol…)',
    },
    'hwcp3n6f': {
      'fr': 'La famille',
      'ar': 'العائلة',
      'en': 'Family',
      'tr': 'Aile',
    },
    'f5itq5hz': {
      'fr': 'Parler avec des amis',
      'ar': 'تحدث مع الأصدقاء',
      'en': 'Talk with friends',
      'tr': 'Arkadaşlarla konuşmak',
    },
    '6xztkfll': {
      'fr': 'Films/Cinéma',
      'ar': 'أفلام / سينما',
      'en': 'Movies/Cinema',
      'tr': 'Filmler/Sinema',
    },
    '7gfg32j4': {
      'fr': 'Les voyages',
      'ar': 'الرحلات',
      'en': 'The trips',
      'tr': 'geziler',
    },
    '7744c1hs': {
      'fr': 'Continuer',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    '5wxj51h3': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // homePage
  {
    'kk1wnohh': {
      'fr': 'Découvrir',
      'ar': 'إكتشف',
      'en': 'Discover',
      'tr': 'Keşfetmek',
    },
    'kqiymfxc': {
      'fr': 'Sara',
      'ar': 'ساره',
      'en': 'Sarah',
      'tr': 'Sarah',
    },
    '5azsqzew': {
      'fr': 'Agadir',
      'ar': 'أكادير',
      'en': 'agadir',
      'tr': 'agadir',
    },
    'ulj8niej': {
      'fr': '478 Km',
      'ar': '478 كم',
      'en': '478 km',
      'tr': '478 km',
    },
    't8mp8t9l': {
      'fr': 'Mary',
      'ar': 'ماري',
      'en': 'Mary',
      'tr': 'Mary',
    },
    '04mrdc46': {
      'fr': 'Paris',
      'ar': 'أكادير',
      'en': 'agadir',
      'tr': 'agadir',
    },
    'mdzkfqhn': {
      'fr': '1500 Km',
      'ar': '1500 كم',
      'en': '1500km',
      'tr': '1500km',
    },
    'm4gdnnxa': {
      'fr': 'Deepika',
      'ar': 'ديبيكا',
      'en': 'Deepika',
      'tr': 'Deepika',
    },
    'eq8te7vz': {
      'fr': 'Mumbai',
      'ar': 'مومباي',
      'en': 'mumbai',
      'tr': 'mumbai',
    },
    '3lweqy47': {
      'fr': '10150 km',
      'ar': '10150 كم',
      'en': '10150km',
      'tr': '10150km',
    },
    'mhdbxjnl': {
      'fr': 'Anastasia',
      'ar': 'اناستاسيا',
      'en': 'Anastasia',
      'tr': 'anastasya',
    },
    '9u11oc8t': {
      'fr': 'Moscow',
      'ar': 'موسكو',
      'en': 'Moscow',
      'tr': 'Moskova',
    },
    '4vem23df': {
      'fr': '4500 Km',
      'ar': '4500 كم',
      'en': '4500 km',
      'tr': '4500 km',
    },
    'kjnk21la': {
      'fr': 'Kaoutar',
      'ar': 'كوثر',
      'en': 'Kaoutar',
      'tr': 'kaoutar',
    },
    'wnw8ak8w': {
      'fr': 'Beyrouth',
      'ar': 'بيروت',
      'en': 'Beirut',
      'tr': 'Beyrut',
    },
    '6nzk8kr0': {
      'fr': '5502 Km',
      'ar': '5502 كم',
      'en': '5502 km',
      'tr': '5502 km',
    },
    'lj9lkz1j': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // isMatch
  {
    'uz3611e0': {
      'fr': 'Rencontres',
      'ar': 'مواعدات',
      'en': 'Matchs',
      'tr': 'flört',
    },
    'fsc9pzu7': {
      'fr': 'C\'est un match !',
      'ar': 'إنها مواعدة !',
      'en': 'It\'s a Match',
      'tr': 'Çıkıyor!',
    },
    'ywjrqe02': {
      'fr': 'Avec un pourcentage de ',
      'ar': 'بنسبة',
      'en': 'With a percentage of',
      'tr': 'yüzde ile',
    },
    '6go3cgq3': {
      'fr': '65%',
      'ar': '50٪',
      'en': '50%',
      'tr': '%50',
    },
    'mpxwk6ui': {
      'fr': 'Démarrez une conversation maintenant ',
      'ar': 'ابدأ محادثة الآن',
      'en': 'Start a conversation now',
      'tr': 'Şimdi bir konuşma başlatın',
    },
    'fh5z1igs': {
      'fr': 'Ou',
      'ar': 'أو',
      'en': 'Or',
      'tr': 'Veya',
    },
    'uoiyf18y': {
      'fr': 'Ca suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That\'s enough for me!',
      'tr': 'Bu bana yeter!',
    },
    'zah6clms': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // matches
  {
    'ixqmo3vn': {
      'fr': 'Rencontres',
      'ar': 'مواعدات',
      'en': 'Matchs',
      'tr': 'Flört',
    },
    'kt4s5fsh': {
      'fr': 'Sara',
      'ar': 'ساره',
      'en': 'Sarah',
      'tr': 'Sarah',
    },
    'h7f9xqnv': {
      'fr': 'Mary',
      'ar': 'ماري',
      'en': 'Mary',
      'tr': 'Mary',
    },
    '34yx3kdi': {
      'fr': 'Kaoutar',
      'ar': 'كوثر',
      'en': 'Kaoutar',
      'tr': 'kaoutar',
    },
    '5cfo1suo': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // Profile
  {
    '13jgokol': {
      'fr': 'Profil',
      'ar': 'ملفي الشخصي',
      'en': 'Profile',
      'tr': 'Profil',
    },
    'dqis7x6n': {
      'fr': ',',
      'ar': '',
      'en': '',
      'tr': '',
    },
    '0olwx22j': {
      'fr': 'À propos de moi',
      'ar': 'عني',
      'en': 'About me',
      'tr': 'Benim hakkımda',
    },
    'mm8kuf2a': {
      'fr': 'Intérêts',
      'ar': 'الإهتمامات',
      'en': 'Interests',
      'tr': 'ilgi alanları',
    },
    'zfssgo4b': {
      'fr': 'La randonnée',
      'ar': 'جولة على الأقدام',
      'en': 'Hiking',
      'tr': 'Doğa yürüyüşü',
    },
    'f4kwb8wf': {
      'fr': 'Nature/Jardinage',
      'ar': 'الطبيعة / البستنة',
      'en': 'Nature/Gardening',
      'tr': 'Doğa/Bahçecilik',
    },
    '2dzl7yvp': {
      'fr': 'L’art',
      'ar': 'فن',
      'en': 'Art',
      'tr': 'Sanat',
    },
    'bk8urqou': {
      'fr': 'Les voyages',
      'ar': 'الرحلات',
      'en': 'The trips',
      'tr': 'geziler',
    },
    'pabqa4hn': {
      'fr': 'Films/Cinéma',
      'ar': 'أفلام / سينما',
      'en': 'Movies/Cinema',
      'tr': 'Filmler/Sinema',
    },
    '25o6rp5o': {
      'fr': 'Photos',
      'ar': 'الصور',
      'en': 'Pictures',
      'tr': 'Resimler',
    },
    'qryw0bxh': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // editProfile
  {
    'l3uatqmy': {
      'fr': 'Éditez votre profil',
      'ar': 'عدل ملفك الشخصي',
      'en': 'Edit your profile',
      'tr': 'Profilinizi düzenleyin',
    },
    '2efprkqz': {
      'fr': 'Mon Profil:',
      'ar': 'ملفي الشخصي',
      'en': 'My profile',
      'tr': 'Benim profilim',
    },
    't9i89j5t': {
      'fr': 'Nom Complet',
      'ar': 'الاسم الكامل',
      'en': 'Full Name',
      'tr': 'Ad Soyad',
    },
    'boqifj1x': {
      'fr': 'Métier',
      'ar': 'مهنة',
      'en': 'Job',
      'tr': 'İş',
    },
    '12leaikz': {
      'fr': '',
      'ar': '',
      'en': '',
      'tr': '',
    },
    'wd9vpqh6': {
      'fr': 'Biographie',
      'ar': 'سيرة شخصية',
      'en': 'Biography',
      'tr': 'biyografi',
    },
    'foi3lff4': {
      'fr': 'Sexe:',
      'ar': 'الجنس',
      'en': 'Gender',
      'tr': 'Cinsiyet',
    },
    'l6m6ng3p': {
      'fr': 'Homme',
      'ar': 'ذكر',
      'en': 'Male',
      'tr': 'Erkek',
    },
    'baim5lij': {
      'fr': 'Femme',
      'ar': 'امرأة',
      'en': 'Women',
      'tr': 'Kadın',
    },
    '5bponwwp': {
      'fr': 'Date de naissance:',
      'ar': 'تاريخ الميلاد',
      'en': 'Date of Birth',
      'tr': 'Doğum tarihi',
    },
    'jgqgzegq': {
      'fr': 'Jour',
      'ar': 'يوم',
      'en': 'Day',
      'tr': 'Gün',
    },
    'p5jfzspu': {
      'fr': 'Mois',
      'ar': 'شهر',
      'en': 'Month',
      'tr': 'Ay',
    },
    'frvjzbxi': {
      'fr': 'Année',
      'ar': 'عام',
      'en': 'Year',
      'tr': 'Yıl',
    },
    'ca4lzles': {
      'fr': 'Sélectionnez  votre ville:',
      'ar': 'مدينتك:',
      'en': 'Your City:',
      'tr': 'Senin şehirin:',
    },
    'h0ueu5id': {
      'fr': 'Ville',
      'ar': 'مدينة',
      'en': 'City',
      'tr': 'Şehir',
    },
    '0jbfg6p4': {
      'fr': 'Sélectionnez votre pays:',
      'ar': 'اختر بلدك:',
      'en': 'Choose your country:',
      'tr': 'Ülkenizi seçin:',
    },
    'wod7xith': {
      'fr': 'Maroc',
      'ar': 'المملكة المغربية',
      'en': 'Morocco',
      'tr': 'Fas',
    },
    '11d1afgd': {
      'fr': 'Algérie',
      'ar': 'الجزائر',
      'en': 'Algeria',
      'tr': 'Cezayir',
    },
    '1cu9v3bt': {
      'fr': 'Tunisie',
      'ar': 'تونس',
      'en': 'Tunisia',
      'tr': 'Tunus',
    },
    '9igd712z': {
      'fr': 'Libye',
      'ar': 'ليبيا',
      'en': 'Libya',
      'tr': 'Libya',
    },
    'a4vsnbxb': {
      'fr': 'Mauritanie',
      'ar': 'موريتانيا',
      'en': 'Mauritania',
      'tr': 'Moritanya',
    },
    'h3hponew': {
      'fr': 'Egypte',
      'ar': 'مصر',
      'en': 'Egypt',
      'tr': 'Mısır',
    },
    'aj862mpk': {
      'fr': 'Saudi Arabia',
      'ar': 'المملكة العربية السعودية',
      'en': 'saudi arabia',
      'tr': 'Suudi Arabistan',
    },
    'kc0kivbo': {
      'fr': 'UAE',
      'ar': 'الإمارات العربية المتحدة',
      'en': 'UAE',
      'tr': 'BAE',
    },
    'ep6joodu': {
      'fr': 'Oman',
      'ar': 'سلطنة عمان',
      'en': 'Oman',
      'tr': 'Umman',
    },
    '6vdqvewf': {
      'fr': 'Qatar',
      'ar': 'دولة قطر',
      'en': 'Qatar',
      'tr': 'Katar',
    },
    'oes0h3he': {
      'fr': 'Bahrain',
      'ar': 'البحرين',
      'en': 'Bahrain',
      'tr': 'Bahreyn',
    },
    'uwb8cyq1': {
      'fr': 'Kuwait',
      'ar': 'الكويت',
      'en': 'Kuwait',
      'tr': 'Kuveyt',
    },
    '8dzu8lug': {
      'fr': 'Soudan',
      'ar': 'السودان',
      'en': 'Sudan',
      'tr': 'Sudan',
    },
    'uzivxrgd': {
      'fr': 'Syrie',
      'ar': 'سوريا',
      'en': 'Syria',
      'tr': 'Suriye',
    },
    'cnljsu8m': {
      'fr': 'Liban',
      'ar': 'لبنان',
      'en': 'Lebanon',
      'tr': 'Lübnan',
    },
    'd9zueiyc': {
      'fr': 'Turquie',
      'ar': 'تركيا',
      'en': 'Turkey',
      'tr': 'Türkiye',
    },
    '51j0jlpg': {
      'fr': 'Photos:',
      'ar': 'الصور:',
      'en': 'Pictures:',
      'tr': 'Resimler:',
    },
    'nncrdp48': {
      'fr': 'Enregistrer',
      'ar': 'يسجل',
      'en': 'Register',
      'tr': 'Kayıt ol',
    },
    '9s60moyv': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // Settings
  {
    'xh8l8uom': {
      'fr': 'Paramètres',
      'ar': 'الإعدادات',
      'en': 'Settings',
      'tr': 'Ayarlar',
    },
    'mvdu5xao': {
      'fr': 'Je recherche un(e):',
      'ar': 'أبحث عن:',
      'en': 'I search for:',
      'tr': 'şunu arıyorum:',
    },
    'lmv5diaj': {
      'fr': 'Homme',
      'ar': 'ذكر',
      'en': 'Male',
      'tr': 'Erkek',
    },
    'aj7epfo8': {
      'fr': 'Femme',
      'ar': 'المؤنث',
      'en': 'Feminine',
      'tr': 'Kadınsı',
    },
    't1prfi43': {
      'fr': 'Modifier le questionnaire',
      'ar': 'تحرير الاختبار',
      'en': 'Edit quiz',
      'tr': 'Testi düzenle',
    },
    'zhp5oi6b': {
      'fr': 'Tranche d’âge',
      'ar': 'الفئة العمرية',
      'en': 'Age range',
      'tr': 'Yaş aralığı',
    },
    'yyfgvofr': {
      'fr': 'Recevoir les notifications suivantes:',
      'ar': 'تلقي الإخطارات التالية:',
      'en': 'Receive the following notifications:',
      'tr': 'Aşağıdaki bildirimleri alın:',
    },
    '7ns2usao': {
      'fr': 'Nouveaux Matchs',
      'ar': 'مواعدات جديدة',
      'en': 'New Matches',
      'tr': 'Yeni Maçlar',
    },
    'k8jdlibi': {
      'fr': 'Nouveaux J\'aime',
      'ar': 'إعجابات جديدة',
      'en': 'New Likes',
      'tr': 'Yeni Beğeniler',
    },
    'b08p41hz': {
      'fr': 'Nouveaux Messages',
      'ar': 'محادثات جديدة',
      'en': 'New Messages',
      'tr': 'Yeni Mesajlar',
    },
    'uoxxytso': {
      'fr': 'Sélectionnez votre language',
      'ar': 'اختر لغتك',
      'en': 'Select your language',
      'tr': 'Dilinizi seçiniz',
    },
    '6kmw5qvn': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // chat
  {
    'ofufx9x2': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // allChatPage
  {
    'zehmg8gk': {
      'fr': 'Chats',
      'ar': 'الدردشات',
      'en': 'Chats',
      'tr': 'kediler',
    },
    'vyzjlaau': {
      'fr': 'Chats',
      'ar': 'الدردشات',
      'en': 'Chats',
      'tr': 'kediler',
    },
  },
  // notifications
  {
    'asafhaon': {
      'fr': 'Notifications',
      'ar': 'إشعارات',
      'en': 'notices',
      'tr': 'Bildirimler',
    },
    'hmqazb5b': {
      'fr': '',
      'ar': '',
      'en': 'Example of text',
      'tr': '',
    },
    '8ft00scz': {
      'fr': '',
      'ar': '',
      'en': 'Dec. 19, 1:30pm - 2:00pm',
      'tr': '',
    },
    'xqtso8ef': {
      'fr': 'Home',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // EmailVerification
  {
    'ruv8hhve': {
      'fr': 'Vérifiez votre boîte de réception',
      'ar': 'تحقق من بريدك الوارد.',
      'en': 'Check your inbox.',
      'tr': 'Gelen kutunu kontrol et.',
    },
    'gz3kanoo': {
      'fr': 'pour confirmez votre email',
      'ar': 'تأكيد عنوان البريد الإلكتروني',
      'en': 'Confirm Email',
      'tr': 'E-postanızı Onaylayın',
    },
    'j0bvpgiu': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
      'tr': '',
    },
    'ibtmur5n': {
      'fr': 'Renvoyer !',
      'ar': 'إعادة إرسال!',
      'en': 'Resend!',
      'tr': 'Yeniden gönder!',
    },
    'nx9v570x': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'Validate',
      'tr': 'Doğrula',
    },
    'i3g5wa3y': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // PasswordReset
  {
    'nnk5zqv0': {
      'fr': 'Réinitialisez votre mot de passe',
      'ar': 'إعادة تعيين كلمة المرور الخاصة بك',
      'en': 'Reset your password',
      'tr': 'şifrenizi sıfırlayın',
    },
    'mjgdwdyh': {
      'fr': 'Votre email',
      'ar': 'بريدك الإلكتروني',
      'en': 'Your email',
      'tr': 'E-posta adresiniz',
    },
    '9rsctwyn': {
      'fr': 'Enregistrer',
      'ar': 'يحفظ',
      'en': 'Save',
      'tr': 'Kayıt etmek',
    },
    '254chuf0': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // PhoneVerificationSignUp
  {
    '862lr1au': {
      'fr': 'Code de vérification',
      'ar': 'رمز التحقق',
      'en': 'Verification code',
      'tr': 'Doğrulama kodu',
    },
    '16dato64': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
      'tr': '_ _ _ _',
    },
    '0bhf2xu5': {
      'fr': 'Renvoyer !',
      'ar': 'إعادة إرسال!',
      'en': 'Resend!',
      'tr': 'Yeniden gönder!',
    },
    'yl44qel1': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'Validate',
      'tr': 'Doğrulamak',
    },
    'xcukd75w': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // PhoneVerificationSignIn
  {
    'o01u96z7': {
      'fr': 'Code de vérification',
      'ar': 'رمز التحقق',
      'en': 'Verification code',
      'tr': 'Doğrulama kodu',
    },
    'ex66o4hj': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
      'tr': '_ _ _ _',
    },
    'n795y4i7': {
      'fr': 'Renvoyer !',
      'ar': 'إعادة إرسال!',
      'en': 'Resend!',
      'tr': 'Yeniden gönder!',
    },
    'vj7cblh5': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'Validate',
      'tr': 'Doğrulamak',
    },
    'rsskvc22': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage1
  {
    'ell7i28e': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'lvctwfd0': {
      'fr': '0%',
      'ar': '0٪',
      'en': '0%',
      'tr': '%0',
    },
    'ysxzyuk3': {
      'fr':
          'Il est important pour moi de maintenir les valeurs ou les croyances traditionnelles ',
      'ar': 'من المهم بالنسبة لي الحفاظ على القيم أو المعتقدات التقليدية',
      'en': 'It is important to me to maintain traditional values or beliefs',
      'tr':
          'Geleneksel değerleri veya inançları sürdürmek benim için önemlidir.',
    },
    'bt8gb2km': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'rd0sa2jd': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'v32lxfeq': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    'c0mjmlve': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'snjyo589': {
      'fr':
          'Il est important pour moi de prendre mes propres décisions en ce qui concerne ma vie ',
      'ar': 'من المهم بالنسبة لي أن أتخذ قراراتي الخاصة فيما يتعلق بحياتي',
      'en': 'It is important for me to make my own decisions regarding my life',
      'tr': 'Hayatımla ilgili kendi kararlarımı vermek benim için önemlidir.',
    },
    'nump13fe': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'lrecdtko': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    '0zcsn20k': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    'vl1y00sy': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'j2h4f2bn': {
      'fr': 'Continuer',
      'ar': 'إستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    '0qijnx41': {
      'fr': 'Accueil',
      'ar': 'ترحيب',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage2
  {
    'drszzsfp': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'ra9mocly': {
      'fr': '20%',
      'ar': '10٪',
      'en': '10%',
      'tr': '10%',
    },
    'y27as6py': {
      'fr':
          'Il est important pour moi d’être la personne la plus influente dans un couple ',
      'ar': 'من المهم بالنسبة لي أن أكون الشخص الأكثر نفوذاً بين الزوجين',
      'en':
          'It is important for me to be the most influential person in a couple',
      'tr': 'Bir çiftte en etkili kişi olmak benim için önemlidir',
    },
    '56jyipde': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'kg8xc2g9': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'ni5m23fc': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
      'tr': 'Tamamen',
    },
    'u80g5es1': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'o57a2u7c': {
      'fr':
          'Il est important pour moi de suivre les règles même quand personne ne surveille ',
      'ar': 'من المهم بالنسبة لي اتباع القواعد حتى عندما لا يراقبها أحد',
      'en':
          'It is important for me to follow the rules even when no one is watching',
      'tr': 'Kimse izlemiyorken bile kurallara uymak benim için önemlidir.',
    },
    'kpdn3bpi': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    '8fkyggjo': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    '9t2i69ud': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
      'tr': 'Tamamen',
    },
    'e07rwz1b': {
      'fr': 'Tout à fait ',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    '9g0il5x0': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam et',
    },
    'yxzdnmei': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage3
  {
    'jja7aww4': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'hryeok42': {
      'fr': '30%',
      'ar': '20٪',
      'en': '20%',
      'tr': '20%',
    },
    '87q5j5v4': {
      'fr': 'Le plus important dans une relation ?\n (3 choix)',
      'ar': 'أهم شيء في العلاقة؟ (3 اختيارات)',
      'en': 'The most important thing in a relationship? (3 choices)',
      'tr': 'Bir ilişkideki en önemli şey? (3 seçenek)',
    },
    'vf393g57': {
      'fr': 'La passion',
      'ar': 'الصبر',
      'en': 'Passion',
      'tr': 'Tutku',
    },
    'v9f9mear': {
      'fr': 'L\'amour',
      'ar': 'الحب',
      'en': 'love',
      'tr': 'Aşk',
    },
    'w3di5m6o': {
      'fr': 'La complicité',
      'ar': 'التواطؤ',
      'en': 'Complicity',
      'tr': 'suç ortaklığı',
    },
    'mx3v3nc3': {
      'fr': 'La loyauté',
      'ar': 'وفاء',
      'en': 'Loyalty',
      'tr': 'Bağlılık',
    },
    'x06rhcf2': {
      'fr': 'La fidélité',
      'ar': 'جدير بالثقة',
      'en': 'Faithfulness',
      'tr': 'sadakat',
    },
    'fn7hpwo6': {
      'fr': 'La transparence ',
      'ar': 'شفافية',
      'en': 'Transparency',
      'tr': 'şeffaflık',
    },
    '0vbr2adi': {
      'fr': 'L’authenticité ',
      'ar': 'أصالة',
      'en': 'Authenticity',
      'tr': 'özgünlük',
    },
    's5fbvjre': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'zwr79gca': {
      'fr': 'Home',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage4
  {
    'scmza8pu': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '3i7m1mkc': {
      'fr': '40%',
      'ar': '40٪',
      'en': '40%',
      'tr': '40%',
    },
    't0wjrmwf': {
      'fr': 'Vos besoins',
      'ar': 'احتياجاتك',
      'en': 'Your needs',
      'tr': 'İhtiyaçlarınız',
    },
    'l5b0tt2g': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très \nimportant)',
      'ar': 'من 1 إلى 5 (1 ليس مهمًا جدًا ، 10 مهم جدًا)',
      'en': 'From 1 to 5 (1 not very important, 10 very important)',
      'tr': '1\'den 5\'e (1 çok önemli değil, 10 çok önemli)',
    },
    '0ref52bz': {
      'fr': 'Affection',
      'ar': 'عاطفة',
      'en': 'Affection',
      'tr': 'Alaka',
    },
    '2jny32kb': {
      'fr': 'Indépendance',
      'ar': 'استقلال',
      'en': 'Independence',
      'tr': 'Bağımsızlık',
    },
    'kh2zr5v2': {
      'fr': 'Liberté',
      'ar': 'حرية',
      'en': 'Freedom',
      'tr': 'Özgürlük',
    },
    'i6zkxurc': {
      'fr': 'Reconnaissance',
      'ar': 'إعتراف',
      'en': 'Acknowledgement',
      'tr': 'teşekkür',
    },
    '3nbz3j60': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très \nimportant)',
      'ar': 'من 1 إلى 5 (1 ليس مهمًا جدًا ، 10 مهم جدًا)',
      'en': 'From 1 to 5 (1 not very important, 10 very important)',
      'tr': '1\'den 5\'e (1 çok önemli değil, 10 çok önemli)',
    },
    'c4av361x': {
      'fr': 'Admiration ',
      'ar': 'الإعجاب',
      'en': 'Admiration',
      'tr': 'hayranlık',
    },
    '3eufw637': {
      'fr': 'Fonder une famille',
      'ar': 'تكوين أسرة',
      'en': 'Build a family',
      'tr': 'bir aile kur',
    },
    '4124h5le': {
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
      'tr': 'Devam et',
    },
    '8z1jhwwb': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'EV',
    },
  },
  // QsModifyPage5
  {
    'owsdkjnr': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '2ynuaig3': {
      'fr': '60%',
      'ar': '60٪',
      'en': '60%',
      'tr': '60%',
    },
    'sohrw0zk': {
      'fr': 'Quel est votre niveau d’études ?',
      'ar': 'ما هو مستواك الدراسي ؟',
      'en': 'What is your level of study ?',
      'tr': 'Eğitim seviyeniz nedir?',
    },
    '07abpqai': {
      'fr': 'Sans diplôme',
      'ar': 'بدون دبلوم',
      'en': 'Without diploma',
      'tr': 'diplomasız',
    },
    'w215zwmk': {
      'fr': 'Collège',
      'ar': 'المدرسة المتوسطة',
      'en': 'Middle School',
      'tr': 'Orta okul',
    },
    '0x2lp32a': {
      'fr': 'BAC ou BAC PRO',
      'ar': 'بكالوريا أو بكالوريا مهنية ',
      'en': 'BAC or BAC PRO',
      'tr': 'BAC veya BAC PRO',
    },
    'thu8cxhz': {
      'fr': 'BAC +2 /BAC +3',
      'ar': 'بكالوريا 2+ أو بكالوريا 3+',
      'en': 'BAC +2 /BAC +3',
      'tr': 'BAC +2 /BAC +3',
    },
    'fcmfhh6b': {
      'fr': 'BAC +4 / BAC +5',
      'ar': 'بكالوريا 4+ أو بكالوريا 5+ ',
      'en': 'BAC +4 / BAC +5',
      'tr': 'BAC +4 / BAC +5',
    },
    'tkqsmrlk': {
      'fr': 'Doctorat',
      'ar': 'دكتوراه',
      'en': 'PhD',
      'tr': 'doktora',
    },
    '4m7n8ud8': {
      'fr':
          'Quelle importance attachez-vous au niveau d’études de votre partenaire ?',
      'ar': 'ما هي الأهمية التي توليها لمستوى تعليم شريكك؟',
      'en':
          'What importance do you attach to the level of education of your partner?',
      'tr': 'Partnerinizin eğitim düzeyine ne kadar önem veriyorsunuz?',
    },
    'yu3ss2rt': {
      'fr': 'Aucune importance',
      'ar': 'لا أهمية',
      'en': 'Doesn&#39;t matter',
      'tr': 'önemli değil',
    },
    'qdeflx5u': {
      'fr': 'Peu important',
      'ar': 'غير مهم',
      'en': 'Not important',
      'tr': 'Önemli değil',
    },
    'o0bznh2a': {
      'fr': 'Important',
      'ar': 'الأهمية',
      'en': 'Important',
      'tr': 'Önemli',
    },
    'ba8pmla6': {
      'fr': 'Plutôt important',
      'ar': 'مهم جدا',
      'en': 'Quite important',
      'tr': 'oldukça önemli',
    },
    'sap64knb': {
      'fr': 'Vraiment important',
      'ar': 'مهم للغاية',
      'en': 'Really important',
      'tr': 'gerçekten önemli',
    },
    'kaf0uhq8': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'szgdrk1v': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage6
  {
    'fm1b6kkn': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'el0pysz9': {
      'fr': '70%',
      'ar': '70٪',
      'en': '70%',
      'tr': '70%',
    },
    'k6lqctxp': {
      'fr':
          'Imaginez que vos amis devaient vous décrire, quels seraient les adjectifs qui vous correspondraient ?\n(Choisir 9 adjectifs)',
      'ar':
          'تخيل أن على أصدقائك أن يصفوك ، ما هي الصفات التي تناسبك؟ (اختر 9 صفات)',
      'en':
          'Imagine that your friends had to describe you, what would be the adjectives that would correspond to you? (Choose 9 adjectives)',
      'tr':
          'Arkadaşlarınızın sizi tanımlaması gerektiğini düşünün, size karşılık gelen sıfatlar ne olurdu? (9 sıfat seçin)',
    },
    '3vuo8bvj': {
      'fr': 'Ses valeurs',
      'ar': 'قيمها',
      'en': 'Her values',
      'tr': 'Onun değerleri',
    },
    '5hh0pl3q': {
      'fr': 'Son énergie',
      'ar': 'طاقته',
      'en': 'His energy',
      'tr': 'Onun enerjisi',
    },
    'cmtapis5': {
      'fr': 'L’attachement',
      'ar': 'مرفق',
      'en': 'Attachment',
      'tr': 'Ek dosya',
    },
    'zn7kk56f': {
      'fr': 'Les habitudes',
      'ar': 'العادات',
      'en': 'Habits',
      'tr': 'Alışkanlıklar',
    },
    'gtqartlg': {
      'fr': 'Le plaisir et la détente',
      'ar': 'المتعة والاسترخاء',
      'en': 'Pleasure and relaxation',
      'tr': 'Zevk ve rahatlama',
    },
    'monb5gvp': {
      'fr': 'Être à deux',
      'ar': 'لنكن معا',
      'en': 'be together',
      'tr': 'Birlikte olmak',
    },
    'cc6yqcyg': {
      'fr': 'Ma confiance en elle (lui)',
      'ar': 'ثقتي بها',
      'en': 'My trust in her (him)',
      'tr': 'Ona olan güvenim (ona)',
    },
    'ak0tzh2x': {
      'fr': 'Son sex-appeal',
      'ar': 'جاذبيتها الجنسية',
      'en': 'Her sex appeal',
      'tr': 'Onun seks çekiciliği',
    },
    'kqxmhgpr': {
      'fr': 'Son amour pour les enfants',
      'ar': 'حبه للأطفال',
      'en': 'His love for children',
      'tr': 'Çocuklara olan sevgisi',
    },
    'wq53euo3': {
      'fr': 'Le partage',
      'ar': 'مشاركة',
      'en': 'The sharing',
      'tr': 'Paylaşım',
    },
    '41l5tvk9': {
      'fr': 'Ses convictions',
      'ar': 'قناعاته',
      'en': 'his convictions',
      'tr': 'onun mahkumiyetleri',
    },
    'c6erd30f': {
      'fr': 'La passion',
      'ar': 'الصبر',
      'en': 'Passion',
      'tr': 'Tutku',
    },
    'pm935891': {
      'fr': 'Sa joie de vivre',
      'ar': 'فرحته في العيش',
      'en': 'His joy of living',
      'tr': 'Onun yaşama sevinci',
    },
    'c20bm97w': {
      'fr': 'Son apparence physique ',
      'ar': 'مظهره الجسدي',
      'en': 'His physical appearance',
      'tr': 'Onun fiziksel görünüşü',
    },
    'hhswviut': {
      'fr': 'Notre attirance réciproque ',
      'ar': 'جاذبيتنا المتبادلة',
      'en': 'Our mutual attraction',
      'tr': 'karşılıklı çekiciliğimiz',
    },
    'pvbr1ham': {
      'fr': 'Nos similitudes ',
      'ar': 'أوجه التشابه بيننا',
      'en': 'Our similarities',
      'tr': 'benzerliklerimiz',
    },
    '3f3iel3s': {
      'fr': 'L’affection que je ressens\n pour elle (lui)',
      'ar': 'المودة التي أشعر بها تجاهها',
      'en': 'The affection I feel for her (him)',
      'tr': 'Ona karşı hissettiğim sevgi (ona)',
    },
    '01754k9i': {
      'fr': 'Sa personnalité ',
      'ar': 'شخصيته',
      'en': 'Her personality',
      'tr': 'onun kişiliği',
    },
    'fwk893s3': {
      'fr': 'Sa gentillesse',
      'ar': 'لطفه',
      'en': 'His kindness',
      'tr': 'Onun nezaketi',
    },
    'a3uglnbq': {
      'fr': 'Éprouver des sensations fortes',
      'ar': 'تجربة الإثارة',
      'en': 'Experience thrills',
      'tr': 'Heyecan yaşayın',
    },
    '8vkaqpql': {
      'fr': 'Sa position sociale',
      'ar': 'وضعه الاجتماعي',
      'en': 'His social position',
      'tr': 'Onun sosyal konumu',
    },
    '4u3gc4r3': {
      'fr': 'J’ai besoin d’un homme\n (d’une femme) dans ma vie',
      'ar': 'أحتاج إلى رجل (امرأة) في حياتي',
      'en': 'I need a man (a woman) in my life',
      'tr': 'Hayatımda bir erkeğe (bir kadına) ihtiyacım var',
    },
    'o7lw9o91': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'o61fs9pi': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage7
  {
    '2mk7jma5': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '4ykhfcl7': {
      'fr': '80%',
      'ar': '80٪',
      'en': '80%',
      'tr': '80%',
    },
    'qd68k7au': {
      'fr': 'Je suis spontané(e)',
      'ar': 'أنا عفوي',
      'en': 'I am spontaneous',
      'tr': 'ben spontaneyim',
    },
    '96boaf26': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    'i29dkb24': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'e4feij85': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    '3jmiuwtw': {
      'fr': 'Tout à fait',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'lhiac4d8': {
      'fr': 'Il est facile pour moi de discuter avec de nouvelles personnes',
      'ar': 'من السهل بالنسبة لي الدردشة مع أشخاص جدد',
      'en': 'It&#39;s easy for me to chat with new people',
      'tr': 'Yeni insanlarla sohbet etmek benim için kolay',
    },
    'y627e74r': {
      'fr': 'Pas du tout',
      'ar': 'لا على الاطلاق',
      'en': 'Not at all',
      'tr': 'hiç de bile',
    },
    '2dp4ibj3': {
      'fr': 'Pas vraiment',
      'ar': 'ليس صحيحا',
      'en': 'Not really',
      'tr': 'Pek sayılmaz',
    },
    'ai05jeeo': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Really',
      'tr': 'Yok canım',
    },
    '7snzivoa': {
      'fr': 'Tout à fait',
      'ar': 'تماما',
      'en': 'Absolutely',
      'tr': 'Kesinlikle',
    },
    'isnih24w': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    'x1l4yss0': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage8
  {
    '3tgtwxq6': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    'dt6tunc9': {
      'fr': '90%',
      'ar': '90٪',
      'en': '90%',
      'tr': '%90',
    },
    'vi9iq33q': {
      'fr':
          'Quels seraient les 3 points qui pourraient vous rendre heureux(se) ?',
      'ar': 'ما هي النقاط الثلاث التي يمكن أن تجعلك سعيدًا؟',
      'en': 'What would be the 3 points that could make you happy?',
      'tr': 'Seni mutlu edecek 3 nokta ne olurdu?',
    },
    '5cdgrhn9': {
      'fr': 'Continuer\n',
      'ar': 'لاستكمال',
      'en': 'To continue',
      'tr': 'Devam etmek',
    },
    '9n2ehh7c': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // QsModifyPage9
  {
    'e9b8zku8': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
      'tr': 'Anket',
    },
    '9qr0oym6': {
      'fr': '100%',
      'ar': '100٪',
      'en': '100%',
      'tr': '100%',
    },
    'i5pem8d9': {
      'fr': 'Vos centres d’intérêts ? \nVeuillez choisir au moins 3 éléments',
      'ar': 'مجالات اهتمامك؟ الرجاء اختيار 3 عناصر على الأقل',
      'en': 'Your areas of interest? Please choose at least 3 items',
      'tr': 'İlgi alanlarınız? Lütfen en az 3 öğe seçin',
    },
    '9hu8kvwf': {
      'fr': 'Les concerts',
      'ar': 'الحفلات',
      'en': 'Concerts',
      'tr': 'konserler',
    },
    'abp31r6f': {
      'fr': 'Sports équestres',
      'ar': 'رياضة الفروسية',
      'en': 'Equestrian sports',
      'tr': 'binicilik sporları',
    },
    'f5du3djv': {
      'fr': 'La randonnée',
      'ar': 'جولة على الأقدام',
      'en': 'Hiking',
      'tr': 'Doğa yürüyüşü',
    },
    'i31e1o33': {
      'fr': 'Gastronomie et restaurants',
      'ar': 'فن الطهو والمطاعم',
      'en': 'Gastronomy and restaurants',
      'tr': 'Gastronomi ve restoranlar',
    },
    'ewwwgq2h': {
      'fr': 'Arts et activités manuelles',
      'ar': 'الفنون والحرف اليدوية',
      'en': 'Arts and crafts',
      'tr': 'Sanat ve El işi',
    },
    '6wk2g5el': {
      'fr': 'Théâtre /Danse/Opéra/Ballet',
      'ar': 'مسرح / رقص / أوبرا / باليه',
      'en': 'Theatre/Dance/Opera/Ballet',
      'tr': 'Tiyatro/Dans/Opera/Bale',
    },
    'm6u3qd1n': {
      'fr': 'Nature/Jardinage',
      'ar': 'الطبيعة / البستنة',
      'en': 'Nature/Gardening',
      'tr': 'Doğa/Bahçecilik',
    },
    'mcn168ui': {
      'fr': 'Sorties/Soirées',
      'ar': 'نزهات / أمسيات',
      'en': 'Outings/Evenings',
      'tr': 'Geziler/Akşamlar',
    },
    '92zux0te': {
      'fr': 'Diner au restaurant',
      'ar': 'عشاء في مطعم',
      'en': 'Dinner at the restaurant',
      'tr': 'restoranda akşam yemeği',
    },
    'szmy3zww': {
      'fr': 'Sports d’hiver',
      'ar': 'الرياضات الشتوية',
      'en': 'Winter sports',
      'tr': 'Kış sporları',
    },
    'oqrjiw6a': {
      'fr': 'L\'art',
      'ar': 'فن',
      'en': 'Art',
      'tr': 'Sanat',
    },
    '9kz94o8m': {
      'fr': 'Photographie',
      'ar': 'التصوير',
      'en': 'Photography',
      'tr': 'fotoğrafçılık',
    },
    'q60dcacx': {
      'fr': 'Voile/Planche à voile/Sports nautiques',
      'ar': 'الإبحار / ركوب الأمواج / الرياضات المائية',
      'en': 'Sailing/Windsurfing/Water sports',
      'tr': 'Yelken/Rüzgar Sörfü/Su sporları',
    },
    'yqheffk1': {
      'fr': 'Littérature/Lecture',
      'ar': 'أدب / قراءة',
      'en': 'Literature/Reading',
      'tr': 'Edebiyat/Okuma',
    },
    'xg048o0s': {
      'fr': 'La chasse',
      'ar': 'الصيد',
      'en': 'The hunt',
      'tr': 'Av',
    },
    'odnkpp1b': {
      'fr': 'Randonnée/Escalade',
      'ar': 'المشي لمسافات طويلة / التسلق',
      'en': 'Hiking/Climbing',
      'tr': 'Yürüyüş/Tırmanma',
    },
    'v759szmf': {
      'fr': 'Sports collectifs  (Football, Rugby, \nHandball…)',
      'ar': 'الرياضات الجماعية (كرة القدم ، الرجبي ، كرة اليد ...)',
      'en': 'Team sports (Football, Rugby, Handball…)',
      'tr': 'Takım sporları (Futbol, Rugby, Hentbol…)',
    },
    'ljt8dv8h': {
      'fr': 'La famille',
      'ar': 'العائلة',
      'en': 'Family',
      'tr': 'Aile',
    },
    'f3gt2d6q': {
      'fr': 'Parler avec des amis',
      'ar': 'تحدث مع الأصدقاء',
      'en': 'Talk with friends',
      'tr': 'Arkadaşlarla konuşmak',
    },
    'z7qrdx1v': {
      'fr': 'Films/Cinéma',
      'ar': 'أفلام / سينما',
      'en': 'Movies/Cinema',
      'tr': 'Filmler/Sinema',
    },
    'jow6m3v2': {
      'fr': 'Les voyages',
      'ar': 'الرحلات',
      'en': 'The trips',
      'tr': 'geziler',
    },
    '3i2ri3fx': {
      'fr': 'Continuer',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
    '6kkm85xt': {
      'fr': 'Accueil',
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // EmptyChats
  {
    'fh8476sw': {
      'fr': 'Vous n’avez pas de messages !',
      'ar': 'ليس لديك رسائل!',
      'en': 'You have no messages!a',
      'tr': 'Mesajınız yok!',
    },
  },
  // menu
  {
    'q4ae3no9': {
      'fr': 'Modifier le profil',
      'ar': 'تعديل الملف الشخصي',
      'en': 'Modify the profile',
      'tr': 'Profili Düzenle',
    },
    'qx0b29dx': {
      'fr': 'Modifier les paramètres',
      'ar': 'قم بتعديل المعلمات',
      'en': 'Modify the settings',
      'tr': 'Ayarları değiştir',
    },
    'gid5fjk8': {
      'fr': 'Se déconnecter',
      'ar': 'تسجيل الخروج',
      'en': 'Sign out',
      'tr': 'Oturumu Kapat',
    },
  },
  // noMatch
  {
    '01nbmcsk': {
      'fr': 'Vous n\'avez de Matchs !',
      'ar': 'لا توجد مواعدات !',
      'en': 'There are no Matches!',
      'tr': 'Maç yok!',
    },
  },
  // selectLanguage
  {
    'vs8cx4jh': {
      'fr': 'Arabe',
      'ar': 'العربية',
      'en': 'Arabic',
      'tr': 'Arabistan',
    },
    '2zvo621a': {
      'fr': 'Français',
      'ar': 'الفرنسية',
      'en': 'French',
      'tr': 'Fransızca',
    },
    '5zz9v12q': {
      'fr': 'Anglais',
      'ar': 'إنجليزي',
      'en': 'English',
      'tr': 'ingilizce',
    },
    'jwmq41f2': {
      'fr': 'Turquie',
      'ar': 'تركي',
      'en': 'Turkey',
      'tr': 'Türkiye',
    },
  },
  // interestsTitleRow
  {
    'ft1fnckk': {
      'fr': 'Intérêts',
      'ar': 'الإهتمامات',
      'en': 'Interests',
      'tr': 'ilgi alanları',
    },
  },
  // interestsContainer
  {
    'kmsyqtok': {
      'fr': '',
      'ar': '',
      'en': '',
      'tr': '',
    },
  },
  // ageChoicePage
  {
    '4vk6npjo': {
      'fr': 'Quelle tranche d’âge\n recherchez-vous ?',
      'ar': 'ما هي الفئة العمرية التي تبحث عنها؟',
      'en': 'What age group are you\n looking for?',
      'tr': 'Hangi yaş grubunu arıyorsunuz?',
    },
    '1htmgfon': {
      'fr': 'Glissez le slider ci-dessous:',
      'ar': 'إختر عبر المنزلق أدناه:',
      'en': 'Drag the slider below:',
      'tr': 'Aşağıdaki kaydırıcıyı sürükleyin:',
    },
    '8d7vzcfe': {
      'fr': 'Continuer',
      'ar': 'لاستكمال',
      'en': 'Continue',
      'tr': 'Devam etmek',
    },
  },
  // Miscellaneous
  {
    'z6sa2e22': {
      'fr':
          'Pour prendre une photo ou une vidéo, cette application nécessite l\'autorisation d\'accéder à l\'appareil photo.',
      'ar':
          'من أجل التقاط صورة أو مقطع فيديو ، يتطلب هذا التطبيق إذنًا للوصول إلى الكاميرا.',
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
      'tr':
          'Bir fotoğraf veya video çekmek için bu uygulama kameraya erişim izni gerektirir.',
    },
    'bwt9iwlk': {
      'fr':
          'Afin de télécharger des médias, cette application nécessite l\'autorisation d\'accéder à la photothèque.',
      'ar': 'لتحميل الوسائط ، يتطلب هذا التطبيق إذنًا للوصول إلى مكتبة الصور.',
      'en':
          'In order to upload media, this app requires permission to access the photo library.',
      'tr':
          'Medya yüklemek için bu uygulama fotoğraf kitaplığına erişim izni gerektirir.',
    },
    '7api57zb': {
      'fr':
          'Erreur : [Il y a un problème d\'authentification !Nous allons résoudre ce problème]',
      'ar': 'خطأ: ]هناك مشكلة في الدخول!سنصلح هذه المشكلة[',
      'en':
          'Error: [There\'s a problem on Authentication! We will fix this problem]',
      'tr': 'Hata: [Kimlik Doğrulamada bir sorun var! Bu sorunu çözeceğiz]',
    },
    '1vgkh9hn': {
      'fr': 'E-mail de réinitialisation du mot de passe envoyé !',
      'ar': 'تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور!',
      'en': 'Password reset email sent!',
      'tr': 'Şifre sıfırlama e-postası gönderildi!',
    },
    'p7g1hpbb': {
      'fr': 'Email (requis)',
      'ar': 'البريد الإلكتروني )مطلوب(',
      'en': 'Email (required)',
      'tr': 'E-posta (gerekli)',
    },
    'ztpxnq81': {
      'fr': 'Numéro de téléphone obligatoire et doit commencer par +.',
      'ar': ' رقم الهاتف مطلوب ويجب أن يبدأ بـ  + .',
      'en': 'Phone number required and has to start with +.',
      'tr': 'Telefon numarası gereklidir ve + ile başlamalıdır.',
    },
    'yv11bv53': {
      'fr': 'Le mots de passe ne correspondent pas',
      'ar': 'كلمة المرور غير متطابقة',
      'en': 'Password don\'t match',
      'tr': 'Şifre eşleşmiyor',
    },
    'xndhofbj': {
      'fr': 'Entrez le code de vérification par SMS',
      'ar': 'أدخل رمز التحقق عبر الرسائل القصيرة',
      'en': 'Enter SMS verification code',
      'tr': 'SMS doğrulama kodunu girin',
    },
    'qwjoggxn': {
      'fr': 'Format de fichier invalide',
      'ar': 'تنسيق ملف غير صالح',
      'en': 'Invalid file format',
      'tr': 'Geçersiz dosya formatı',
    },
    'vrwld95g': {
      'fr': 'Téléchargement du fichier...',
      'ar': 'تحميل الملف ...',
      'en': 'Uploading file...',
      'tr': 'Dosya yükleniyor...',
    },
    '2x0ests4': {
      'fr': 'Succès!',
      'ar': 'نجاح!',
      'en': 'Success!',
      'tr': 'Başarı!',
    },
    'ejhzf9lt': {
      'fr': 'Échec du téléchargement du média',
      'ar': 'فشل تحميل الوسائط',
      'en': 'Failed to upload media',
      'tr': 'Medya yüklenemedi',
    },
    'pjtu4eg2': {
      'fr': 'Envoi photo',
      'ar': 'جارٍ إرسال الصورة',
      'en': 'Sending photo',
      'tr': 'fotoğraf gönderme',
    },
    '9mjte96b': {
      'fr': '',
      'ar': '',
      'en': '',
      'tr': '',
    },
    'gksbyv5u': {
      'fr': '',
      'ar': '',
      'en': '',
      'tr': '',
    },
    '5roz5c8o': {
      'fr': '',
      'ar': '',
      'en': '',
      'tr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
