import 'package:intl/intl.dart';

String getFormattedDateTime(DateTime dateTime, String format) =>
    DateFormat(format).format(dateTime);