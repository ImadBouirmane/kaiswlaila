import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['fr', 'ar', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String fr = '',
    String ar = '',
    String en = '',
  }) =>
      [fr, ar, en][languageIndex] ?? '';
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
    'jgtruzax': {
      'fr': 'Trouver un partenaire',
      'ar': 'ابحث عن شريك',
      'en': 'Find a partner',
    },
    'iuxqzaus': {
      'fr':
          'Le partenaire que vous cherchez avec la maniere que vous preferez !',
      'ar': 'الشريك الذي تبحث عنه بالطريقة التي تفضلها!',
      'en': 'The partner you are looking for with the way you prefer!',
    },
    '5jjrerod': {
      'fr': 'Connectez-vous via Google',
      'ar': 'تسجيل الدخول عبر جوجل',
      'en': 'Login via Google',
    },
    'u8ceqrn1': {
      'fr': 'Connectez-vous via Apple',
      'ar': 'سجّل الدخول من خلال Apple',
      'en': 'Sign in through Apple',
    },
    'n3vpdygg': {
      'fr': 'Vous n\'avez pas de compte?',
      'ar': 'لا يوجد لديك حساب؟',
      'en': 'You do not have an account?',
    },
    'tjs7xgjs': {
      'fr': 'S\'inscrire',
      'ar': 'يسجل',
      'en': 'Register',
    },
  },
  // Onboarding
  {
    'd2f68ui3': {
      'fr':
          'KWL est la première\napplication conçue \npar une équipe d’experts \nen psychologie et \nspécialistes des relations \nde couple. ',
      'ar':
          'KWL هو أول تطبيق صممه فريق من خبراء علم النفس وأخصائيي العلاقات الزوجية.',
      'en':
          'KWL is the first application designed by a team of psychology experts and couple relationship specialists.',
    },
    's11ixzl1': {
      'fr': 'Trouvez votre \npartenaire ideal\navec nous,',
      'ar': 'ابحث عن شريكك المثالي معنا ،',
      'en': 'Find your ideal partner with us,',
    },
    'u3k7yufq': {
      'fr': 'Love for Real !',
      'ar': 'الحب الحقيقي!',
      'en': 'Love for Real!',
    },
    'p911bmit': {
      'fr': 'Commerncer',
      'ar': 'بداية',
      'en': 'start',
    },
  },
  // signupStep1
  {
    '8k6ie3sk': {
      'fr': 'Création du votre compte',
      'ar': 'انشاء حسابك',
      'en': 'Creation of your account',
    },
    'gt7vkk2a': {
      'fr': 'Par Email',
      'ar': 'بالبريد الالكتروني',
      'en': 'By email',
    },
    'z42km0y1': {
      'fr': 'Email',
      'ar': 'بريد الالكتروني',
      'en': 'E-mail',
    },
    'fqj0yzbm': {
      'fr': 'Mot de passe',
      'ar': 'كلمة السر',
      'en': 'Password',
    },
    'e4z8ytmt': {
      'fr': 'Confirmez le mot de passe',
      'ar': 'تأكيد كلمة السر',
      'en': 'Confirm the password',
    },
    'syi85ic2': {
      'fr': 'Créer',
      'ar': 'لنصنع او لنبتكر',
      'en': 'To create',
    },
    '4frrvv2y': {
      'fr': 'Par Téléphone',
      'ar': 'بالهاتف',
      'en': 'By telephone',
    },
    'm0dlzs3r': {
      'fr': 'Votre Téléphone',
      'ar': 'هاتفك',
      'en': 'Your phone',
    },
    'jfb6a30q': {
      'fr': 'Créer',
      'ar': 'لنصنع او لنبتكر',
      'en': 'To create',
    },
  },
  // signupStep2
  {
    'oeoe3l6k': {
      'fr': 'Avatar',
      'ar': 'الصورة الرمزية',
      'en': 'Avatar',
    },
    'jpdcya6h': {
      'fr': 'Insérez votre photo',
      'ar': 'أدخل صورتك',
      'en': 'Insert your photo',
    },
    'wo9oaq4u': {
      'fr': 'Continuez',
      'ar': 'يكمل',
      'en': 'Continue',
    },
  },
  // signupStep3
  {
    'e4oxhcn1': {
      'fr': 'Base',
      'ar': 'قائم على',
      'en': 'Based',
    },
    '9vdcx824': {
      'fr': 'Nom Complet',
      'ar': 'الاسم الكامل',
      'en': 'Full Name',
    },
    'ht2oa9j3': {
      'fr': 'Fonction',
      'ar': 'دور',
      'en': 'Function',
    },
    '5j9y9uqq': {
      'fr': 'Présentez-vous !',
      'ar': 'قدم نفسك !',
      'en': 'Introduce yourself !',
    },
    'kh7tjb9c': {
      'fr': 'Continuez',
      'ar': 'يكمل',
      'en': 'Continue',
    },
  },
  // signupStep4
  {
    'nlcf25gn': {
      'fr': 'Sexe',
      'ar': 'الجنس',
      'en': 'Sex',
    },
    'tb24brgs': {
      'fr': 'Masculin',
      'ar': 'ذكر',
      'en': 'Male',
    },
    'ozp4v9m5': {
      'fr': 'Feminin',
      'ar': 'المؤنث',
      'en': 'Feminine',
    },
    'djgnn95q': {
      'fr': 'Date de naissance',
      'ar': 'تاريخ الميلاد',
      'en': 'Date of Birth',
    },
    'wj57ucb7': {
      'fr': 'Jour',
      'ar': 'يوم',
      'en': 'Day',
    },
    '61gljfgg': {
      'fr': 'Mois',
      'ar': 'شهر',
      'en': 'Month',
    },
    '63amt7r1': {
      'fr': 'Année',
      'ar': 'عام',
      'en': 'Year',
    },
    'vdfau4s7': {
      'fr': 'Votre Ville:',
      'ar': 'مدينتك:',
      'en': 'Your City:',
    },
    'rxo3jbg1': {
      'fr': 'Ville',
      'ar': 'مدينة',
      'en': 'City',
    },
    'somnr7cs': {
      'fr': 'Sélectionnez votre pays:',
      'ar': 'اختر بلدك:',
      'en': 'Choose your country:',
    },
    '9afmd91m': {
      'fr': 'Maroc',
      'ar': 'المملكة المغربية',
      'en': 'Morocco',
    },
    'eapr3xqf': {
      'fr': 'Algérie',
      'ar': 'الجزائر',
      'en': 'Algeria',
    },
    'pk65n8cj': {
      'fr': 'Tunisie',
      'ar': 'تونس',
      'en': 'Tunisia',
    },
    't9yzd88w': {
      'fr': 'Libye',
      'ar': 'ليبيا',
      'en': 'Libya',
    },
    'f8it7sfx': {
      'fr': 'Mauritanie',
      'ar': 'موريتانيا',
      'en': 'Mauritania',
    },
    'nedwt14c': {
      'fr': 'Egypte',
      'ar': 'مصر',
      'en': 'Egypt',
    },
    'u2wowc5b': {
      'fr': 'Saudi Arabia',
      'ar': 'المملكة العربية السعودية',
      'en': 'saudi arabia',
    },
    '9b4quj22': {
      'fr': 'UAE',
      'ar': 'الإمارات العربية المتحدة',
      'en': 'UAE',
    },
    'azj4d96u': {
      'fr': 'Oman',
      'ar': 'سلطنة عمان',
      'en': 'Oman',
    },
    'z57lorym': {
      'fr': 'Qatar',
      'ar': 'دولة قطر',
      'en': 'Qatar',
    },
    'kgyotstk': {
      'fr': 'Bahrain',
      'ar': 'البحرين',
      'en': 'Bahrain',
    },
    'uyecosi8': {
      'fr': 'Kuwait',
      'ar': 'الكويت',
      'en': 'Kuwait',
    },
    'jmebzwjb': {
      'fr': 'Soudan',
      'ar': 'السودان',
      'en': 'Sudan',
    },
    'd2hgu81u': {
      'fr': 'Syrie',
      'ar': 'سوريا',
      'en': 'Syria',
    },
    'a41foqe4': {
      'fr': 'Liban',
      'ar': 'لبنان',
      'en': 'Lebanon',
    },
    'bc1sw9k4': {
      'fr': 'Turquie',
      'ar': 'ديك رومى',
      'en': 'Turkey',
    },
    'a4tlfb4j': {
      'fr': 'Pays',
      'ar': 'دولة',
      'en': 'Country',
    },
    'hwte74bp': {
      'fr': 'Continuez',
      'ar': 'يكمل',
      'en': 'Continue',
    },
  },
  // signupStep5
  {
    'jqgzv7gq': {
      'fr': 'Vos Photos',
      'ar': 'صورتك',
      'en': 'Your pictures',
    },
    'fmsmx7ba': {
      'fr': 'veuillez télécharger au moins une de vos photos...',
      'ar': 'يرجى تحميل واحدة على الأقل من صورك ...',
      'en': 'please upload at least one of your photos...',
    },
    'c78disd1': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
  },
  // signupStep6
  {
    'c5ye6u7t': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'vksprlxx': {
      'fr': '0%',
      'ar': '0٪',
      'en': '0%',
    },
    'x8q1d0fx': {
      'fr':
          'Il est important pour moi de maintenir les valeurs\nou les croyances traditionnelles ',
      'ar': 'من المهم بالنسبة لي الحفاظ على القيم أو المعتقدات التقليدية',
      'en': 'It is important to me to maintain traditional values or beliefs',
    },
    'plyj4lq2': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
    },
    'wbf8z75e': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
    },
    'vcxsupx4': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
    },
    'rc0ktr4f': {
      'fr': 'Tout à fait \n',
      'ar': 'تماما',
      'en': 'Absolutely',
    },
    '7x6cdcsf': {
      'fr':
          'Il est important pour moi de prendre mes propres\ndécisions en ce qui concerne ma vie ',
      'ar': 'من المهم بالنسبة لي أن أتخذ قراراتي الخاصة فيما يتعلق بحياتي',
      'en': 'It is important for me to make my own decisions regarding my life',
    },
    '04w2ce3p': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
    },
    'pvxursmn': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
    },
    'ngh7531z': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
    },
    'jdbmphar': {
      'fr': 'Tout à fait \n',
      'ar': 'تماما',
      'en': 'Absolutely',
    },
    '4g9k36gl': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '0te595dk': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep7
  {
    'yj7oaw5w': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'gglth7yf': {
      'fr': '10%',
      'ar': '10٪',
      'en': '10%',
    },
    'ksllz08d': {
      'fr':
          'Il est important pour moi d’être la personne la plus\ninfluente dans un couple ',
      'ar': 'من المهم بالنسبة لي أن أكون الشخص الأكثر نفوذاً بين الزوجين',
      'en':
          'It is important for me to be the most influential person in a couple',
    },
    'kbr4i517': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
    },
    'z3u5kyvz': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
    },
    'kvvkqzcs': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
    },
    'wtsdzneb': {
      'fr': 'Tout à fait \n',
      'ar': 'تماما',
      'en': 'Absolutely',
    },
    't42rf8ef': {
      'fr':
          'Il est important pour moi de suivre les règles même\nquand personne ne surveille ',
      'ar': 'من المهم بالنسبة لي اتباع القواعد حتى عندما لا يراقبها أحد',
      'en':
          'It is important for me to follow the rules even when no one is watching',
    },
    'bk3iupzg': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
    },
    'd4foqjnl': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
    },
    'vv2kj4ta': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
    },
    'lsvv4p73': {
      'fr': 'Tout à fait \n',
      'ar': 'تماما',
      'en': 'Absolutely',
    },
    '6daytfl0': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'jykvnlpp': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep8
  {
    'mc942bqj': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'pe7k4a3w': {
      'fr': '20%',
      'ar': '20٪',
      'en': '20%',
    },
    'jz9ayuiz': {
      'fr': 'Le plus important dans une relation ?\n (3 choix)',
      'ar': 'أهم شيء في العلاقة؟ (3 اختيارات)',
      'en': 'The most important thing in a relationship? (3 choices)',
    },
    'uewjmka5': {
      'fr': 'La passion',
      'ar': 'الصبر',
      'en': 'Passion',
    },
    '48uoxjm9': {
      'fr': 'L\'amour',
      'ar': 'الحب',
      'en': 'love',
    },
    'h4lxd1oe': {
      'fr': 'La complicité',
      'ar': 'التواطؤ',
      'en': 'Complicity',
    },
    '6h8fr3jl': {
      'fr': 'La loyauté',
      'ar': 'وفاء',
      'en': 'Loyalty',
    },
    'ei7fal8z': {
      'fr': 'La fidélité',
      'ar': 'الوفاء',
      'en': 'Faithfulness',
    },
    'ekxocbzk': {
      'fr': 'La transparence',
      'ar': 'شفافية',
      'en': 'Transparency',
    },
    '41hacv6d': {
      'fr': 'l’authenticité ',
      'ar': 'أصالة',
      'en': 'authenticity',
    },
    'fqmnws25': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'yikvi26f': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep9
  {
    '4wkntniv': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'qedasp3n': {
      'fr': '30%',
      'ar': '30٪',
      'en': '30%',
    },
    '4zinrync': {
      'fr':
          'Qu’est-ce qui est important pour vous dans une relation amoureuse ? (minimum 5 choix)',
      'ar':
          'ما هو المهم بالنسبة لك في العلاقة الرومانسية؟ (5 اختيارات على الأقل)',
      'en':
          'What is important to you in a romantic relationship? (minimum 5 choices)',
    },
    'ane0kc7c': {
      'fr': 'Ses valeurs',
      'ar': 'قيمها',
      'en': 'Her values',
    },
    'tf1lja61': {
      'fr': 'Son énergie',
      'ar': 'طاقته',
      'en': 'His energy',
    },
    'zw15di46': {
      'fr': 'L’attachement',
      'ar': 'مرفق',
      'en': 'Attachment',
    },
    'la2d6xdw': {
      'fr': 'Les habitudes',
      'ar': 'العادات',
      'en': 'Habits',
    },
    'k2v86djq': {
      'fr': 'Le plaisir et la détente',
      'ar': 'المتعة والاسترخاء',
      'en': 'Pleasure and relaxation',
    },
    'cslhflul': {
      'fr': 'Etre à deux',
      'ar': 'كن اثنين',
      'en': 'be two',
    },
    'rns6d86d': {
      'fr': 'Ma confiance en elle (lui)',
      'ar': 'ثقتي بها',
      'en': 'My trust in her (him)',
    },
    'ppoaq5g0': {
      'fr': 'Son sex-appeal',
      'ar': 'جاذبيتها الجنسية',
      'en': 'Her sex appeal',
    },
    '1b3jsrqr': {
      'fr': 'Son amour pour les enfants',
      'ar': 'حبه للأطفال',
      'en': 'His love for children',
    },
    'xmtwodpr': {
      'fr': 'Le partage',
      'ar': 'مشاركة',
      'en': 'The sharing',
    },
    'lotlreau': {
      'fr': 'Ses convictions',
      'ar': 'قناعاته',
      'en': 'his convictions',
    },
    'kofa4d5x': {
      'fr': 'La passion',
      'ar': 'الصبر',
      'en': 'Passion',
    },
    'df1hj2s2': {
      'fr': 'Sa joie de vivre',
      'ar': 'فرحته في العيش',
      'en': 'His joy of living',
    },
    'nkyeva9d': {
      'fr': 'Son apparence physique ',
      'ar': 'مظهره الجسدي',
      'en': 'His physical appearance',
    },
    'hvwozygw': {
      'fr': 'Notre attirance réciproque ',
      'ar': 'جاذبيتنا المتبادلة',
      'en': 'Our mutual attraction',
    },
    'hkgwkzgl': {
      'fr': 'Nos similitudes ',
      'ar': 'أوجه التشابه بيننا',
      'en': 'Our similarities',
    },
    'ugei4ejz': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'hezcwizb': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep10
  {
    'ppu4s2x0': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    '7682nbj1': {
      'fr': '40%',
      'ar': '40٪',
      'en': '40%',
    },
    'dek18ama': {
      'fr': 'Vos Besoins',
      'ar': 'احتياجاتك',
      'en': 'Your needs',
    },
    'b88wrl3j': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très important)',
      'ar': 'من 1 إلى 5 (1 ليس مهمًا جدًا ، 10 مهم جدًا)',
      'en': 'From 1 to 5 (1 not very important, 10 very important)',
    },
    'ulzkksko': {
      'fr': 'Affection',
      'ar': 'عاطفة',
      'en': 'Affection',
    },
    'z18sn5vq': {
      'fr': 'Indépendance',
      'ar': 'استقلال',
      'en': 'Independence',
    },
    'yflj2fva': {
      'fr': 'Liberté',
      'ar': 'حرية',
      'en': 'Freedom',
    },
    'wouevk5m': {
      'fr': 'Reconnaissance',
      'ar': 'إعتراف',
      'en': 'Acknowledgement',
    },
    'ysmqc5y7': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très important)',
      'ar': 'من 1 إلى 5 (1 ليس مهمًا جدًا ، 10 مهم جدًا)',
      'en': 'From 1 to 5 (1 not very important, 10 very important)',
    },
    'g6vr4fu1': {
      'fr': 'Admiration ',
      'ar': 'الإعجاب',
      'en': 'Admiration',
    },
    'ljkxmklp': {
      'fr': 'Fonder une famille',
      'ar': 'تكوين أسرة',
      'en': 'start a family',
    },
    '5ehrybj4': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '8fppswdf': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep11
  {
    '268nm25r': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    '8tb2kgag': {
      'fr': '60%',
      'ar': '60٪',
      'en': '60%',
    },
    'rgdesdex': {
      'fr': 'Quel est votre niveau d’études ?',
      'ar': 'ما هو مستواك الدراسي ؟',
      'en': 'What is your level of study ?',
    },
    'p9swrnq5': {
      'fr': 'Sans diplôme',
      'ar': 'بدون دبلوم',
      'en': 'Without diploma',
    },
    'ruwhy5ui': {
      'fr': 'Collège',
      'ar': 'كلية',
      'en': 'College',
    },
    'z0kbrf7f': {
      'fr': 'BAC ou BAC PRO',
      'ar': 'BAC أو BAC PRO',
      'en': 'BAC or BAC PRO',
    },
    'lbmcfc27': {
      'fr': 'BAC +2 /BAC +3',
      'ar': 'BAC +2 / BAC +3',
      'en': 'BAC +2 /BAC +3',
    },
    '0dfcrqgn': {
      'fr': 'BAC +4 / BAC +5',
      'ar': 'BAC +4 / BAC +5',
      'en': 'BAC +4 / BAC +5',
    },
    '21btpdlo': {
      'fr': 'Doctorat',
      'ar': 'دكتوراه',
      'en': 'PhD',
    },
    'benq6kct': {
      'fr':
          'Quelle importance attachez-vous au niveau d’études de votre partenaire ?',
      'ar': 'ما الأهمية التي توليها لمستوى تعليم شريكك؟',
      'en':
          'What importance do you attach to the level of education of your partner?',
    },
    'whih40fe': {
      'fr': 'Aucune importance',
      'ar': 'لا أهمية',
      'en': 'Doesn&#39;t matter',
    },
    'm68w14bg': {
      'fr': 'Peu important',
      'ar': 'غير مهم',
      'en': 'Not important',
    },
    'zspmvdas': {
      'fr': 'Important',
      'ar': 'الأهمية',
      'en': 'Important',
    },
    'p0un418b': {
      'fr': 'Plutôt important\n',
      'ar': 'مهم جدا',
      'en': 'Quite important',
    },
    '4lsogzl3': {
      'fr': 'Vraiment important',
      'ar': 'مهم للغاية',
      'en': 'really important',
    },
    '2kw6o9vt': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'xejecw3g': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep12
  {
    'mwt2fa5y': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    '6gmg1s8i': {
      'fr': '70%',
      'ar': '70٪',
      'en': '70%',
    },
    'rcn30c2m': {
      'fr':
          'Imaginez que vos amis devaient vous décrire, quels seraient les adjectifs qui vous correspondraient ? ( choisir 9 adjectifs)',
      'ar':
          'تخيل أن على أصدقائك أن يصفوك ، ما هي الصفات التي تناسبك؟ (اختر 9 صفات)',
      'en':
          'Imagine that your friends had to describe you, what would be the adjectives that would correspond to you? (choose 9 adjectives)',
    },
    'dd8iw25j': {
      'fr': 'A l’écoute',
      'ar': 'في الاستماع',
      'en': 'listening',
    },
    'z29y6qpv': {
      'fr': 'Spontané(e)',
      'ar': 'من تلقاء نفسها',
      'en': 'Spontaneous',
    },
    'hjep3yy1': {
      'fr': 'Optimiste',
      'ar': 'مستبشر',
      'en': 'Optimistic',
    },
    '2rrxxm7f': {
      'fr': 'Lunatique',
      'ar': 'مرح',
      'en': 'whimsical',
    },
    'k40nxdzl': {
      'fr': 'Rêveur(se)',
      'ar': 'حالم',
      'en': 'Dreamer',
    },
    'j1qgal09': {
      'fr': 'Calme',
      'ar': 'هدأت',
      'en': 'Calmed down',
    },
    'lpnc7fgw': {
      'fr': 'Empatique',
      'ar': 'متعاطف',
      'en': 'Empathetic',
    },
    'za2qsxoy': {
      'fr': 'Fidèle ',
      'ar': 'مخلص',
      'en': 'Loyal',
    },
    '9ko3roze': {
      'fr': 'Logique',
      'ar': 'منطق',
      'en': 'Logic',
    },
    'fciqdeqt': {
      'fr': 'Joyeux(se)',
      'ar': 'سعيد',
      'en': 'Happy',
    },
    '1hmyzi7u': {
      'fr': 'Sensible',
      'ar': 'حساس',
      'en': 'Sensitive',
    },
    '2htoknx5': {
      'fr': 'Engagé(e)',
      'ar': 'ملتزم',
      'en': 'Committed',
    },
    'ut46h1fh': {
      'fr': 'Travailleur(se)',
      'ar': 'عامل',
      'en': 'Worker',
    },
    'ydnjmmj6': {
      'fr': 'Charmeur(se)',
      'ar': 'ساحر',
      'en': 'charmer',
    },
    'aoos0vk8': {
      'fr': 'Energique',
      'ar': 'نشيط',
      'en': 'Energetic',
    },
    'exg87cvv': {
      'fr': 'Rebel(le)',
      'ar': 'المتمردين)',
      'en': 'Rebel)',
    },
    '3iy8er3c': {
      'fr': 'Enthousiaste',
      'ar': 'متحمس',
      'en': 'Enthusiastic',
    },
    'cumx4qt2': {
      'fr': 'Consciencieux(se)',
      'ar': 'منجز وفقا لما يمليه الضمير',
      'en': 'conscientious',
    },
    '6coopsc0': {
      'fr': 'Chaleureux(se)',
      'ar': 'دافئ',
      'en': 'Warm',
    },
    'ar2ojjai': {
      'fr': 'Prend des risques',
      'ar': 'يخاطر',
      'en': 'take risks',
    },
    'meguzsqc': {
      'fr': 'Respectueux(se)',
      'ar': 'محترم',
      'en': 'Respectful',
    },
    'ousmsaif': {
      'fr': 'En bonne forme physique',
      'ar': 'في حالة بدنية جيدة',
      'en': 'In good physical shape',
    },
    'rqb98yzm': {
      'fr': 'Digne de confiance',
      'ar': 'جدير بالثقة',
      'en': 'Worth of trust',
    },
    'ive9w04u': {
      'fr': 'Compatissant(e)',
      'ar': 'عطوف',
      'en': 'Compassionate',
    },
    'd48ohd78': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'qh5slkof': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep13
  {
    'hob5p3op': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'wobh1re8': {
      'fr': '80%',
      'ar': '80٪',
      'en': '80%',
    },
    'sueikj41': {
      'fr': 'Je suis spontané(e).',
      'ar': 'أنا عفوي.',
      'en': 'I am spontaneous.',
    },
    'q5hazta3': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
    },
    '3jajp8fy': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
    },
    'bx6idgbl': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
    },
    'aceyrn2r': {
      'fr': 'Tout à fait',
      'ar': 'تماما',
      'en': 'Absolutely',
    },
    'aqx0bpe8': {
      'fr': 'Il est facile pour moi de discuter avec de nouvelles personnes.',
      'ar': 'من السهل بالنسبة لي الدردشة مع أشخاص جدد.',
      'en': 'It is easy for me to chat with new people.',
    },
    'urvjj1rs': {
      'fr': 'Pas du tout',
      'ar': 'مطلقا',
      'en': 'Not at all',
    },
    '9efjwy7x': {
      'fr': 'Pas vraiment',
      'ar': 'ليس حقيقيا',
      'en': 'Not really',
    },
    '68w5pgmv': {
      'fr': 'Vraiment',
      'ar': 'حقا',
      'en': 'Truly',
    },
    'x5ajn5fe': {
      'fr': 'Tout à fait',
      'ar': 'تماما',
      'en': 'Absolutely',
    },
    'hhhhcaip': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '1ppdc30w': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep14
  {
    'ryh79sof': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'vz0jw1ce': {
      'fr': '90%',
      'ar': '90٪',
      'en': '90%',
    },
    '98yt7fto': {
      'fr':
          'Quels seraient les 3 points qui pourraient vous rendre heureux(se) ?\nOuverte ',
      'ar': 'ما هي النقاط الثلاث التي يمكن أن تجعلك سعيدًا؟ افتتح',
      'en': 'What would be the 3 points that could make you happy? Opened',
    },
    'sds7x7o4': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'yowkqpii': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // signupStep15
  {
    'f7d52jsx': {
      'fr': 'Questionnaire',
      'ar': 'الدراسة الاستقصائية',
      'en': 'Survey',
    },
    'wap37wq3': {
      'fr': '100%',
      'ar': '100٪',
      'en': '100%',
    },
    'fvjwmkyq': {
      'fr': 'Vos centres d’intérêts ? \nVeuillez choisir au moins 3 élément.',
      'ar': 'مجالات اهتمامك؟ الرجاء اختيار 3 عناصر على الأقل.',
      'en': 'Your areas of interest? Please choose at least 3 items.',
    },
    'bcriaovm': {
      'fr': 'A l’écoute',
      'ar': 'في الاستماع',
      'en': 'listening',
    },
    '1b69xkeh': {
      'fr': 'Spontané(e)',
      'ar': 'من تلقاء نفسها',
      'en': 'Spontaneous',
    },
    'o8g72l2a': {
      'fr': 'Optimiste',
      'ar': 'مستبشر',
      'en': 'Optimistic',
    },
    '9mmobbwo': {
      'fr': 'Lunatique',
      'ar': 'مرح',
      'en': 'whimsical',
    },
    '6zuig7ie': {
      'fr': 'Rêveur(se)',
      'ar': 'حالم',
      'en': 'Dreamer',
    },
    'v5qn3fub': {
      'fr': 'Calme',
      'ar': 'هدأت',
      'en': 'Calmed down',
    },
    'kvcpiopt': {
      'fr': 'Empatique',
      'ar': 'متعاطف',
      'en': 'Empathetic',
    },
    'mpczer9p': {
      'fr': 'Fidèle ',
      'ar': 'مخلص',
      'en': 'Loyal',
    },
    '9tg8y4mt': {
      'fr': 'Logique',
      'ar': 'منطق',
      'en': 'Logic',
    },
    'e9b53ogp': {
      'fr': 'Joyeux(se)',
      'ar': 'سعيد',
      'en': 'Happy',
    },
    'fq14vgiq': {
      'fr': 'Sensible',
      'ar': 'حساس',
      'en': 'Sensitive',
    },
    'nfxkmeyr': {
      'fr': 'Engagé(e)',
      'ar': 'ملتزم',
      'en': 'Committed',
    },
    'ufngl24j': {
      'fr': 'Travailleur(se)',
      'ar': 'عامل',
      'en': 'Worker',
    },
    'nmuj304q': {
      'fr': 'Charmeur(se)',
      'ar': 'ساحر',
      'en': 'charmer',
    },
    '2m9ua26w': {
      'fr': 'Energique',
      'ar': 'نشيط',
      'en': 'Energetic',
    },
    'g4j102fc': {
      'fr': 'Rebel(le)',
      'ar': 'المتمردين)',
      'en': 'Rebel)',
    },
    '6bxnkp8e': {
      'fr': 'Enthousiaste',
      'ar': 'متحمس',
      'en': 'Enthusiastic',
    },
    'ow6h3s22': {
      'fr': 'Consciencieux(se)',
      'ar': 'منجز وفقا لما يمليه الضمير',
      'en': 'conscientious',
    },
    'nz2aay4c': {
      'fr': 'Chaleureux(se)',
      'ar': 'دافئ',
      'en': 'Warm',
    },
    '7ydot8ax': {
      'fr': 'Prend des risques',
      'ar': 'يخاطر',
      'en': 'take risks',
    },
    '9j9gwgp1': {
      'fr': 'Respectueux(se)',
      'ar': 'محترم',
      'en': 'Respectful',
    },
    'vrhk6bbq': {
      'fr': 'En bonne forme physique',
      'ar': 'في حالة بدنية جيدة',
      'en': 'In good physical shape',
    },
    'ygouqb4k': {
      'fr': 'Digne de confiance',
      'ar': 'جدير بالثقة',
      'en': 'Worth of trust',
    },
    '8iv2y19p': {
      'fr': 'Compatissant(e)',
      'ar': 'عطوف',
      'en': 'Compassionate',
    },
    'e4kbt0wy': {
      'fr': 'Continuez\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
  },
  // HomePage
  {
    'i35bbnpu': {
      'fr': 'Découvrir',
      'ar': 'إكتشف',
      'en': 'Discover',
    },
  },
  // matches
  {
    'ixqmo3vn': {
      'fr': 'Rencontres',
      'ar': 'التقى',
      'en': 'Met',
    },
  },
  // isMatch
  {
    'uz3611e0': {
      'fr': 'Rencontres',
      'ar': 'التقى',
      'en': 'Met',
    },
    'fsc9pzu7': {
      'fr': 'C\'est un match, ',
      'ar': 'انها لعبة،',
      'en': 'It&#39;s a game,',
    },
    'jyzfvoju': {
      'fr': 'Démarrer une conversation maintenant',
      'ar': 'ابدأ محادثة الآن',
      'en': 'Start a conversation now',
    },
    'fh5z1igs': {
      'fr': 'ou :',
      'ar': 'أين :',
      'en': 'Where :',
    },
    'uoiyf18y': {
      'fr': 'Ca suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That&#39;s enough for me!',
    },
  },
  // Profile
  {
    '13jgokol': {
      'fr': 'Profile',
      'ar': 'الملف الشخصي',
      'en': 'Profile',
    },
    '0olwx22j': {
      'fr': 'À propos de moi',
      'ar': 'عني',
      'en': 'About me',
    },
    'mmsr5n79': {
      'fr': 'Intérêts',
      'ar': 'المصالح',
      'en': 'Interests',
    },
    '25o6rp5o': {
      'fr': 'Photos',
      'ar': 'الصور',
      'en': 'Pictures',
    },
  },
  // editProfile
  {
    'l3uatqmy': {
      'fr': 'Éditez votre profile',
      'ar': 'عدل ملفك الشخصي',
      'en': 'Edit your profile',
    },
    '2efprkqz': {
      'fr': 'Base',
      'ar': 'قائم على',
      'en': 'Based',
    },
    't9i89j5t': {
      'fr': 'Nom Complet',
      'ar': 'الاسم الكامل',
      'en': 'Full Name',
    },
    'boqifj1x': {
      'fr': 'Fonction',
      'ar': 'دور',
      'en': 'Function',
    },
    'wd9vpqh6': {
      'fr': 'Bio',
      'ar': 'عضوي',
      'en': 'Organic',
    },
    'foi3lff4': {
      'fr': 'Sexe',
      'ar': 'الجنس',
      'en': 'Sex',
    },
    'l6m6ng3p': {
      'fr': 'Masculin',
      'ar': 'ذكر',
      'en': 'Male',
    },
    'baim5lij': {
      'fr': 'Feminin',
      'ar': 'المؤنث',
      'en': 'Feminine',
    },
    '5bponwwp': {
      'fr': 'Date de naissance',
      'ar': 'تاريخ الميلاد',
      'en': 'Date of Birth',
    },
    'jgqgzegq': {
      'fr': 'Jour',
      'ar': 'يوم',
      'en': 'Day',
    },
    'p5jfzspu': {
      'fr': 'Mois',
      'ar': 'شهر',
      'en': 'Month',
    },
    'frvjzbxi': {
      'fr': 'Année',
      'ar': 'عام',
      'en': 'Year',
    },
    'ca4lzles': {
      'fr': 'Votre Ville:',
      'ar': 'مدينتك:',
      'en': 'Your City:',
    },
    'h0ueu5id': {
      'fr': 'Ville',
      'ar': 'مدينة',
      'en': 'City',
    },
    '0jbfg6p4': {
      'fr': 'Sélectionnez votre pays:',
      'ar': 'اختر بلدك:',
      'en': 'Choose your country:',
    },
    'wod7xith': {
      'fr': 'Maroc',
      'ar': 'المملكة المغربية',
      'en': 'Morocco',
    },
    '11d1afgd': {
      'fr': 'Algérie',
      'ar': 'الجزائر',
      'en': 'Algeria',
    },
    '1cu9v3bt': {
      'fr': 'Tunisie',
      'ar': 'تونس',
      'en': 'Tunisia',
    },
    '9igd712z': {
      'fr': 'Libye',
      'ar': 'ليبيا',
      'en': 'Libya',
    },
    'a4vsnbxb': {
      'fr': 'Mauritanie',
      'ar': 'موريتانيا',
      'en': 'Mauritania',
    },
    'h3hponew': {
      'fr': 'Egypte',
      'ar': 'مصر',
      'en': 'Egypt',
    },
    'aj862mpk': {
      'fr': 'Saudi Arabia',
      'ar': 'المملكة العربية السعودية',
      'en': 'saudi arabia',
    },
    'kc0kivbo': {
      'fr': 'UAE',
      'ar': 'الإمارات العربية المتحدة',
      'en': 'UAE',
    },
    'ep6joodu': {
      'fr': 'Oman',
      'ar': 'سلطنة عمان',
      'en': 'Oman',
    },
    '6vdqvewf': {
      'fr': 'Qatar',
      'ar': 'دولة قطر',
      'en': 'Qatar',
    },
    'oes0h3he': {
      'fr': 'Bahrain',
      'ar': 'البحرين',
      'en': 'Bahrain',
    },
    'uwb8cyq1': {
      'fr': 'Kuwait',
      'ar': 'الكويت',
      'en': 'Kuwait',
    },
    '8dzu8lug': {
      'fr': 'Soudan',
      'ar': 'السودان',
      'en': 'Sudan',
    },
    'uzivxrgd': {
      'fr': 'Syrie',
      'ar': 'سوريا',
      'en': 'Syria',
    },
    'cnljsu8m': {
      'fr': 'Liban',
      'ar': 'لبنان',
      'en': 'Lebanon',
    },
    'd9zueiyc': {
      'fr': 'Turquie',
      'ar': 'ديك رومى',
      'en': 'Turkey',
    },
    '51j0jlpg': {
      'fr': 'Photos',
      'ar': 'الصور',
      'en': 'Pictures',
    },
    'nncrdp48': {
      'fr': 'Enreegistrer',
      'ar': 'يسجل',
      'en': 'Register',
    },
  },
  // notifications
  {
    'asafhaon': {
      'fr': 'Notifications',
      'ar': 'إشعارات',
      'en': 'Notifications',
    },
    'hmqazb5b': {
      'fr': 'Issam a vu votre profile !',
      'ar': 'شاهد عصام ملفك الشخصي!',
      'en': 'Issam saw your profile!',
    },
    '8ft00scz': {
      'fr': 'Dec. 19, 1:30pm - 2:00pm',
      'ar': '19 ديسمبر ، 1:30 مساءً - 2:00 مساءً',
      'en': 'Dec. 19, 1:30pm - 2:00pm',
    },
  },
  // Settings
  {
    'xh8l8uom': {
      'fr': 'Paramètres',
      'ar': 'الإعدادات',
      'en': 'Settings',
    },
    'mvdu5xao': {
      'fr': 'Je recherche:',
      'ar': 'أبحث عن:',
      'en': 'I research:',
    },
    'lmv5diaj': {
      'fr': 'Masculin',
      'ar': 'ذكر',
      'en': 'Male',
    },
    'aj7epfo8': {
      'fr': 'Feminin',
      'ar': 'المؤنث',
      'en': 'Feminine',
    },
    'zhp5oi6b': {
      'fr': 'Âge Preference',
      'ar': 'تفضيل العمر',
      'en': 'Age Preference',
    },
    'dbjee32m': {
      'fr': 'Location',
      'ar': 'تأجير',
      'en': 'Rental',
    },
    'yyfgvofr': {
      'fr': 'Régler',
      'ar': 'يعدل',
      'en': 'Adjust',
    },
    'dhzpkhfp': {
      'fr': 'Notifications',
      'ar': 'إشعارات',
      'en': 'Notifications',
    },
    '7ns2usao': {
      'fr': 'Nouveaux matchs',
      'ar': 'مباريات جديدة',
      'en': 'New matches',
    },
    'k8jdlibi': {
      'fr': 'Nouveaux J\'aime',
      'ar': 'إعجابات جديدة',
      'en': 'New Likes',
    },
    'b08p41hz': {
      'fr': 'Nouveaux messages',
      'ar': 'مشاركات جديدة',
      'en': 'New posts',
    },
  },
  // chat
  {
    '3oxma931': {
      'fr': 'Group Chat',
      'ar': 'مجموعة محادثة',
      'en': 'Group Chat',
    },
  },
  // allChatPage
  {
    'aoawbg0t': {
      'fr': 'Chats',
      'ar': 'القطط',
      'en': 'Cats',
    },
  },
  // PhoneVerification
  {
    '4hck5ne8': {
      'fr': 'Code de vérification',
      'ar': 'رمز التحقق',
      'en': 'Verification code',
    },
    'sr70wzuc': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
    },
    'zpaazf5z': {
      'fr': 'Renvoyez',
      'ar': 'إعادة إرسال',
      'en': 'Resend',
    },
    'qadgfgve': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'To validate',
    },
  },
  // EmailVerification
  {
    '8ns4unkm': {
      'fr': 'Vérifiez votre boîte de réception.',
      'ar': 'تحقق من بريدك الوارد.',
      'en': 'Check your inbox.',
    },
    'f4eu791m': {
      'fr': 'Confirmez votre email',
      'ar': 'تأكيد عنوان البريد الإلكتروني',
      'en': 'Confirm Email',
    },
    'ryc80yfx': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
    },
    'khkfrltb': {
      'fr': 'Renvoyez !',
      'ar': 'إعادة إرسال!',
      'en': 'Resend!',
    },
    'p6n1s25t': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'To validate',
    },
  },
  // background
  {
    'b5wvpplb': {
      'fr': '',
      'ar': '',
      'en': '',
    },
  },
  // EmptyChats
  {
    'fh8476sw': {
      'fr': 'Il n\'y a pas des messages !',
      'ar': 'لا توجد رسائل!',
      'en': 'There are no messages!',
    },
  },
  // menu
  {
    '88v6ydaw': {
      'fr': 'Modifier le profile',
      'ar': '',
      'en': '',
    },
    '3pdmdf00': {
      'fr': 'Modifier les paramètres',
      'ar': '',
      'en': '',
    },
    'qevy33q4': {
      'fr': 'Se déconnecter',
      'ar': '',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'z6sa2e22': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'bwt9iwlk': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '7api57zb': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '1vgkh9hn': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'p7g1hpbb': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'ztpxnq81': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'yv11bv53': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'xndhofbj': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'qwjoggxn': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'vrwld95g': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '2x0ests4': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'ejhzf9lt': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'pjtu4eg2': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '9mjte96b': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'gksbyv5u': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '5roz5c8o': {
      'fr': '',
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
