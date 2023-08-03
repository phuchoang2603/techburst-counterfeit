import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'vi'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? viText = '',
  }) =>
      [enText, viText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'byaxrx03': {
      'en': 'Search products...',
      'vi': '',
    },
    '2ipc8kut': {
      'en': 'Option 1',
      'vi': '',
    },
    'insb65c7': {
      'en': 'Home',
      'vi': '',
    },
    '0vrypyyq': {
      'en': 'Home',
      'vi': '',
    },
  },
  // Login
  {
    '5pvdc3ov': {
      'en': 'brand.ai',
      'vi': '',
    },
    'wbbuij7b': {
      'en': 'Create Account',
      'vi': '',
    },
    '2128so39': {
      'en': 'Create Account',
      'vi': '',
    },
    'px1tcixx': {
      'en': 'Let\'s get started by filling out the form below.',
      'vi': '',
    },
    '386bdzru': {
      'en': '',
      'vi': '',
    },
    'dustd7ia': {
      'en': 'Enter your name...',
      'vi': '',
    },
    'lmxtxavo': {
      'en': 'Enter your email...',
      'vi': '',
    },
    'e36w66mu': {
      'en': 'Enter your password...',
      'vi': '',
    },
    'fiprcvb1': {
      'en': 'Re-enter your password...',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Sign In',
      'vi': '',
    },
    'nl2bwekx': {
      'en': 'Log In',
      'vi': '',
    },
    '2kp7qh9n': {
      'en': 'Welcome Back',
      'vi': '',
    },
    'h3j9dvaj': {
      'en': 'Fill out the information below in order to access your account.',
      'vi': '',
    },
    'py00zl7z': {
      'en': 'Enter your email...',
      'vi': '',
    },
    'swtvxmaw': {
      'en': 'Enter your password...',
      'vi': '',
    },
    'nw1dmpjd': {
      'en': 'Home',
      'vi': '',
    },
  },
  // Scanner
  {
    '5yngaas4': {
      'en': 'Upload Image',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Check Result',
      'vi': '',
    },
    '1t1f66x8': {
      'en': 'Scanner',
      'vi': '',
    },
    '6tptbsdv': {
      'en': 'Scanner',
      'vi': '',
    },
  },
  // Profile
  {
    'plwf7x87': {
      'en': 'Order History',
      'vi': '',
    },
    't92m8loi': {
      'en': 'Edit Profile',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Delete Account',
      'vi': '',
    },
    'u4ymsl01': {
      'en': 'Log Out',
      'vi': '',
    },
    'g1lge0e9': {
      'en': 'My Account',
      'vi': '',
    },
    'bjb6ts0k': {
      'en': 'Profile',
      'vi': '',
    },
  },
  // EditProfile
  {
    '7klpc84r': {
      'en': 'Change Cover Photo',
      'vi': '',
    },
    '386bdzru': {
      'en': '',
      'vi': '',
    },
    'xt5wb1ia': {
      'en': 'Change display name....',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Save Changes',
      'vi': '',
    },
    'zhqb7j1q': {
      'en': 'Edit Profile',
      'vi': '',
    },
  },
  // ProductDetail
  {
    'ma61fppo': {
      'en': 'Description',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Buy Now',
      'vi': '',
    },
    'uwibylka': {
      'en': 'Product Details',
      'vi': '',
    },
    'sef4e2u8': {
      'en': 'Home',
      'vi': '',
    },
  },
  // OrderHistory
  {
    'gxk9whgf': {
      'en': 'Review',
      'vi': '',
    },
    'cv0umxji': {
      'en': 'Purchase History',
      'vi': '',
    },
    '0n00lh8i': {
      'en': 'Home',
      'vi': '',
    },
  },
  // SellerDashboard
  {
    'c5zn1a78': {
      'en': 'Current selling',
      'vi': '',
    },
    't6eff1gh': {
      'en': 'Modify',
      'vi': '',
    },
    'xep7b1h8': {
      'en': 'Post a new product',
      'vi': '',
    },
    't6xajau8': {
      'en': 'Sold items',
      'vi': '',
    },
    'irh3cgk6': {
      'en': 'Seller Dashboard',
      'vi': '',
    },
    'y0vl6clw': {
      'en': 'Sell',
      'vi': '',
    },
  },
  // EditProduct
  {
    '386bdzru': {
      'en': '',
      'vi': '',
    },
    'y216zxbg': {
      'en': 'Change how it should be called...',
      'vi': '',
    },
    'ky155gjc': {
      'en': 'Description',
      'vi': '',
    },
    '2guer7kj': {
      'en': 'Change how it should be described...',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Save changes',
      'vi': '',
    },
    'z28r7pxy': {
      'en': 'Edit Product',
      'vi': '',
    },
    '7iy5bq4d': {
      'en': 'Home',
      'vi': '',
    },
  },
  // CreateProduct
  {
    'msn8ytuk': {
      'en': 'Name',
      'vi': '',
    },
    '386bdzru': {
      'en': '',
      'vi': '',
    },
    '54482zke': {
      'en': 'Set product\'s name...',
      'vi': '',
    },
    '43totdxz': {
      'en': 'Price',
      'vi': '',
    },
    'f83ixebc': {
      'en': 'Set product\'s price...',
      'vi': '',
    },
    'skphi0dq': {
      'en': 'Description',
      'vi': '',
    },
    'a3z7jxmt': {
      'en': 'Tell briefly about this product...',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Post an item',
      'vi': '',
    },
    'dn149lea': {
      'en': 'Create Product',
      'vi': '',
    },
    '7ac9cz3b': {
      'en': 'Home',
      'vi': '',
    },
  },
  // ResultPage
  {
    '100k3zgt': {
      'en': 'Go Home',
      'vi': '',
    },
    '2zcnvgnd': {
      'en': 'Result Page',
      'vi': '',
    },
    'x45hx5cw': {
      'en': 'Home',
      'vi': '',
    },
  },
  // ReviewBS
  {
    'qqf8wjqc': {
      'en': 'Let us know how was your shopping\'s experience...',
      'vi': '',
    },
    'gxk9whgf': {
      'en': 'Submit',
      'vi': '',
    },
  },
  // Miscellaneous
  {
    'gjldi7bx': {
      'en': 'Upload image',
      'vi': '',
    },
    'knjm70ds': {
      'en': '',
      'vi': '',
    },
    'lip3zbth': {
      'en': '',
      'vi': '',
    },
    'xsnbnv95': {
      'en': '',
      'vi': '',
    },
    'izv2tip4': {
      'en': '',
      'vi': '',
    },
    '1it72jnw': {
      'en': '',
      'vi': '',
    },
    'wgx5jy8t': {
      'en': '',
      'vi': '',
    },
    '0hu7ykya': {
      'en': '',
      'vi': '',
    },
    'mnajng1q': {
      'en': '',
      'vi': '',
    },
    'y2od6bfo': {
      'en': '',
      'vi': '',
    },
    'ui0dwbc5': {
      'en': '',
      'vi': '',
    },
    '1kw9fuko': {
      'en': '',
      'vi': '',
    },
    '9ap4lj7z': {
      'en': '',
      'vi': '',
    },
    'j6q86pet': {
      'en': '',
      'vi': '',
    },
    'vyhvi887': {
      'en': '',
      'vi': '',
    },
    'w4s6hem5': {
      'en': '',
      'vi': '',
    },
    '18ts3kad': {
      'en': '',
      'vi': '',
    },
    'cp8mce4q': {
      'en': '',
      'vi': '',
    },
    'g6uy8iss': {
      'en': '',
      'vi': '',
    },
    'w3q2f89o': {
      'en': '',
      'vi': '',
    },
    'qgz7891k': {
      'en': '',
      'vi': '',
    },
    'oevltyqg': {
      'en': '',
      'vi': '',
    },
    '2cufs3gz': {
      'en': '',
      'vi': '',
    },
    '22ysmplc': {
      'en': '',
      'vi': '',
    },
    '7xujdlbe': {
      'en': '',
      'vi': '',
    },
    'btqk58xf': {
      'en': '',
      'vi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
