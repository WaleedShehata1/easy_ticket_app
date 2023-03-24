
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

Widget busTicket =SizedBox(
     width: 80,
   height: 150,
        child: CustomPaint(
   painter: ticket_Bus(),
   ),
   ) ;
class ticket_Bus extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.6203474,size.height*0.2019226);
    path_0.cubicTo(size.width*0.6203474,size.height*0.2305904,size.width*0.6053499,size.height*0.2538304,size.width*0.5868486,size.height*0.2538304);
    path_0.cubicTo(size.width*0.5683474,size.height*0.2538304,size.width*0.5533499,size.height*0.2305904,size.width*0.5533499,size.height*0.2019226);
    path_0.cubicTo(size.width*0.5533499,size.height*0.2012787,size.width*0.5533573,size.height*0.2006378,size.width*0.5533722,size.height*0.2000000);
    path_0.lineTo(size.width*0.1488834,size.height*0.2000000);
    path_0.cubicTo(size.width*0.1351792,size.height*0.2000000,size.width*0.1240695,size.height*0.2194661,size.width*0.1240695,size.height*0.2434783);
    path_0.lineTo(size.width*0.1240695,size.height*0.7217391);
    path_0.cubicTo(size.width*0.1240695,size.height*0.7457522,size.width*0.1351792,size.height*0.7652174,size.width*0.1488834,size.height*0.7652174);
    path_0.lineTo(size.width*0.5533722,size.height*0.7652174);
    path_0.cubicTo(size.width*0.5540248,size.height*0.7374391,size.width*0.5687643,size.height*0.7152304,size.width*0.5868486,size.height*0.7152304);
    path_0.cubicTo(size.width*0.6049330,size.height*0.7152304,size.width*0.6196725,size.height*0.7374391,size.width*0.6203251,size.height*0.7652174);
    path_0.lineTo(size.width*0.8511166,size.height*0.7652174);
    path_0.cubicTo(size.width*0.8648213,size.height*0.7652174,size.width*0.8759305,size.height*0.7457522,size.width*0.8759305,size.height*0.7217391);
    path_0.lineTo(size.width*0.8759305,size.height*0.2434783);
    path_0.cubicTo(size.width*0.8759305,size.height*0.2194661,size.width*0.8648213,size.height*0.2000000,size.width*0.8511166,size.height*0.2000000);
    path_0.lineTo(size.width*0.6203251,size.height*0.2000000);
    path_0.cubicTo(size.width*0.6203400,size.height*0.2006378,size.width*0.6203474,size.height*0.2012787,size.width*0.6203474,size.height*0.2019226);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.color = const Color(0xffF48265);
canvas.drawPath(path_0,paint0Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}
