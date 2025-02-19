import 'package:bookly_app/core/widgets/snake_massage.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> cutomeLaunchUrl(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await launchUrl(uri)) {
    showCustomeSnackbar(context, 'Enjoy your Read 😊');
  } else {
    showCustomeSnackbar(context, 'Opps Linke not found');
  }
}
