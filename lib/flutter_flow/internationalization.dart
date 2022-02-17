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
    'ehobpuwl': {
      'fr': 'Email',
      'ar': 'بريد الالكتروني',
      'en': 'E-mail',
    },
    'ppwkq56k': {
      'fr': 'Mot de passe',
      'ar': 'كلمة السر',
      'en': 'Password',
    },
    'nxdkxn3l': {
      'fr': 'Se connecter',
      'ar': 'تسجيل الدخول',
      'en': 'Login',
    },
    'li21rn5t': {
      'fr': 'Mot de passe oublié ?',
      'ar': 'نسيت رقمك السري ؟',
      'en': 'Forgot your password ?',
    },
    'n3vpdygg': {
      'fr': 'Vous n\'avez pas de compte?',
      'ar': 'لا يوجد لديك حساب؟',
      'en': 'You do not have an account?',
    },
    'tjs7xgjs': {
      'fr': 'Inscrivez-vous',
      'ar': 'تسجل',
      'en': 'Register',
    },
    'ed8hdv6r': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // PhoneSignIn
  {
    'kalzg6nj': {
      'fr': 'Connectez-vous par téléphone',
      'ar': 'تواصل عن طريق الهاتف',
      'en': 'Connect by Phone Number',
    },
    'fsn22r60': {
      'fr': 'Numéro de téléphone',
      'ar': 'رقم التليفون',
      'en': 'Phone Number',
    },
    'rwb90mku': {
      'fr': 'Home',
      'ar': '',
      'en': '',
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
          'KWL is the first application\ndesigned by a team of \npsychology experts and \ncouple relationship \nspecialists.',
    },
    's11ixzl1': {
      'fr': 'Trouvez votre \npartenaire ideal\navec nous,',
      'ar': 'ابحث عن شريكك المثالي معنا ،',
      'en': 'Find your ideal \npartner with us,',
    },
    'u3k7yufq': {
      'fr': 'Love for Real !',
      'ar': 'الحب الحقيقي!',
      'en': 'Love for Real!',
    },
    'p911bmit': {
      'fr': 'Commencer',
      'ar': 'بداية',
      'en': 'Start',
    },
    'lmckg3ku': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // signUp
  {
    '8k6ie3sk': {
      'fr': 'Créez votre compte',
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
      'en': 'Create',
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
      'en': 'Create',
    },
    'uxtc8q7f': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // photoProfile
  {
    'oeoe3l6k': {
      'fr': 'Photo de profil',
      'ar': 'الصورة الرمزية',
      'en': 'Avatar',
    },
    'jpdcya6h': {
      'fr': 'Insérez votre photo',
      'ar': 'أدخل صورتك',
      'en': 'Insert your photo',
    },
    'wo9oaq4u': {
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'evcfpeyr': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // baseInfo1
  {
    'e4oxhcn1': {
      'fr': 'Base',
      'ar': 'معلومات أساسية',
      'en': 'Base',
    },
    '9vdcx824': {
      'fr': 'Nom Complet',
      'ar': 'الاسم الكامل',
      'en': 'Full Name',
    },
    'ht2oa9j3': {
      'fr': 'Fonction',
      'ar': 'المهنة',
      'en': 'Job',
    },
    '5j9y9uqq': {
      'fr': 'Présentez-vous !',
      'ar': 'قدم نفسك !',
      'en': 'Introduce yourself !',
    },
    'kh7tjb9c': {
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'eb73lqdc': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // baseInfo2
  {
    'nlcf25gn': {
      'fr': 'Sexe:',
      'ar': 'الجنس',
      'en': 'Sex',
    },
    'tb24brgs': {
      'fr': 'Homme',
      'ar': 'ذكر',
      'en': 'Male',
    },
    'ozp4v9m5': {
      'fr': 'Femme',
      'ar': 'المؤنث',
      'en': 'Feminine',
    },
    'djgnn95q': {
      'fr': 'Date de naissance:',
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
      'fr': 'Sélectionnez votre ville:',
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
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'byiry6u3': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // photos
  {
    'jqgzv7gq': {
      'fr': 'Vos Photos',
      'ar': 'صورتك',
      'en': 'Your pictures',
    },
    'fmsmx7ba': {
      'fr': 'Veuillez télécharger au moins une de vos photos...',
      'ar': 'يرجى تحميل واحدة على الأقل من صورك ...',
      'en': 'please upload at least one of your photos...',
    },
    'c78disd1': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '2xbe9ynp': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs1
  {
    'c5ye6u7t': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    'vksprlxx': {
      'fr': '0%',
      'ar': '0٪',
      'en': '0%',
    },
    'x8q1d0fx': {
      'fr':
          'Il est important pour moi de maintenir les valeurs ou les croyances traditionnelles ',
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
          'Il est important pour moi de prendre mes propres décisions en ce qui concerne ma vie ',
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
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'e5zj2gls': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs2
  {
    'yj7oaw5w': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    'gglth7yf': {
      'fr': '10%',
      'ar': '10٪',
      'en': '10%',
    },
    'ksllz08d': {
      'fr':
          'Il est important pour moi d’être la personne la plus influente dans un couple ',
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
          'Il est important pour moi de suivre les règles même quand personne ne surveille ',
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
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '71kc94p9': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs3
  {
    'mc942bqj': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
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
      'fr': 'L’authenticité ',
      'ar': 'أصالة',
      'en': 'authenticity',
    },
    'fqmnws25': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'u0ruarh6': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs4
  {
    '4wkntniv': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
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
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'aaf74r8g': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs5
  {
    'ppu4s2x0': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    '7682nbj1': {
      'fr': '40%',
      'ar': '40٪',
      'en': '40%',
    },
    'il0hvrhc': {
      'fr': 'Vos besoins',
      'ar': 'احتياجاتك',
      'en': 'Your needs',
    },
    'b88wrl3j': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très \nimportant)',
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
      'fr': 'De 1 à 5 (1 pas très important, 10 très \nimportant)',
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
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'o978kh7p': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs6
  {
    '268nm25r': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
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
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '4nhyhv0h': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs7
  {
    'mwt2fa5y': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    '6gmg1s8i': {
      'fr': '70%',
      'ar': '70٪',
      'en': '70%',
    },
    'rcn30c2m': {
      'fr':
          'Imaginez que vos amis devaient vous décrire, quels seraient les adjectifs qui vous correspondraient ?\n(Choisir 9 adjectifs)',
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
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'o5zfgh4f': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs8
  {
    'hob5p3op': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    'wobh1re8': {
      'fr': '80%',
      'ar': '80٪',
      'en': '80%',
    },
    'sueikj41': {
      'fr': 'Je suis spontané(e)',
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
      'fr': 'Il est facile pour moi de discuter avec de nouvelles personnes',
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
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    '1ppdc30w': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That\'s enough for me!',
    },
    'f3dhdl1s': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs9
  {
    'ryh79sof': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    'vz0jw1ce': {
      'fr': '90%',
      'ar': '90٪',
      'en': '90%',
    },
    '98yt7fto': {
      'fr':
          'Quels seraient les 3 points qui pourraient vous rendre heureux(se) ?',
      'ar': 'ما هي النقاط الثلاث التي يمكن أن تجعلك سعيدًا؟ افتتح',
      'en': 'What would be the 3 points that could make you happy? Opened',
    },
    'sds7x7o4': {
      'fr': 'Continuer\n',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'yowkqpii': {
      'fr': 'Ça suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That\'s enough for me!',
    },
    '1k6hs9mf': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Qs10
  {
    'f7d52jsx': {
      'fr': 'Questionnaire',
      'ar': 'إستطلاع',
      'en': 'Survey',
    },
    'wap37wq3': {
      'fr': '100%',
      'ar': '100٪',
      'en': '100%',
    },
    'fvjwmkyq': {
      'fr': 'Vos centres d’intérêts ? \nVeuillez choisir au moins 3 éléments',
      'ar': 'مجالات اهتمامك؟ الرجاء اختيار 3 عناصر على الأقل.',
      'en': 'Your areas of interest? Please choose at least 3 items.',
    },
    'bcriaovm': {
      'fr': 'Les concerts',
      'ar': 'الحفلات',
      'en': 'Concerts',
    },
    '1b69xkeh': {
      'fr': 'Sports équestres',
      'ar': 'رياضة الفروسية',
      'en': 'Equestrian sports',
    },
    '1lati54c': {
      'fr': '',
      'ar': 'رياضة الفروسية',
      'en': 'Equestrian sports',
    },
    'o8g72l2a': {
      'fr': 'Gastronomie et restaurants',
      'ar': 'فن الطهو والمطاعم',
      'en': 'Gastronomy and restaurants',
    },
    '9mmobbwo': {
      'fr': 'Théâtre /Danse/Opéra/Ballet',
      'ar': 'مسرح / رقص / أوبرا / باليه',
      'en': 'Theatre/Dance/Opera/Ballet',
    },
    '6zuig7ie': {
      'fr': 'Nature/Jardinage',
      'ar': 'الطبيعة / البستنة',
      'en': 'Nature/Gardening',
    },
    'v5qn3fub': {
      'fr': 'Sorties/Soirées',
      'ar': 'نزهات / أمسيات',
      'en': 'Outings/Evenings',
    },
    'kvcpiopt': {
      'fr': 'Diner au restaurant',
      'ar': 'عشاء في مطعم',
      'en': 'Dinner at the restaurant',
    },
    'mpczer9p': {
      'fr': 'Sports d’hiver',
      'ar': 'الرياضات الشتوية',
      'en': 'Winter sports',
    },
    '9tg8y4mt': {
      'fr': 'L’art',
      'ar': 'فن',
      'en': 'Art',
    },
    'e9b53ogp': {
      'fr': 'Science / technologie',
      'ar': 'علوم تكنولوجيا',
      'en': 'Science Technology',
    },
    'fq14vgiq': {
      'fr': 'Photographie',
      'ar': 'التصوير',
      'en': 'Photography',
    },
    'nfxkmeyr': {
      'fr': 'Voile/Planche à voile/Sports nautiques',
      'ar': 'الإبحار / ركوب الأمواج / الرياضات المائية',
      'en': 'Sailing/Windsurfing/Water sports',
    },
    'ufngl24j': {
      'fr': 'Littérature/Lecture',
      'ar': 'أدب / قراءة',
      'en': 'Literature/Reading',
    },
    'nmuj304q': {
      'fr': 'La Chasse',
      'ar': 'الصيد',
      'en': 'The hunt',
    },
    '2m9ua26w': {
      'fr': 'Randonnée/Escalade',
      'ar': 'المشي لمسافات طويلة / التسلق',
      'en': 'Hiking/Climbing',
    },
    'g4j102fc': {
      'fr': 'Sports collectifs  (Football, Rugby, Handball…)',
      'ar': 'الرياضات الجماعية (كرة القدم ، الرجبي ، كرة اليد ...)',
      'en': 'Team sports (Football, Rugby, Handball…)',
    },
    '6bxnkp8e': {
      'fr': 'La famille',
      'ar': 'العائلة',
      'en': 'Family',
    },
    'ow6h3s22': {
      'fr': 'Parler avec des amis',
      'ar': 'تحدث مع الأصدقاء',
      'en': 'Talk with friends',
    },
    'nz2aay4c': {
      'fr': 'Films/Cinéma',
      'ar': 'أفلام / سينما',
      'en': 'Movies/Cinema',
    },
    '7ydot8ax': {
      'fr': 'Les voyages',
      'ar': 'الرحلات',
      'en': 'The trips',
    },
    'zyg16ld4': {
      'fr': 'La randonnée',
      'ar': 'التنزه',
      'en': 'Hiking',
    },
    'e4kbt0wy': {
      'fr': 'Continuer',
      'ar': 'يكمل',
      'en': 'Continue',
    },
    'vqzb9gso': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // homePage
  {
    'sczr27se': {
      'fr': 'Découvrir',
      'ar': 'الاكتشاف',
      'en': 'To discover',
    },
    'zsigavqq': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // matches
  {
    'ixqmo3vn': {
      'fr': 'Rencontres',
      'ar': 'مواعدات',
      'en': 'Matchs',
    },
    '5cfo1suo': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // isMatch
  {
    'uz3611e0': {
      'fr': 'Rencontres',
      'ar': 'مواعدات',
      'en': 'Matchs',
    },
    'fsc9pzu7': {
      'fr': 'C\'est un match !',
      'ar': 'إنها مواعدة !',
      'en': 'It\'s a Match',
    },
    'mpxwk6ui': {
      'fr': 'Démarrez une conversation maintenant ',
      'ar': 'ابدأ محادثة الآن',
      'en': 'Start a conversation now',
    },
    'fh5z1igs': {
      'fr': 'Ou',
      'ar': 'أو',
      'en': 'Or',
    },
    'uoiyf18y': {
      'fr': 'Ca suffit pour moi !',
      'ar': 'هذا يكفي بالنسبة لي!',
      'en': 'That\'s enough for me!',
    },
    'zah6clms': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // Profile
  {
    '13jgokol': {
      'fr': 'Profil',
      'ar': 'ملفي الشخصي',
      'en': 'Profile',
    },
    '0olwx22j': {
      'fr': 'À propos de moi',
      'ar': 'عني',
      'en': 'About me',
    },
    'mmsr5n79': {
      'fr': 'Intérêts',
      'ar': 'الإهتمامات',
      'en': 'Interests',
    },
    '25o6rp5o': {
      'fr': 'Photos',
      'ar': 'الصور',
      'en': 'Pictures',
    },
    'qryw0bxh': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // editProfile
  {
    'l3uatqmy': {
      'fr': 'Éditez votre profil',
      'ar': 'عدل ملفك الشخصي',
      'en': 'Edit your profile',
    },
    '2efprkqz': {
      'fr': 'Mon Profil:',
      'ar': 'ملفي الشخصي',
      'en': 'My profile',
    },
    't9i89j5t': {
      'fr': 'Nom Complet',
      'ar': 'الاسم الكامل',
      'en': 'Full Name',
    },
    'boqifj1x': {
      'fr': 'Métier',
      'ar': 'مهنة',
      'en': 'Job',
    },
    'wd9vpqh6': {
      'fr': 'Biographie',
      'ar': 'سيرة شخصية',
      'en': 'Biography',
    },
    'foi3lff4': {
      'fr': 'Sexe:',
      'ar': 'الجنس',
      'en': 'Sex',
    },
    'l6m6ng3p': {
      'fr': 'Homme',
      'ar': 'ذكر',
      'en': 'Male',
    },
    'baim5lij': {
      'fr': 'Femme',
      'ar': 'امرأة',
      'en': 'Women',
    },
    '5bponwwp': {
      'fr': 'Date de naissance:',
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
      'fr': 'Sélectionnez  votre ville:',
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
      'fr': 'Photos:',
      'ar': 'الصور',
      'en': 'Pictures',
    },
    'nncrdp48': {
      'fr': 'Enreegistrer',
      'ar': 'يسجل',
      'en': 'Register',
    },
    '9s60moyv': {
      'fr': 'Home',
      'ar': '',
      'en': '',
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
      'fr': 'Issam a vu votre profil !',
      'ar': 'شاهد عصام ملفك الشخصي!',
      'en': 'Issam saw your profile!',
    },
    '8ft00scz': {
      'fr': 'Dec. 19, 1:30pm - 2:00pm',
      'ar': '19 ديسمبر ، 1:30 مساءً - 2:00 مساءً',
      'en': 'Dec. 19, 1:30pm - 2:00pm',
    },
    'xqtso8ef': {
      'fr': 'Home',
      'ar': '',
      'en': '',
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
      'fr': 'Je recherche un(e):',
      'ar': 'أبحث عن:',
      'en': 'I research:',
    },
    'lmv5diaj': {
      'fr': 'Homme',
      'ar': 'ذكر',
      'en': 'Male',
    },
    'aj7epfo8': {
      'fr': 'Femme',
      'ar': 'المؤنث',
      'en': 'Feminine',
    },
    'zhp5oi6b': {
      'fr': 'Tranche d’âge',
      'ar': 'الفئة العمرية',
      'en': 'Age range',
    },
    'dbjee32m': {
      'fr': 'Localisation',
      'ar': 'موقع',
      'en': 'Location',
    },
    'yyfgvofr': {
      'fr': 'Recevoir les notifications suivantes:',
      'ar': 'يعدل',
      'en': 'Adjust',
    },
    '7ns2usao': {
      'fr': 'Nouveaux Matchs',
      'ar': 'مواعدات جديدة',
      'en': 'New Matches',
    },
    'k8jdlibi': {
      'fr': 'Nouveaux J\'aime',
      'ar': 'إعجابات جديدة',
      'en': 'New Likes',
    },
    'b08p41hz': {
      'fr': 'Nouveaux Messages',
      'ar': 'محادثات جديدة',
      'en': 'New Messages',
    },
    '6kmw5qvn': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // chat
  {
    'ofufx9x2': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // allChatPage
  {
    'aoawbg0t': {
      'fr': 'Chats',
      'ar': 'الدردشات',
      'en': 'Chats',
    },
    'vyzjlaau': {
      'fr': 'Chats',
      'ar': '',
      'en': '',
    },
  },
  // PhoneVerification
  {
    '862lr1au': {
      'fr': 'Code de vérification',
      'ar': 'رمز التحقق',
      'en': 'Verification code',
    },
    '16dato64': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
    },
    '0bhf2xu5': {
      'fr': 'Renvoyer !',
      'ar': 'إعادة إرسال',
      'en': 'Resend',
    },
    'yl44qel1': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'To validate',
    },
    'xcukd75w': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // EmailVerification
  {
    'ruv8hhve': {
      'fr': 'Vérifiez votre boîte de réception',
      'ar': 'تحقق من بريدك الوارد.',
      'en': 'Check your inbox.',
    },
    'gz3kanoo': {
      'fr': 'pour confirmez votre email',
      'ar': 'تأكيد عنوان البريد الإلكتروني',
      'en': 'Confirm Email',
    },
    'j0bvpgiu': {
      'fr': '_ _ _ _',
      'ar': '_ _ _ _',
      'en': '_ _ _ _',
    },
    'ibtmur5n': {
      'fr': 'Renvoyer !',
      'ar': 'إعادة إرسال!',
      'en': 'Resend!',
    },
    'nx9v570x': {
      'fr': 'Valider',
      'ar': 'للتحقق من صحة',
      'en': 'To validate',
    },
    'i3g5wa3y': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // PasswordReset
  {
    'nnk5zqv0': {
      'fr': 'Réinitialisez votre mot de passe',
      'ar': 'اعد ضبط كلمه السر',
      'en': 'Reset your password',
    },
    'mjgdwdyh': {
      'fr': 'Nouveau mot de passe',
      'ar': 'كلمة السر الجديدة',
      'en': 'New Password',
    },
    'l7ftc8ur': {
      'fr': 'Confirmer le mot de passe',
      'ar': 'تأكيد كلمة المرور',
      'en': 'Confirm Password',
    },
    '9rsctwyn': {
      'fr': 'Enregistrer',
      'ar': 'سجل',
      'en': 'Record',
    },
    '254chuf0': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // background
  {
    'b5wvpplb': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'rj8jbrgo': {
      'fr': 'Home',
      'ar': '',
      'en': '',
    },
  },
  // EmptyChats
  {
    'fh8476sw': {
      'fr': 'Vous n’avez pas de messages !',
      'ar': 'ليس لديك رسائل!',
      'en': 'You have no messages!',
    },
  },
  // menu
  {
    'q4ae3no9': {
      'fr': 'Modifier le profil',
      'ar': 'تعديل الملف الشخصي',
      'en': 'modify the profile',
    },
    'qx0b29dx': {
      'fr': 'Modifier les paramètres',
      'ar': 'قم بتعديل المعلمات',
      'en': 'Modify the settings',
    },
    'gid5fjk8': {
      'fr': 'Se déconnecter',
      'ar': 'تسجيل الخروج',
      'en': 'Sign out',
    },
  },
  // noMatch
  {
    '01nbmcsk': {
      'fr': 'Vous n\'avez de Matchs !',
      'ar': 'لا توجد مواعدات !',
      'en': 'There are no Matches!',
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
    },
    'bwt9iwlk': {
      'fr':
          'Afin de télécharger des médias, cette application nécessite l\'autorisation d\'accéder à la photothèque.',
      'ar': 'لتحميل الوسائط ، يتطلب هذا التطبيق إذنًا للوصول إلى مكتبة الصور.',
      'en':
          'In order to upload media, this app requires permission to access the photo library.',
    },
    '7api57zb': {
      'fr':
          'Erreur : [Il y a un problème d\'authentification !Nous allons résoudre ce problème]',
      'ar': 'خطأ: ]هناك مشكلة في الدخول!سنصلح هذه المشكلة[',
      'en':
          'Error: [There\'s a problem on Authentication! We will fix this problem]',
    },
    '1vgkh9hn': {
      'fr': 'E-mail de réinitialisation du mot de passe envoyé !',
      'ar': 'تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور!',
      'en': 'Password reset email sent!',
    },
    'p7g1hpbb': {
      'fr': 'Email (requis)',
      'ar': 'البريد الإلكتروني )مطلوب(',
      'en': 'Email (required)',
    },
    'ztpxnq81': {
      'fr': 'Numéro de téléphone obligatoire et doit commencer par +.',
      'ar': ' رقم الهاتف مطلوب ويجب أن يبدأ بـ  + .',
      'en': 'Phone number required and has to start with +.',
    },
    'yv11bv53': {
      'fr': 'Le mots de passe ne correspondent pas',
      'ar': 'كلمة المرور غير متطابقة',
      'en': 'Password don\'t match',
    },
    'xndhofbj': {
      'fr': 'Entrez le code de vérification par SMS',
      'ar': 'أدخل رمز التحقق عبر الرسائل القصيرة',
      'en': 'Enter SMS verification code',
    },
    'qwjoggxn': {
      'fr': 'Format de fichier invalide',
      'ar': 'تنسيق ملف غير صالح',
      'en': 'Invalid file format',
    },
    'vrwld95g': {
      'fr': 'Téléchargement du fichier...',
      'ar': 'تحميل الملف ...',
      'en': 'Uploading file...',
    },
    '2x0ests4': {
      'fr': 'Succès!',
      'ar': 'نجاح!',
      'en': 'Success!',
    },
    'ejhzf9lt': {
      'fr': 'Échec du téléchargement du média',
      'ar': 'فشل تحميل الوسائط',
      'en': 'Failed to upload media',
    },
    'pjtu4eg2': {
      'fr': 'Envoi photo',
      'ar': 'جارٍ إرسال الصورة',
      'en': 'Sending photo',
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
