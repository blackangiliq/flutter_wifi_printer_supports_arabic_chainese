import 'dart:typed_data';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:image/image.dart';

Future<void> testReceipt(
    NetworkPrinter printer,  Uint8List theimageThatC) async {


  final Image? image = decodeImage(theimageThatC);
  printer.image(image! , align: PosAlign.center);


  printer.cut();

}


