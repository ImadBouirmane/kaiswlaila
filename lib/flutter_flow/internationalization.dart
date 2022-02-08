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
      'ar': '',
      'en': '',
    },
    'iuxqzaus': {
      'fr':
          'Le partenaire que vous cherchez avec la maniere que vous preferez !',
      'ar': '',
      'en': '',
    },
    '5jjrerod': {
      'fr': 'Connectez-vous via Google',
      'ar': '',
      'en': '',
    },
    'u8ceqrn1': {
      'fr': 'Connectez-vous via Apple',
      'ar': '',
      'en': '',
    },
    'n3vpdygg': {
      'fr': 'Vous n\'avez pas de compte?',
      'ar': '',
      'en': '',
    },
    'tjs7xgjs': {
      'fr': 'S\'inscrire',
      'ar': '',
      'en': '',
    },
  },
  // Onboarding
  {
    'd2f68ui3': {
      'fr': 'Trouvez votre \npartenaire idéal\navec nous,',
      'ar': '',
      'en': '',
    },
    's11ixzl1': {
      'fr': 'Trouvez votre \npartenaire ideal\navec nous,',
      'ar': '',
      'en': '',
    },
    'u3k7yufq': {
      'fr': 'Trouvez votre \npartenaire ideal\navec nous,',
      'ar': '',
      'en': '',
    },
    'p911bmit': {
      'fr': 'Commerncer',
      'ar': '',
      'en': '',
    },
  },
  // signupStep1
  {
    '8k6ie3sk': {
      'fr': 'Création du votre compte',
      'ar': '',
      'en': '',
    },
    'gt7vkk2a': {
      'fr': 'Par Email',
      'ar': '',
      'en': '',
    },
    'z42km0y1': {
      'fr': 'Email',
      'ar': '',
      'en': '',
    },
    'fqj0yzbm': {
      'fr': 'Mot de passe',
      'ar': '',
      'en': '',
    },
    'e4z8ytmt': {
      'fr': 'Confirmez le mot de passe',
      'ar': '',
      'en': '',
    },
    'syi85ic2': {
      'fr': 'Créer',
      'ar': '',
      'en': '',
    },
    '4frrvv2y': {
      'fr': 'Par Téléphone',
      'ar': '',
      'en': '',
    },
    'm0dlzs3r': {
      'fr': 'Votre Téléphone',
      'ar': '',
      'en': '',
    },
    'jfb6a30q': {
      'fr': 'Créer',
      'ar': '',
      'en': '',
    },
  },
  // signupStep2
  {
    'oeoe3l6k': {
      'fr': 'Avatar',
      'ar': '',
      'en': '',
    },
    'jpdcya6h': {
      'fr': 'Insérez votre photo',
      'ar': '',
      'en': '',
    },
    'wo9oaq4u': {
      'fr': 'Continuez',
      'ar': '',
      'en': '',
    },
  },
  // signupStep3
  {
    'e4oxhcn1': {
      'fr': 'Base',
      'ar': '',
      'en': '',
    },
    '9vdcx824': {
      'fr': 'Nom Complet',
      'ar': '',
      'en': '',
    },
    'ht2oa9j3': {
      'fr': 'Fonction',
      'ar': '',
      'en': '',
    },
    '5j9y9uqq': {
      'fr': 'Présentez-vous !',
      'ar': '',
      'en': '',
    },
    'kh7tjb9c': {
      'fr': 'Continuez',
      'ar': '',
      'en': '',
    },
  },
  // signupStep4
  {
    'nlcf25gn': {
      'fr': 'Sexe',
      'ar': '',
      'en': '',
    },
    'tb24brgs': {
      'fr': 'Masculin',
      'ar': '',
      'en': '',
    },
    'ozp4v9m5': {
      'fr': 'Feminin',
      'ar': '',
      'en': '',
    },
    'djgnn95q': {
      'fr': 'Date de naissance',
      'ar': '',
      'en': '',
    },
    'wj57ucb7': {
      'fr': 'Jour',
      'ar': '',
      'en': '',
    },
    '61gljfgg': {
      'fr': 'Mois',
      'ar': '',
      'en': '',
    },
    '63amt7r1': {
      'fr': 'Année',
      'ar': '',
      'en': '',
    },
    'vdfau4s7': {
      'fr': 'Votre Ville:',
      'ar': '',
      'en': '',
    },
    'rxo3jbg1': {
      'fr': 'Ville',
      'ar': '',
      'en': '',
    },
    'somnr7cs': {
      'fr': 'Sélectionnez votre pays:',
      'ar': '',
      'en': '',
    },
    '9afmd91m': {
      'fr': 'Maroc',
      'ar': '',
      'en': '',
    },
    'eapr3xqf': {
      'fr': 'Algérie',
      'ar': '',
      'en': '',
    },
    'pk65n8cj': {
      'fr': 'Tunisie',
      'ar': '',
      'en': '',
    },
    't9yzd88w': {
      'fr': 'Libye',
      'ar': '',
      'en': '',
    },
    'f8it7sfx': {
      'fr': 'Mauritanie',
      'ar': '',
      'en': '',
    },
    'nedwt14c': {
      'fr': 'Egypte',
      'ar': '',
      'en': '',
    },
    'u2wowc5b': {
      'fr': 'Saudi Arabia',
      'ar': '',
      'en': '',
    },
    '9b4quj22': {
      'fr': 'UAE',
      'ar': '',
      'en': '',
    },
    'azj4d96u': {
      'fr': 'Oman',
      'ar': '',
      'en': '',
    },
    'z57lorym': {
      'fr': 'Qatar',
      'ar': '',
      'en': '',
    },
    'kgyotstk': {
      'fr': 'Bahrain',
      'ar': '',
      'en': '',
    },
    'uyecosi8': {
      'fr': 'Kuwait',
      'ar': '',
      'en': '',
    },
    'jmebzwjb': {
      'fr': 'Soudan',
      'ar': '',
      'en': '',
    },
    'd2hgu81u': {
      'fr': 'Syrie',
      'ar': '',
      'en': '',
    },
    'a41foqe4': {
      'fr': 'Liban',
      'ar': '',
      'en': '',
    },
    'bc1sw9k4': {
      'fr': 'Turquie',
      'ar': '',
      'en': '',
    },
    'a4tlfb4j': {
      'fr': 'Pays',
      'ar': '',
      'en': '',
    },
    'hwte74bp': {
      'fr': 'Continuez',
      'ar': '',
      'en': '',
    },
  },
  // signupStep5
  {
    'jqgzv7gq': {
      'fr': 'Vos Photos',
      'ar': '',
      'en': '',
    },
    'fmsmx7ba': {
      'fr': 'veuillez télécharger au moins une de vos photos...',
      'ar': '',
      'en': '',
    },
    'c78disd1': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
  },
  // signupStep6
  {
    'c5ye6u7t': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'vksprlxx': {
      'fr': '0%',
      'ar': '',
      'en': '',
    },
    'x8q1d0fx': {
      'fr':
          'Il est important pour moi de maintenir les valeurs\nou les croyances traditionnelles ',
      'ar': '',
      'en': '',
    },
    'plyj4lq2': {
      'fr': 'Pas du tout',
      'ar': '',
      'en': '',
    },
    'wbf8z75e': {
      'fr': 'Pas vraiment',
      'ar': '',
      'en': '',
    },
    'vcxsupx4': {
      'fr': 'Vraiment',
      'ar': '',
      'en': '',
    },
    'rc0ktr4f': {
      'fr': 'Tout à fait \n',
      'ar': '',
      'en': '',
    },
    '7x6cdcsf': {
      'fr':
          'Il est important pour moi de prendre mes propres\ndécisions en ce qui concerne ma vie ',
      'ar': '',
      'en': '',
    },
    '04w2ce3p': {
      'fr': 'Pas du tout',
      'ar': '',
      'en': '',
    },
    'pvxursmn': {
      'fr': 'Pas vraiment',
      'ar': '',
      'en': '',
    },
    'ngh7531z': {
      'fr': 'Vraiment',
      'ar': '',
      'en': '',
    },
    'jdbmphar': {
      'fr': 'Tout à fait \n',
      'ar': '',
      'en': '',
    },
    '4g9k36gl': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    '0te595dk': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep7
  {
    'yj7oaw5w': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'gglth7yf': {
      'fr': '10%',
      'ar': '',
      'en': '',
    },
    'ksllz08d': {
      'fr':
          'Il est important pour moi d’être la personne la plus\ninfluente dans un couple ',
      'ar': '',
      'en': '',
    },
    'kbr4i517': {
      'fr': 'Pas du tout',
      'ar': '',
      'en': '',
    },
    'z3u5kyvz': {
      'fr': 'Pas vraiment',
      'ar': '',
      'en': '',
    },
    'kvvkqzcs': {
      'fr': 'Vraiment',
      'ar': '',
      'en': '',
    },
    'wtsdzneb': {
      'fr': 'Tout à fait \n',
      'ar': '',
      'en': '',
    },
    't42rf8ef': {
      'fr':
          'Il est important pour moi de suivre les règles même\nquand personne ne surveille ',
      'ar': '',
      'en': '',
    },
    'bk3iupzg': {
      'fr': 'Pas du tout',
      'ar': '',
      'en': '',
    },
    'd4foqjnl': {
      'fr': 'Pas vraiment',
      'ar': '',
      'en': '',
    },
    'vv2kj4ta': {
      'fr': 'Vraiment',
      'ar': '',
      'en': '',
    },
    'lsvv4p73': {
      'fr': 'Tout à fait \n',
      'ar': '',
      'en': '',
    },
    '6daytfl0': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    'jykvnlpp': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep8
  {
    'mc942bqj': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'pe7k4a3w': {
      'fr': '20%',
      'ar': '',
      'en': '',
    },
    'jz9ayuiz': {
      'fr': 'Le plus important dans une relation ?\n (3 choix)',
      'ar': '',
      'en': '',
    },
    'uewjmka5': {
      'fr': 'La passion',
      'ar': '',
      'en': '',
    },
    '48uoxjm9': {
      'fr': 'L\'amour',
      'ar': '',
      'en': '',
    },
    'h4lxd1oe': {
      'fr': 'La complicité',
      'ar': '',
      'en': '',
    },
    '6h8fr3jl': {
      'fr': 'La loyauté',
      'ar': '',
      'en': '',
    },
    'ei7fal8z': {
      'fr': 'La fidélité',
      'ar': '',
      'en': '',
    },
    'ekxocbzk': {
      'fr': 'La transparence',
      'ar': '',
      'en': '',
    },
    '41hacv6d': {
      'fr': 'l’authenticité ',
      'ar': '',
      'en': '',
    },
    'fqmnws25': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    'yikvi26f': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep9
  {
    '4wkntniv': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'qedasp3n': {
      'fr': '30%',
      'ar': '',
      'en': '',
    },
    '4zinrync': {
      'fr':
          'Qu’est-ce qui est important pour vous dans une relation amoureuse ? (minimum 5 choix)',
      'ar': '',
      'en': '',
    },
    'ane0kc7c': {
      'fr': 'Ses valeurs',
      'ar': '',
      'en': '',
    },
    'tf1lja61': {
      'fr': 'Son énergie',
      'ar': '',
      'en': '',
    },
    'zw15di46': {
      'fr': 'L’attachement',
      'ar': '',
      'en': '',
    },
    'la2d6xdw': {
      'fr': 'Les habitudes',
      'ar': '',
      'en': '',
    },
    'k2v86djq': {
      'fr': 'Le plaisir et la détente',
      'ar': '',
      'en': '',
    },
    'cslhflul': {
      'fr': 'Etre à deux',
      'ar': '',
      'en': '',
    },
    'rns6d86d': {
      'fr': 'Ma confiance en elle (lui)',
      'ar': '',
      'en': '',
    },
    'ppoaq5g0': {
      'fr': 'Son sex-appeal',
      'ar': '',
      'en': '',
    },
    '1b3jsrqr': {
      'fr': 'Son amour pour les enfants',
      'ar': '',
      'en': '',
    },
    'xmtwodpr': {
      'fr': 'Le partage',
      'ar': '',
      'en': '',
    },
    'lotlreau': {
      'fr': 'Ses convictions',
      'ar': '',
      'en': '',
    },
    'kofa4d5x': {
      'fr': 'La passion',
      'ar': '',
      'en': '',
    },
    'df1hj2s2': {
      'fr': 'Sa joie de vivre',
      'ar': '',
      'en': '',
    },
    'nkyeva9d': {
      'fr': 'Son apparence physique ',
      'ar': '',
      'en': '',
    },
    'hvwozygw': {
      'fr': 'Notre attirance réciproque ',
      'ar': '',
      'en': '',
    },
    'hkgwkzgl': {
      'fr': 'Nos similitudes ',
      'ar': '',
      'en': '',
    },
    'ugei4ejz': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    'hezcwizb': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep10
  {
    'ppu4s2x0': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    '7682nbj1': {
      'fr': '40%',
      'ar': '',
      'en': '',
    },
    'dek18ama': {
      'fr': 'Vos Besoins',
      'ar': '',
      'en': '',
    },
    'b88wrl3j': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très important)',
      'ar': '',
      'en': '',
    },
    'ulzkksko': {
      'fr': 'Affection',
      'ar': '',
      'en': '',
    },
    'z18sn5vq': {
      'fr': 'Indépendance',
      'ar': '',
      'en': '',
    },
    'yflj2fva': {
      'fr': 'Liberté',
      'ar': '',
      'en': '',
    },
    'wouevk5m': {
      'fr': 'Reconnaissance',
      'ar': '',
      'en': '',
    },
    'ysmqc5y7': {
      'fr': 'De 1 à 5 (1 pas très important, 10 très important)',
      'ar': '',
      'en': '',
    },
    'g6vr4fu1': {
      'fr': 'Admiration ',
      'ar': '',
      'en': '',
    },
    'ljkxmklp': {
      'fr': 'Fonder une famille',
      'ar': '',
      'en': '',
    },
    '5ehrybj4': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    '8fppswdf': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep11
  {
    '268nm25r': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    '8tb2kgag': {
      'fr': '60%',
      'ar': '',
      'en': '',
    },
    'rgdesdex': {
      'fr': 'Quel est votre niveau d’études ?',
      'ar': '',
      'en': '',
    },
    'p9swrnq5': {
      'fr': 'Sans diplôme',
      'ar': '',
      'en': '',
    },
    'ruwhy5ui': {
      'fr': 'Collège',
      'ar': '',
      'en': '',
    },
    'z0kbrf7f': {
      'fr': 'BAC ou BAC PRO',
      'ar': '',
      'en': '',
    },
    'lbmcfc27': {
      'fr': 'BAC +2 /BAC +3',
      'ar': '',
      'en': '',
    },
    '0dfcrqgn': {
      'fr': 'BAC +4 / BAC +5',
      'ar': '',
      'en': '',
    },
    '21btpdlo': {
      'fr': 'Doctorat',
      'ar': '',
      'en': '',
    },
    'benq6kct': {
      'fr':
          'Quelle importance attachez-vous au niveau d’études de votre partenaire ?',
      'ar': '',
      'en': '',
    },
    'whih40fe': {
      'fr': 'Aucune importance',
      'ar': '',
      'en': '',
    },
    'm68w14bg': {
      'fr': 'Peu important',
      'ar': '',
      'en': '',
    },
    'zspmvdas': {
      'fr': 'Important',
      'ar': '',
      'en': '',
    },
    'p0un418b': {
      'fr': 'Plutôt important\n',
      'ar': '',
      'en': '',
    },
    '4lsogzl3': {
      'fr': 'Vraiment important',
      'ar': '',
      'en': '',
    },
    '2kw6o9vt': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    'xejecw3g': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep12
  {
    'mwt2fa5y': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    '6gmg1s8i': {
      'fr': '70%',
      'ar': '',
      'en': '',
    },
    'rcn30c2m': {
      'fr':
          'Imaginez que vos amis devaient vous décrire, quels seraient les adjectifs qui vous correspondraient ? ( choisir 9 adjectifs)',
      'ar': '',
      'en': '',
    },
    'dd8iw25j': {
      'fr': 'A l’écoute',
      'ar': '',
      'en': '',
    },
    'z29y6qpv': {
      'fr': 'Spontané(e)',
      'ar': '',
      'en': '',
    },
    'hjep3yy1': {
      'fr': 'Optimiste',
      'ar': '',
      'en': '',
    },
    '2rrxxm7f': {
      'fr': 'Lunatique',
      'ar': '',
      'en': '',
    },
    'k40nxdzl': {
      'fr': 'Rêveur(se)',
      'ar': '',
      'en': '',
    },
    'j1qgal09': {
      'fr': 'Calme',
      'ar': '',
      'en': '',
    },
    'lpnc7fgw': {
      'fr': 'Empatique',
      'ar': '',
      'en': '',
    },
    'za2qsxoy': {
      'fr': 'Fidèle ',
      'ar': '',
      'en': '',
    },
    '9ko3roze': {
      'fr': 'Logique',
      'ar': '',
      'en': '',
    },
    'fciqdeqt': {
      'fr': 'Joyeux(se)',
      'ar': '',
      'en': '',
    },
    '1hmyzi7u': {
      'fr': 'Sensible',
      'ar': '',
      'en': '',
    },
    '2htoknx5': {
      'fr': 'Engagé(e)',
      'ar': '',
      'en': '',
    },
    'ut46h1fh': {
      'fr': 'Travailleur(se)',
      'ar': '',
      'en': '',
    },
    'ydnjmmj6': {
      'fr': 'Charmeur(se)',
      'ar': '',
      'en': '',
    },
    'aoos0vk8': {
      'fr': 'Energique',
      'ar': '',
      'en': '',
    },
    'exg87cvv': {
      'fr': 'Rebel(le)',
      'ar': '',
      'en': '',
    },
    '3iy8er3c': {
      'fr': 'Enthousiaste',
      'ar': '',
      'en': '',
    },
    'cumx4qt2': {
      'fr': 'Consciencieux(se)',
      'ar': '',
      'en': '',
    },
    '6coopsc0': {
      'fr': 'Chaleureux(se)',
      'ar': '',
      'en': '',
    },
    'ar2ojjai': {
      'fr': 'Prend des risques',
      'ar': '',
      'en': '',
    },
    'meguzsqc': {
      'fr': 'Respectueux(se)',
      'ar': '',
      'en': '',
    },
    'ousmsaif': {
      'fr': 'En bonne forme physique',
      'ar': '',
      'en': '',
    },
    'rqb98yzm': {
      'fr': 'Digne de confiance',
      'ar': '',
      'en': '',
    },
    'ive9w04u': {
      'fr': 'Compatissant(e)',
      'ar': '',
      'en': '',
    },
    'd48ohd78': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    'qh5slkof': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep13
  {
    'hob5p3op': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'wobh1re8': {
      'fr': '80%',
      'ar': '',
      'en': '',
    },
    'sueikj41': {
      'fr': 'Je suis spontané(e).',
      'ar': '',
      'en': '',
    },
    'q5hazta3': {
      'fr': 'Pas du tout',
      'ar': '',
      'en': '',
    },
    '3jajp8fy': {
      'fr': 'Pas vraiment',
      'ar': '',
      'en': '',
    },
    'bx6idgbl': {
      'fr': 'Vraiment',
      'ar': '',
      'en': '',
    },
    'aceyrn2r': {
      'fr': 'Tout à fait',
      'ar': '',
      'en': '',
    },
    'aqx0bpe8': {
      'fr': 'Il est facile pour moi de discuter avec de nouvelles personnes.',
      'ar': '',
      'en': '',
    },
    'urvjj1rs': {
      'fr': 'Pas du tout',
      'ar': '',
      'en': '',
    },
    '9efjwy7x': {
      'fr': 'Pas vraiment',
      'ar': '',
      'en': '',
    },
    '68w5pgmv': {
      'fr': 'Vraiment',
      'ar': '',
      'en': '',
    },
    'x5ajn5fe': {
      'fr': 'Tout à fait',
      'ar': '',
      'en': '',
    },
    'hhhhcaip': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    '1ppdc30w': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep14
  {
    'ryh79sof': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'vz0jw1ce': {
      'fr': '90%',
      'ar': '',
      'en': '',
    },
    '98yt7fto': {
      'fr':
          'Quels seraient les 3 points qui pourraient vous rendre heureux(se) ?\nOuverte ',
      'ar': '',
      'en': '',
    },
    'sds7x7o4': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
    'yowkqpii': {
      'fr': 'Ça suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // signupStep15
  {
    'f7d52jsx': {
      'fr': 'Questionnaire',
      'ar': '',
      'en': '',
    },
    'wap37wq3': {
      'fr': '100%',
      'ar': '',
      'en': '',
    },
    'fvjwmkyq': {
      'fr': 'Vos centres d’intérêts ? \nVeuillez choisir au moins 3 élément.',
      'ar': '',
      'en': '',
    },
    'bcriaovm': {
      'fr': 'A l’écoute',
      'ar': '',
      'en': '',
    },
    '1b69xkeh': {
      'fr': 'Spontané(e)',
      'ar': '',
      'en': '',
    },
    'o8g72l2a': {
      'fr': 'Optimiste',
      'ar': '',
      'en': '',
    },
    '9mmobbwo': {
      'fr': 'Lunatique',
      'ar': '',
      'en': '',
    },
    '6zuig7ie': {
      'fr': 'Rêveur(se)',
      'ar': '',
      'en': '',
    },
    'v5qn3fub': {
      'fr': 'Calme',
      'ar': '',
      'en': '',
    },
    'kvcpiopt': {
      'fr': 'Empatique',
      'ar': '',
      'en': '',
    },
    'mpczer9p': {
      'fr': 'Fidèle ',
      'ar': '',
      'en': '',
    },
    '9tg8y4mt': {
      'fr': 'Logique',
      'ar': '',
      'en': '',
    },
    'e9b53ogp': {
      'fr': 'Joyeux(se)',
      'ar': '',
      'en': '',
    },
    'fq14vgiq': {
      'fr': 'Sensible',
      'ar': '',
      'en': '',
    },
    'nfxkmeyr': {
      'fr': 'Engagé(e)',
      'ar': '',
      'en': '',
    },
    'ufngl24j': {
      'fr': 'Travailleur(se)',
      'ar': '',
      'en': '',
    },
    'nmuj304q': {
      'fr': 'Charmeur(se)',
      'ar': '',
      'en': '',
    },
    '2m9ua26w': {
      'fr': 'Energique',
      'ar': '',
      'en': '',
    },
    'g4j102fc': {
      'fr': 'Rebel(le)',
      'ar': '',
      'en': '',
    },
    '6bxnkp8e': {
      'fr': 'Enthousiaste',
      'ar': '',
      'en': '',
    },
    'ow6h3s22': {
      'fr': 'Consciencieux(se)',
      'ar': '',
      'en': '',
    },
    'nz2aay4c': {
      'fr': 'Chaleureux(se)',
      'ar': '',
      'en': '',
    },
    '7ydot8ax': {
      'fr': 'Prend des risques',
      'ar': '',
      'en': '',
    },
    '9j9gwgp1': {
      'fr': 'Respectueux(se)',
      'ar': '',
      'en': '',
    },
    'vrhk6bbq': {
      'fr': 'En bonne forme physique',
      'ar': '',
      'en': '',
    },
    'ygouqb4k': {
      'fr': 'Digne de confiance',
      'ar': '',
      'en': '',
    },
    '8iv2y19p': {
      'fr': 'Compatissant(e)',
      'ar': '',
      'en': '',
    },
    'e4kbt0wy': {
      'fr': 'Continuez\n',
      'ar': '',
      'en': '',
    },
  },
  // HomePage
  {
    'i35bbnpu': {
      'fr': 'Découvrir',
      'ar': '',
      'en': '',
    },
    'kvaqx1ne': {
      'fr': 'Distance',
      'ar': '',
      'en': '',
    },
  },
  // matches
  {
    'ixqmo3vn': {
      'fr': 'Rencontres',
      'ar': '',
      'en': '',
    },
  },
  // isMatch
  {
    'uz3611e0': {
      'fr': 'Rencontres',
      'ar': '',
      'en': '',
    },
    'ytwpn06z': {
      'fr': 'C\'est un match, ',
      'ar': '',
      'en': '',
    },
    'p3qu59hh': {
      'fr': 'Démarrer une conversation maintenant',
      'ar': '',
      'en': '',
    },
    'g6bo7zou': {
      'fr': 'ou :',
      'ar': '',
      'en': '',
    },
    'sdtqzo74': {
      'fr': 'Ca suffit pour moi !',
      'ar': '',
      'en': '',
    },
  },
  // Profile
  {
    '13jgokol': {
      'fr': 'Profile',
      'ar': '',
      'en': '',
    },
    '0olwx22j': {
      'fr': 'À propos de moi',
      'ar': '',
      'en': '',
    },
    'mmsr5n79': {
      'fr': 'Intérêts',
      'ar': '',
      'en': '',
    },
    '25o6rp5o': {
      'fr': 'Photos',
      'ar': '',
      'en': '',
    },
  },
  // editProfile
  {
    'l3uatqmy': {
      'fr': 'Éditez votre profile',
      'ar': '',
      'en': '',
    },
    '2efprkqz': {
      'fr': 'Base',
      'ar': '',
      'en': '',
    },
    't9i89j5t': {
      'fr': 'Nom Complet',
      'ar': '',
      'en': '',
    },
    'boqifj1x': {
      'fr': 'Fonction',
      'ar': '',
      'en': '',
    },
    'wd9vpqh6': {
      'fr': 'Bio',
      'ar': '',
      'en': '',
    },
    'foi3lff4': {
      'fr': 'Sexe',
      'ar': '',
      'en': '',
    },
    'l6m6ng3p': {
      'fr': 'Masculin',
      'ar': '',
      'en': '',
    },
    'baim5lij': {
      'fr': 'Feminin',
      'ar': '',
      'en': '',
    },
    '5bponwwp': {
      'fr': 'Date de naissance',
      'ar': '',
      'en': '',
    },
    'jgqgzegq': {
      'fr': 'Jour',
      'ar': '',
      'en': '',
    },
    'p5jfzspu': {
      'fr': 'Mois',
      'ar': '',
      'en': '',
    },
    'frvjzbxi': {
      'fr': 'Année',
      'ar': '',
      'en': '',
    },
    'ca4lzles': {
      'fr': 'Votre Ville:',
      'ar': '',
      'en': '',
    },
    'h0ueu5id': {
      'fr': 'Ville',
      'ar': '',
      'en': '',
    },
    '0jbfg6p4': {
      'fr': 'Sélectionnez votre pays:',
      'ar': '',
      'en': '',
    },
    'wod7xith': {
      'fr': 'Maroc',
      'ar': '',
      'en': '',
    },
    '11d1afgd': {
      'fr': 'Algérie',
      'ar': '',
      'en': '',
    },
    '1cu9v3bt': {
      'fr': 'Tunisie',
      'ar': '',
      'en': '',
    },
    '9igd712z': {
      'fr': 'Libye',
      'ar': '',
      'en': '',
    },
    'a4vsnbxb': {
      'fr': 'Mauritanie',
      'ar': '',
      'en': '',
    },
    'h3hponew': {
      'fr': 'Egypte',
      'ar': '',
      'en': '',
    },
    'aj862mpk': {
      'fr': 'Saudi Arabia',
      'ar': '',
      'en': '',
    },
    'kc0kivbo': {
      'fr': 'UAE',
      'ar': '',
      'en': '',
    },
    'ep6joodu': {
      'fr': 'Oman',
      'ar': '',
      'en': '',
    },
    '6vdqvewf': {
      'fr': 'Qatar',
      'ar': '',
      'en': '',
    },
    'oes0h3he': {
      'fr': 'Bahrain',
      'ar': '',
      'en': '',
    },
    'uwb8cyq1': {
      'fr': 'Kuwait',
      'ar': '',
      'en': '',
    },
    '8dzu8lug': {
      'fr': 'Soudan',
      'ar': '',
      'en': '',
    },
    'uzivxrgd': {
      'fr': 'Syrie',
      'ar': '',
      'en': '',
    },
    'cnljsu8m': {
      'fr': 'Liban',
      'ar': '',
      'en': '',
    },
    'd9zueiyc': {
      'fr': 'Turquie',
      'ar': '',
      'en': '',
    },
    '51j0jlpg': {
      'fr': 'Photos',
      'ar': '',
      'en': '',
    },
    'nncrdp48': {
      'fr': 'Enreegistrer',
      'ar': '',
      'en': '',
    },
  },
  // notifications
  {
    'asafhaon': {
      'fr': 'Notifications',
      'ar': '',
      'en': '',
    },
    'hmqazb5b': {
      'fr': 'Issam a vu votre profile !',
      'ar': '',
      'en': '',
    },
    '8ft00scz': {
      'fr': 'Dec. 19, 1:30pm - 2:00pm',
      'ar': '',
      'en': '',
    },
  },
  // Settings
  {
    'xh8l8uom': {
      'fr': 'Paramètres',
      'ar': '',
      'en': '',
    },
    '217nhv4u': {
      'fr': 'Base',
      'ar': '',
      'en': '',
    },
    '53h4bu34': {
      'fr': 'Notifications',
      'ar': '',
      'en': '',
    },
    'oqfwh6xy': {
      'fr': 'Sécurité',
      'ar': '',
      'en': '',
    },
    '5hblhrbe': {
      'fr': 'À propos',
      'ar': '',
      'en': '',
    },
  },
  // chat
  {
    '3oxma931': {
      'fr': 'Group Chat',
      'ar': '',
      'en': '',
    },
  },
  // PhoneVerification
  {
    '4hck5ne8': {
      'fr': 'Code de vérification',
      'ar': '',
      'en': '',
    },
    'sr70wzuc': {
      'fr': '_ _ _ _',
      'ar': '',
      'en': '',
    },
    'zpaazf5z': {
      'fr': 'Renvoyez',
      'ar': '',
      'en': '',
    },
    'qadgfgve': {
      'fr': 'Valider',
      'ar': '',
      'en': '',
    },
    'qc2hyg8f': {
      'fr': 'Kais w Leila',
      'ar': '',
      'en': '',
    },
  },
  // EmailVerification
  {
    '8ns4unkm': {
      'fr': 'Vérifiez votre boîte de réception.',
      'ar': '',
      'en': '',
    },
    'f4eu791m': {
      'fr': 'Confirmez votre email',
      'ar': '',
      'en': '',
    },
    'ryc80yfx': {
      'fr': '_ _ _ _',
      'ar': '',
      'en': '',
    },
    'khkfrltb': {
      'fr': 'Renvoyez !',
      'ar': '',
      'en': '',
    },
    'p6n1s25t': {
      'fr': 'Valider',
      'ar': '',
      'en': '',
    },
    'tsl6cnsy': {
      'fr': 'Kais w Leila',
      'ar': '',
      'en': '',
    },
  },
  // background
  {
    'b5wvpplb': {
      'fr': 'Rencontres',
      'ar': '',
      'en': '',
    },
  },
  // chatCopy
  {
    'gkeiwrpz': {
      'fr': 'Rencontres',
      'ar': '',
      'en': '',
    },
  },
  // editProfileCopy
  {
    'o69nbntm': {
      'fr': 'Éditez votre profile',
      'ar': '',
      'en': '',
    },
    '5qrf441i': {
      'fr': 'Photos',
      'ar': '',
      'en': '',
    },
  },
  // pickLanguage
  {
    'c9h5rmq0': {
      'fr': 'Francais',
      'ar': '',
      'en': '',
    },
    'f07951qi': {
      'fr': 'العربية',
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
