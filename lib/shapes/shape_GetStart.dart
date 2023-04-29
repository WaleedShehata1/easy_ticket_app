// ignore_for_file: file_names

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


 Widget getStartShape =SizedBox(
     width: 150.w,
   height: 350.h,
        child: CustomPaint(
   painter: RPSCustomPainter(),
   ),
   ) ;
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.3176936,size.height*0.9884663);
    path_0.cubicTo(size.width*0.4771343,size.height*0.9844850,size.width*0.6361127,size.height*0.9961573,size.width*0.7957843,size.height*0.9982772);
    path_0.cubicTo(size.width*0.8575686,size.height*0.9991629,size.width*0.9202794,size.height*0.9985412,size.width*0.9804461,size.height*0.9928839);
    path_0.cubicTo(size.width*0.9892402,size.height*0.9920880,size.width*0.9998873,size.height*0.9902322,size.width*0.9998873,size.height*0.9867846);
    path_0.cubicTo(size.width*0.9998873,size.height*0.9832472,size.width*0.9892402,size.height*0.9814813,size.width*0.9804461,size.height*0.9805955);
    path_0.cubicTo(size.width*0.8772402,size.height*0.9706049,size.width*0.7689412,size.height*0.9741423,size.width*0.6622598,size.height*0.9750281);
    path_0.cubicTo(size.width*0.4546863,size.height*0.9767041,size.width*0.2450299,size.height*0.9676011,size.width*0.04046480,size.height*0.9814813);
    path_0.cubicTo(size.width*0.02241490,size.height*0.9827191,size.width*-0.02178412,size.height*0.9896161,size.width*0.01292725,size.height*0.9961573);
    path_0.cubicTo(size.width*0.03838216,size.height*1.000929,size.width*0.08281275,size.height*0.9975712,size.width*0.1101191,size.height*0.9967734);
    path_0.cubicTo(size.width*0.1797730,size.height*0.9948296,size.width*0.2485020,size.height*0.9902322,size.width*0.3176936,size.height*0.9884663);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.linear(Offset(size.width*0.02622103,size.height*0.9861517), Offset(size.width*1.000025,size.height*0.9861517), [const Color(0xff4D4D4D).withOpacity(1),const Color(0xff000000).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint0Fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.3178078,size.height*0.9884663);
    path_1.cubicTo(size.width*0.4772485,size.height*0.9844850,size.width*0.6362255,size.height*0.9961573,size.width*0.7958971,size.height*0.9982772);
    path_1.cubicTo(size.width*0.8576863,size.height*0.9991629,size.width*0.9203971,size.height*0.9985412,size.width*0.9805637,size.height*0.9928839);
    path_1.cubicTo(size.width*0.9893578,size.height*0.9920880,size.width,size.height*0.9902322,size.width,size.height*0.9867846);
    path_1.cubicTo(size.width,size.height*0.9832472,size.width*0.9893578,size.height*0.9814813,size.width*0.9805637,size.height*0.9805955);
    path_1.cubicTo(size.width*0.8773529,size.height*0.9706049,size.width*0.7690539,size.height*0.9741423,size.width*0.6623725,size.height*0.9750281);
    path_1.cubicTo(size.width*0.4548005,size.height*0.9767041,size.width*0.2451446,size.height*0.9676011,size.width*0.04057917,size.height*0.9814813);
    path_1.cubicTo(size.width*0.02252926,size.height*0.9827191,size.width*-0.02166980,size.height*0.9896161,size.width*0.01304162,size.height*0.9961573);
    path_1.cubicTo(size.width*0.03849652,size.height*1.000929,size.width*0.08292696,size.height*0.9975712,size.width*0.1102333,size.height*0.9967734);
    path_1.cubicTo(size.width*0.1798873,size.height*0.9948296,size.width*0.2486167,size.height*0.9902322,size.width*0.3178078,size.height*0.9884663);
    path_1.close();

Paint paint1Fill = Paint()..style=PaintingStyle.fill;
paint1Fill.shader = ui.Gradient.linear(Offset(size.width*0.03765525,size.height*0.9861517), Offset(size.width*1.000137,size.height*0.9861517), [const Color(0xff000000).withOpacity(1),const Color(0xff000000).withOpacity(1)], [0,1]);
canvas.drawPath(path_1,paint1Fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.9352598,size.height*0.3063596);
    path_2.cubicTo(size.width*0.9375735,size.height*0.3052116,size.width*0.9389608,size.height*0.3038858,size.width*0.9403529,size.height*0.3025599);
    path_2.cubicTo(size.width*0.9440539,size.height*0.2991105,size.width*0.9475245,size.height*0.2955749,size.width*0.9512255,size.height*0.2921273);
    path_2.cubicTo(size.width*0.9528480,size.height*0.2905356,size.width*0.9544657,size.height*0.2889438,size.width*0.9549314,size.height*0.2872659);
    path_2.cubicTo(size.width*0.9551618,size.height*0.2855861,size.width*0.9540049,size.height*0.2837285,size.width*0.9505343,size.height*0.2826685);
    path_2.cubicTo(size.width*0.9472941,size.height*0.2816067,size.width*0.9428971,size.height*0.2814307,size.width*0.9387304,size.height*0.2816948);
    path_2.cubicTo(size.width*0.9347990,size.height*0.2820487,size.width*0.9310931,size.height*0.2828446,size.width*0.9278529,size.height*0.2838184);
    path_2.cubicTo(size.width*0.9204510,size.height*0.2860281,size.width*0.9144314,size.height*0.2888558,size.width*0.9102696,size.height*0.2920393);
    path_2.cubicTo(size.width*0.9070294,size.height*0.2946030,size.width*0.9047157,size.height*0.2974307,size.width*0.8996225,size.height*0.2994644);
    path_2.cubicTo(size.width*0.8973088,size.height*0.3003483,size.width*0.8945294,size.height*0.3010562,size.width*0.8924510,size.height*0.3021161);
    path_2.cubicTo(size.width*0.8894412,size.height*0.3036199,size.width*0.8887451,size.height*0.3058296,size.width*0.8905980,size.height*0.3075974);
    path_2.cubicTo(size.width*0.8970784,size.height*0.3132547,size.width*0.9273922,size.height*0.3103390,size.width*0.9352598,size.height*0.3063596);
    path_2.close();

Paint paint2Fill = Paint()..style=PaintingStyle.fill;
paint2Fill.color = const Color(0xff7C6C61).withOpacity(1.0);
canvas.drawPath(path_2,paint2Fill);

Path path_3 = Path();
    path_3.moveTo(size.width*0.6147647,size.height*0.3577154);
    path_3.cubicTo(size.width*0.6399902,size.height*0.3814963,size.width*0.6832598,size.height*0.3967903,size.width*0.7084853,size.height*0.4205712);
    path_3.cubicTo(size.width*0.7154265,size.height*0.4270243,size.width*0.7429657,size.height*0.4411685,size.width*0.7397255,size.height*0.4480637);
    path_3.cubicTo(size.width*0.7337108,size.height*0.4601760,size.width*0.7221373,size.height*0.4619438,size.width*0.6904363,size.height*0.4646835);
    path_3.cubicTo(size.width*0.6281863,size.height*0.4309139,size.width*0.5455735,size.height*0.3906891,size.width*0.4768461,size.height*0.3587753);
    path_3.cubicTo(size.width*0.4377377,size.height*0.3406536,size.width*0.3722490,size.height*0.2805393,size.width*0.4666632,size.height*0.2861086);
    path_3.cubicTo(size.width*0.5613088,size.height*0.2915899,size.width*0.5844510,size.height*0.3293390,size.width*0.6147647,size.height*0.3577154);
    path_3.close();

Paint paint3Fill = Paint()..style=PaintingStyle.fill;
paint3Fill.color = const Color(0xff7C6C61).withOpacity(1.0);
canvas.drawPath(path_3,paint3Fill);

Path path_4 = Path();
    path_4.moveTo(size.width*0.8822598,size.height*0.3154607);
    path_4.cubicTo(size.width*0.8903578,size.height*0.3107753,size.width*0.9070196,size.height*0.3057360,size.width*0.9174314,size.height*0.3097135);
    path_4.cubicTo(size.width*0.8887402,size.height*0.3496723,size.width*0.8410686,size.height*0.3852116,size.width*0.8183922,size.height*0.4257004);
    path_4.cubicTo(size.width*0.8114461,size.height*0.4382528,size.width*0.8082108,size.height*0.4510712,size.width*0.7804412,size.height*0.4582322);
    path_4.cubicTo(size.width*0.7686373,size.height*0.4613258,size.width*0.7542892,size.height*0.4628277,size.width*0.7401765,size.height*0.4637135);
    path_4.cubicTo(size.width*0.7147206,size.height*0.4653914,size.width*0.6999118,size.height*0.4704307,size.width*0.6855637,size.height*0.4622097);
    path_4.cubicTo(size.width*0.6649657,size.height*0.4504532,size.width*0.6904216,size.height*0.4389607,size.width*0.7105539,size.height*0.4308277);
    path_4.cubicTo(size.width*0.7343873,size.height*0.4211910,size.width*0.7445686,size.height*0.4150019,size.width*0.7591520,size.height*0.4020075);
    path_4.cubicTo(size.width*0.7931667,size.height*0.3717734,size.width*0.8343578,size.height*0.3427772,size.width*0.8822598,size.height*0.3154607);
    path_4.close();

Paint paint4Fill = Paint()..style=PaintingStyle.fill;
paint4Fill.color = const Color(0xff7C6C61).withOpacity(1.0);
canvas.drawPath(path_4,paint4Fill);

Path path_5 = Path();
    path_5.moveTo(size.width*0.4865789,size.height*0.4379026);
    path_5.cubicTo(size.width*0.4657525,size.height*0.4271180,size.width*0.4451564,size.height*0.4160674,size.width*0.4338176,size.height*0.4034251);
    path_5.cubicTo(size.width*0.4224799,size.height*0.3907846,size.width*0.4210902,size.height*0.3772584,size.width*0.4199338,size.height*0.3639101);
    path_5.cubicTo(size.width*0.4176196,size.height*0.3395993,size.width*0.4153054,size.height*0.3152884,size.width*0.4129912,size.height*0.2909757);
    path_5.cubicTo(size.width*0.4629760,size.height*0.2917715,size.width*0.5127304,size.height*0.2924794,size.width*0.5627108,size.height*0.2932753);
    path_5.cubicTo(size.width*0.6041373,size.height*0.3217416,size.width*0.6337549,size.height*0.3524176,size.width*0.6631471,size.height*0.3830037);
    path_5.cubicTo(size.width*0.6892941,size.height*0.4102341,size.width*0.7156765,size.height*0.4375506,size.width*0.7418235,size.height*0.4647772);
    path_5.cubicTo(size.width*0.7621863,size.height*0.4859064,size.width*0.7825539,size.height*0.5071236,size.width*0.7934265,size.height*0.5292210);
    path_5.cubicTo(size.width*0.7987500,size.height*0.5399176,size.width*0.8008333,size.height*0.5521217,size.width*0.7827843,size.height*0.5605206);
    path_5.cubicTo(size.width*0.7085000,size.height*0.5954401,size.width*0.6675392,size.height*0.5392116,size.width*0.6393088,size.height*0.5210918);
    path_5.cubicTo(size.width*0.5932598,size.height*0.4920056,size.width*0.5388775,size.height*0.4651311,size.width*0.4865789,size.height*0.4379026);
    path_5.close();

Paint paint5Fill = Paint()..style=PaintingStyle.fill;
paint5Fill.color = const Color(0xffCDCCC7).withOpacity(1.0);
canvas.drawPath(path_5,paint5Fill);

Path path_6 = Path();
    path_6.moveTo(size.width*0.4393922,size.height*0.1193700);
    path_6.cubicTo(size.width*0.4051426,size.height*0.1308625,size.width*0.3833902,size.height*0.1470404,size.width*0.3713574,size.height*0.1638369);
    path_6.cubicTo(size.width*0.3581676,size.height*0.1821367,size.width*0.3560853,size.height*0.2024700,size.width*0.3776059,size.height*0.2196199);
    path_6.cubicTo(size.width*0.3991260,size.height*0.2367697,size.width*0.4481853,size.height*0.2495880,size.width*0.4972451,size.height*0.2468483);
    path_6.cubicTo(size.width*0.5301029,size.height*0.2449906,size.width*0.5583382,size.height*0.2366816,size.width*0.5798578,size.height*0.2270449);
    path_6.cubicTo(size.width*0.6349314,size.height*0.2021161,size.width*0.6504363,size.height*0.1657822,size.width*0.6233627,size.height*0.1351058);
    path_6.cubicTo(size.width*0.6122549,size.height*0.1226412,size.width*0.5951324,size.height*0.1072588,size.width*0.5597255,size.height*0.1039882);
    path_6.cubicTo(size.width*0.5213088,size.height*0.1003633,size.width*0.4671608,size.height*0.1100875,size.width*0.4393922,size.height*0.1193700);
    path_6.close();

Paint paint6Fill = Paint()..style=PaintingStyle.fill;
paint6Fill.color = const Color(0xff7C6C61).withOpacity(1.0);
canvas.drawPath(path_6,paint6Fill);

Path path_7 = Path();
    path_7.moveTo(size.width*0.5201520,size.height*0.5060431);
    path_7.cubicTo(size.width*0.5571765,size.height*0.5094906,size.width*0.5974461,size.height*0.5144419,size.width*0.6185049,size.height*0.5257566);
    path_7.cubicTo(size.width*0.6314608,size.height*0.5327434,size.width*0.6351618,size.height*0.5410524,size.width*0.6384020,size.height*0.5490955);
    path_7.cubicTo(size.width*0.6631618,size.height*0.6097434,size.width*0.6881569,size.height*0.6702996,size.width*0.7129167,size.height*0.7309401);
    path_7.cubicTo(size.width*0.7228676,size.height*0.7554270,size.width*0.7386029,size.height*0.7783240,size.width*0.7274951,size.height*0.8059944);
    path_7.cubicTo(size.width*0.6853775,size.height*0.8012228,size.width*0.6314608,size.height*0.8006011,size.width*0.6161863,size.height*0.7862828);
    path_7.cubicTo(size.width*0.5634265,size.height*0.7368652,size.width*0.5111275,size.height*0.6965524,size.width*0.3845480,size.height*0.6657865);
    path_7.cubicTo(size.width*0.3435882,size.height*0.6557959,size.width*0.3005461,size.height*0.6172547,size.width*0.2792574,size.height*0.6017828);
    path_7.cubicTo(size.width*0.2667603,size.height*0.5926779,size.width*0.2660662,size.height*0.5824251,size.width*0.2665299,size.height*0.5725243);
    path_7.cubicTo(size.width*0.2669922,size.height*0.5587322,size.width*0.2688426,size.height*0.5449419,size.width*0.2718510,size.height*0.5312360);
    path_7.cubicTo(size.width*0.2831902,size.height*0.4793446,size.width*0.4097711,size.height*0.4957884,size.width*0.5201520,size.height*0.5060431);
    path_7.close();

Paint paint7Fill = Paint()..style=PaintingStyle.fill;
paint7Fill.color = const Color(0xff191919).withOpacity(1.0);
canvas.drawPath(path_7,paint7Fill);

Path path_8 = Path();
    path_8.moveTo(size.width*0.6266078,size.height*0.7467921);
    path_8.cubicTo(size.width*0.6520637,size.height*0.7436985,size.width*0.7126912,size.height*0.7652640,size.width*0.7233382,size.height*0.7742846);
    path_8.cubicTo(size.width*0.7270392,size.height*0.7773801,size.width*0.7281961,size.height*0.7806479,size.width*0.7293529,size.height*0.7838315);
    path_8.cubicTo(size.width*0.7536520,size.height*0.8495187,size.width*0.7448578,size.height*0.8710843,size.width*0.7693873,size.height*0.9368614);
    path_8.cubicTo(size.width*0.7550392,size.height*0.9375674,size.width*0.7443971,size.height*0.9410993,size.width*0.7314363,size.height*0.9384476);
    path_8.cubicTo(size.width*0.6932549,size.height*0.8888558,size.width*0.6506765,size.height*0.8565880,size.width*0.6122598,size.height*0.8069963);
    path_8.cubicTo(size.width*0.5997647,size.height*0.7909906,size.width*0.5620441,size.height*0.7546573,size.width*0.6266078,size.height*0.7467921);
    path_8.close();

Paint paint8Fill = Paint()..style=PaintingStyle.fill;
paint8Fill.color = const Color(0xff191919).withOpacity(1.0);
canvas.drawPath(path_8,paint8Fill);

Path path_9 = Path();
    path_9.moveTo(size.width*0.2507730,size.height*0.8839064);
    path_9.cubicTo(size.width*0.2079623,size.height*0.9073333,size.width*0.1767225,size.height*0.9060094,size.width*0.1561270,size.height*0.9311142);
    path_9.cubicTo(size.width*0.1225725,size.height*0.9279363,size.width*0.1232667,size.height*0.9316461,size.width*0.1186387,size.height*0.9229794);
    path_9.cubicTo(size.width*0.1140103,size.height*0.9143184,size.width*0.1228039,size.height*0.9055674,size.width*0.1329858,size.height*0.8972584);
    path_9.cubicTo(size.width*0.1653838,size.height*0.8708258,size.width*0.1799618,size.height*0.8584476,size.width*0.2190696,size.height*0.8325487);
    path_9.cubicTo(size.width*0.2778475,size.height*0.7936479,size.width*0.3157995,size.height*0.7528914,size.width*0.3322294,size.height*0.7116985);
    path_9.cubicTo(size.width*0.3407907,size.height*0.6903052,size.width*0.3435686,size.height*0.6688240,size.width*0.3405603,size.height*0.6473408);
    path_9.cubicTo(size.width*0.3380142,size.height*0.6297491,size.width*0.3046922,size.height*0.6068539,size.width*0.3750397,size.height*0.5959775);
    path_9.cubicTo(size.width*0.4928284,size.height*0.5776798,size.width*0.5877059,size.height*0.6040225,size.width*0.6008971,size.height*0.6310768);
    path_9.cubicTo(size.width*0.6189461,size.height*0.6681161,size.width*0.5370245,size.height*0.7116086,size.width*0.4865794,size.height*0.7458221);
    path_9.cubicTo(size.width*0.4171564,size.height*0.7927622,size.width*0.3340799,size.height*0.8383783,size.width*0.2507730,size.height*0.8839064);
    path_9.close();

Paint paint9Fill = Paint()..style=PaintingStyle.fill;
paint9Fill.color = const Color(0xff191919).withOpacity(1.0);
canvas.drawPath(path_9,paint9Fill);

Path path_10 = Path();
    path_10.moveTo(size.width*0.5975833,size.height*0.09851554);
    path_10.cubicTo(size.width*0.5929559,size.height*0.09365337,size.width*0.5848578,size.height*0.08932154,size.width*0.5739804,size.height*0.08622753);
    path_10.cubicTo(size.width*0.5735196,size.height*0.08587378,size.width*0.5728235,size.height*0.08543202,size.width*0.5725931,size.height*0.08498970);
    path_10.cubicTo(size.width*0.5716667,size.height*0.08348727,size.width*0.5723627,size.height*0.08189569,size.width*0.5716667,size.height*0.08039270);
    path_10.cubicTo(size.width*0.5691225,size.height*0.07526536,size.width*0.5510735,size.height*0.07393951,size.width*0.5378824,size.height*0.07526536);
    path_10.cubicTo(size.width*0.5413529,size.height*0.06872378,size.width*0.5161275,size.height*0.06333127,size.width*0.5034020,size.height*0.06783970);
    path_10.cubicTo(size.width*0.4990049,size.height*0.06288895,size.width*0.4844260,size.height*0.05961835,size.width*0.4710044,size.height*0.06059045);
    path_10.cubicTo(size.width*0.4575828,size.height*0.06156311,size.width*0.4469377,size.height*0.06651386,size.width*0.4471696,size.height*0.07172959);
    path_10.cubicTo(size.width*0.4425412,size.height*0.06943127,size.width*0.4367564,size.height*0.06748596,size.width*0.4300456,size.height*0.06607154);
    path_10.cubicTo(size.width*0.4177809,size.height*0.06916554,size.width*0.4096819,size.height*0.07446985,size.width*0.4085240,size.height*0.08003951);
    path_10.cubicTo(size.width*0.3948721,size.height*0.07570768,size.width*0.3703417,size.height*0.07977378,size.width*0.3689534,size.height*0.08649270);
    path_10.cubicTo(size.width*0.3631686,size.height*0.08375187,size.width*0.3506721,size.height*0.08463596,size.width*0.3446554,size.height*0.08737678);
    path_10.cubicTo(size.width*0.3386387,size.height*0.09011704,size.width*0.3374824,size.height*0.09383052,size.width*0.3363245,size.height*0.09736629);
    path_10.cubicTo(size.width*0.3293833,size.height*0.09391854,size.width*0.3138779,size.height*0.09480262,size.width*0.3069353,size.height*0.09825037);
    path_10.cubicTo(size.width*0.2999941,size.height*0.1016981,size.width*0.2999941,size.height*0.1064721,size.width*0.3027706,size.height*0.1107154);
    path_10.cubicTo(size.width*0.2872667,size.height*0.1121298,size.width*0.2733814,size.height*0.1161079,size.width*0.2650510,size.height*0.1213238);
    path_10.cubicTo(size.width*0.2682907,size.height*0.1230034,size.width*0.2715309,size.height*0.1247715,size.width*0.2747696,size.height*0.1264511);
    path_10.cubicTo(size.width*0.2513975,size.height*0.1274238,size.width*0.2324230,size.height*0.1361755,size.width*0.2340417,size.height*0.1451041);
    path_10.cubicTo(size.width*0.2289510,size.height*0.1474912,size.width*0.2266368,size.height*0.1508504,size.width*0.2294147,size.height*0.1537678);
    path_10.cubicTo(size.width*0.2333475,size.height*0.1578345,size.width*0.2456127,size.height*0.1601330,size.width*0.2564897,size.height*0.1593375);
    path_10.cubicTo(size.width*0.2470010,size.height*0.1611056,size.width*0.2405221,size.height*0.1653483,size.width*0.2426044,size.height*0.1694150);
    path_10.cubicTo(size.width*0.2439926,size.height*0.1723322,size.width*0.2500093,size.height*0.1748079,size.width*0.2571838,size.height*0.1760451);
    path_10.cubicTo(size.width*0.2495471,size.height*0.1806421,size.width*0.2453809,size.height*0.1856815,size.width*0.2509353,size.height*0.1905431);
    path_10.cubicTo(size.width*0.2564897,size.height*0.1952285,size.width*0.2699108,size.height*0.1976161,size.width*0.2835627,size.height*0.1977921);
    path_10.cubicTo(size.width*0.2861088,size.height*0.1984120,size.width*0.2886549,size.height*0.1988539,size.width*0.2916632,size.height*0.1990300);
    path_10.cubicTo(size.width*0.2965221,size.height*0.1992079,size.width*0.3013824,size.height*0.1979700,size.width*0.3036966,size.height*0.1964663);
    path_10.cubicTo(size.width*0.3048529,size.height*0.1962903,size.width*0.3062412,size.height*0.1960243,size.width*0.3073990,size.height*0.1958483);
    path_10.cubicTo(size.width*0.3108696,size.height*0.1973502,size.width*0.3157299,size.height*0.1984120,size.width*0.3208206,size.height*0.1985000);
    path_10.cubicTo(size.width*0.3249853,size.height*0.1978801,size.width*0.3284574,size.height*0.1965543,size.width*0.3298456,size.height*0.1949644);
    path_10.cubicTo(size.width*0.3326221,size.height*0.1959363,size.width*0.3360941,size.height*0.1964663,size.width*0.3397966,size.height*0.1966442);
    path_10.cubicTo(size.width*0.3409529,size.height*0.1969981,size.width*0.3423412,size.height*0.1972622,size.width*0.3434990,size.height*0.1975262);
    path_10.lineTo(size.width*0.3465069,size.height*0.1981461);
    path_10.cubicTo(size.width*0.3467387,size.height*0.1967322,size.width*0.3483578,size.height*0.1954944,size.width*0.3518294,size.height*0.1946105);
    path_10.cubicTo(size.width*0.3559941,size.height*0.1935487,size.width*0.3596966,size.height*0.1929307,size.width*0.3638627,size.height*0.1926648);
    path_10.cubicTo(size.width*0.3643250,size.height*0.1925768,size.width*0.3645569,size.height*0.1923989,size.width*0.3650191,size.height*0.1923109);
    path_10.cubicTo(size.width*0.3659451,size.height*0.1921348,size.width*0.3668711,size.height*0.1919588,size.width*0.3677956,size.height*0.1917809);
    path_10.cubicTo(size.width*0.3696475,size.height*0.1911629,size.width*0.3714995,size.height*0.1906311,size.width*0.3735819,size.height*0.1901011);
    path_10.cubicTo(size.width*0.3728877,size.height*0.1898352,size.width*0.3721936,size.height*0.1895712,size.width*0.3714995,size.height*0.1893052);
    path_10.cubicTo(size.width*0.3752020,size.height*0.1890412,size.width*0.3786725,size.height*0.1884213,size.width*0.3809868,size.height*0.1873614);
    path_10.cubicTo(size.width*0.3876975,size.height*0.1844436,size.width*0.3888554,size.height*0.1802004,size.width*0.3946402,size.height*0.1770178);
    path_10.cubicTo(size.width*0.3990368,size.height*0.1745427,size.width*0.4041275,size.height*0.1700339,size.width*0.3962603,size.height*0.1697687);
    path_10.cubicTo(size.width*0.4092181,size.height*0.1674702,size.width*0.4200951,size.height*0.1634036,size.width*0.4261118,size.height*0.1583648);
    path_10.cubicTo(size.width*0.4427730,size.height*0.1596906,size.width*0.4603593,size.height*0.1537678,size.width*0.4592029,size.height*0.1473140);
    path_10.cubicTo(size.width*0.4744765,size.height*0.1458996,size.width*0.4867402,size.height*0.1407723,size.width*0.4890544,size.height*0.1348496);
    path_10.cubicTo(size.width*0.5036324,size.height*0.1372361,size.width*0.5223775,size.height*0.1323740,size.width*0.5221471,size.height*0.1263625);
    path_10.cubicTo(size.width*0.5244608,size.height*0.1294566,size.width*0.5341814,size.height*0.1314904,size.width*0.5422794,size.height*0.1306064);
    path_10.cubicTo(size.width*0.5503775,size.height*0.1297223,size.width*0.5557010,size.height*0.1262745,size.width*0.5538480,size.height*0.1231805);
    path_10.cubicTo(size.width*0.5540833,size.height*0.1231805,size.width*0.5543137,size.height*0.1231805,size.width*0.5543137,size.height*0.1231805);
    path_10.cubicTo(size.width*0.5547745,size.height*0.1232685,size.width*0.5550049,size.height*0.1233571,size.width*0.5554706,size.height*0.1234457);
    path_10.cubicTo(size.width*0.5566275,size.height*0.1239760,size.width*0.5577843,size.height*0.1245064,size.width*0.5589412,size.height*0.1250367);
    path_10.cubicTo(size.width*0.5621814,size.height*0.1226496,size.width*0.5700490,size.height*0.1212352,size.width*0.5769902,size.height*0.1201745);
    path_10.cubicTo(size.width*0.5797696,size.height*0.1197322,size.width*0.5827745,size.height*0.1197322,size.width*0.5853186,size.height*0.1199974);
    path_10.cubicTo(size.width*0.5846275,size.height*0.1195556,size.width*0.5839314,size.height*0.1191139,size.width*0.5832402,size.height*0.1186715);
    path_10.cubicTo(size.width*0.5843971,size.height*0.1187601,size.width*0.5857843,size.height*0.1187601,size.width*0.5869412,size.height*0.1185830);
    path_10.cubicTo(size.width*0.5922647,size.height*0.1179640,size.width*0.5957353,size.height*0.1161079,size.width*0.5987402,size.height*0.1142511);
    path_10.cubicTo(size.width*0.6038333,size.height*0.1109805,size.width*0.6086912,size.height*0.1073562,size.width*0.6068431,size.height*0.1035547);
    path_10.cubicTo(size.width*0.6063775,size.height*0.1013448,size.width*0.6024461,size.height*0.09948820,size.width*0.5975833,size.height*0.09851554);
    path_10.close();

Paint paint10Fill = Paint()..style=PaintingStyle.fill;
paint10Fill.color = const Color(0xff333333).withOpacity(1.0);
canvas.drawPath(path_10,paint10Fill);

Path path_11 = Path();
    path_11.moveTo(size.width*0.8475147,size.height*0.2855655);
    path_11.cubicTo(size.width*0.8539951,size.height*0.2785824,size.width*0.8607059,size.height*0.2715993,size.width*0.8671863,size.height*0.2645262);
    path_11.cubicTo(size.width*0.8706569,size.height*0.2608127,size.width*0.8741275,size.height*0.2571891,size.width*0.8789853,size.height*0.2537416);
    path_11.cubicTo(size.width*0.8875490,size.height*0.2476404,size.width*0.9002794,size.height*0.2423371,size.width*0.9157794,size.height*0.2386236);
    path_11.cubicTo(size.width*0.9234167,size.height*0.2367678,size.width*0.9336029,size.height*0.2353539,size.width*0.9410049,size.height*0.2372978);
    path_11.cubicTo(size.width*0.9449412,size.height*0.2377397,size.width*0.9484118,size.height*0.2385356,size.width*0.9518824,size.height*0.2394195);
    path_11.cubicTo(size.width*0.9585931,size.height*0.2410993,size.width*0.9655343,size.height*0.2427790,size.width*0.9722451,size.height*0.2444588);
    path_11.cubicTo(size.width*0.9750245,size.height*0.2451648,size.width*0.9780294,size.height*0.2458727,size.width*0.9801127,size.height*0.2468446);
    path_11.cubicTo(size.width*0.9838137,size.height*0.2485243,size.width*0.9849706,size.height*0.2509120,size.width*0.9842794,size.height*0.2531217);
    path_11.cubicTo(size.width*0.9835833,size.height*0.2553315,size.width*0.9812696,size.height*0.2573652,size.width*0.9789559,size.height*0.2593989);
    path_11.cubicTo(size.width*0.9653039,size.height*0.2702715,size.width*0.9435490,size.height*0.2792903,size.width*0.9280441,size.height*0.2898090);
    path_11.cubicTo(size.width*0.9222598,size.height*0.2936985,size.width*0.9171716,size.height*0.2978539,size.width*0.9106912,size.height*0.3015674);
    path_11.cubicTo(size.width*0.9030539,size.height*0.3058989,size.width*0.8933333,size.height*0.3096124,size.width*0.8838480,size.height*0.3133240);
    path_11.cubicTo(size.width*0.8829216,size.height*0.3136779,size.width*0.8819951,size.height*0.3140318,size.width*0.8806078,size.height*0.3142079);
    path_11.cubicTo(size.width*0.8782941,size.height*0.3144738,size.width*0.8759804,size.height*0.3139438,size.width*0.8738971,size.height*0.3134139);
    path_11.cubicTo(size.width*0.8657990,size.height*0.3113801,size.width*0.8577010,size.height*0.3093464,size.width*0.8495980,size.height*0.3073127);
    path_11.cubicTo(size.width*0.8468235,size.height*0.3066067,size.width*0.8440441,size.height*0.3058989,size.width*0.8421912,size.height*0.3049270);
    path_11.cubicTo(size.width*0.8403431,size.height*0.3039532,size.width*0.8398775,size.height*0.3026273,size.width*0.8394167,size.height*0.3014794);
    path_11.cubicTo(size.width*0.8375637,size.height*0.2960861,size.width*0.8426569,size.height*0.2906929,size.width*0.8475147,size.height*0.2855655);
    path_11.close();

Paint paint11Fill = Paint()..style=PaintingStyle.fill;
paint11Fill.color = const Color(0xffEDEDED).withOpacity(1.0);
canvas.drawPath(path_11,paint11Fill);

Path path_12 = Path();
    path_12.moveTo(size.width*0.9070098,size.height*0.2996199);
    path_12.cubicTo(size.width*0.9019167,size.height*0.3036873,size.width*0.8963627,size.height*0.3082846,size.width*0.8852549,size.height*0.3098745);
    path_12.cubicTo(size.width*0.8722990,size.height*0.3117322,size.width*0.8586422,size.height*0.3085487,size.width*0.8473039,size.height*0.3055431);
    path_12.cubicTo(size.width*0.8424461,size.height*0.3043052,size.width*0.8375833,size.height*0.3028914,size.width*0.8348088,size.height*0.3009457);
    path_12.cubicTo(size.width*0.8306422,size.height*0.2979401,size.width*0.8327255,size.height*0.2942285,size.width*0.8352696,size.height*0.2908689);
    path_12.cubicTo(size.width*0.8415196,size.height*0.2827360,size.width*0.8498480,size.height*0.2747790,size.width*0.8586422,size.height*0.2669120);
    path_12.cubicTo(size.width*0.8660490,size.height*0.2602809,size.width*0.8739167,size.height*0.2538277,size.width*0.8820147,size.height*0.2473745);
    path_12.cubicTo(size.width*0.8845637,size.height*0.2454288,size.width*0.8871078,size.height*0.2434850,size.width*0.8908088,size.height*0.2418933);
    path_12.cubicTo(size.width*0.8993725,size.height*0.2384457,size.width*0.9130245,size.height*0.2373839,size.width*0.9255196,size.height*0.2381798);
    path_12.cubicTo(size.width*0.9377843,size.height*0.2389757,size.width*0.9491225,size.height*0.2412734,size.width*0.9597696,size.height*0.2437491);
    path_12.cubicTo(size.width*0.9660147,size.height*0.2451648,size.width*0.9727255,size.height*0.2467547,size.width*0.9759657,size.height*0.2492303);
    path_12.cubicTo(size.width*0.9852255,size.height*0.2560375,size.width*0.9576863,size.height*0.2665581,size.width*0.9491225,size.height*0.2715955);
    path_12.cubicTo(size.width*0.9338529,size.height*0.2806142,size.width*0.9190392,size.height*0.2898071,size.width*0.9070098,size.height*0.2996199);
    path_12.close();

Paint paint12Fill = Paint()..style=PaintingStyle.fill;
paint12Fill.color = const Color(0xff333333).withOpacity(1.0);
canvas.drawPath(path_12,paint12Fill);

Path path_13 = Path();
    path_13.moveTo(size.width*0.8479755,size.height*0.2856704);
    path_13.cubicTo(size.width*0.8563088,size.height*0.2765655,size.width*0.8664902,size.height*0.2677247,size.width*0.8766716,size.height*0.2588839);
    path_13.cubicTo(size.width*0.8826863,size.height*0.2536685,size.width*0.8889363,size.height*0.2483652,size.width*0.9002745,size.height*0.2447397);
    path_13.cubicTo(size.width*0.9037451,size.height*0.2436798,size.width*0.9076814,size.height*0.2427079,size.width*0.9123088,size.height*0.2427079);
    path_13.cubicTo(size.width*0.9153186,size.height*0.2427079,size.width*0.9183284,size.height*0.2430599,size.width*0.9211029,size.height*0.2435019);
    path_13.cubicTo(size.width*0.9363775,size.height*0.2457116,size.width*0.9509559,size.height*0.2483652,size.width*0.9648382,size.height*0.2515468);
    path_13.lineTo(size.width*0.9655343,size.height*0.2518127);
    path_13.cubicTo(size.width*0.9467892,size.height*0.2626854,size.width*0.9298971,size.height*0.2740019,size.width*0.9148529,size.height*0.2856704);
    path_13.cubicTo(size.width*0.9081422,size.height*0.2908876,size.width*0.9012010,size.height*0.2964569,size.width*0.8896324,size.height*0.3002566);
    path_13.cubicTo(size.width*0.8880098,size.height*0.3007884,size.width*0.8863922,size.height*0.3012303,size.width*0.8845392,size.height*0.3014944);
    path_13.cubicTo(size.width*0.8822255,size.height*0.3017603,size.width*0.8796814,size.height*0.3015824,size.width*0.8771324,size.height*0.3014064);
    path_13.cubicTo(size.width*0.8725049,size.height*0.3010524,size.width*0.8678775,size.height*0.3006105,size.width*0.8634804,size.height*0.3000805);
    path_13.cubicTo(size.width*0.8574657,size.height*0.2993727,size.width*0.8514461,size.height*0.2984906,size.width*0.8477451,size.height*0.2966330);
    path_13.cubicTo(size.width*0.8447353,size.height*0.2951292,size.width*0.8438137,size.height*0.2931854,size.width*0.8442745,size.height*0.2912397);
    path_13.cubicTo(size.width*0.8447402,size.height*0.2892959,size.width*0.8463578,size.height*0.2875262,size.width*0.8479755,size.height*0.2856704);
    path_13.close();

Paint paint13Fill = Paint()..style=PaintingStyle.fill;
paint13Fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_13,paint13Fill);

Path path_14 = Path();
    path_14.moveTo(size.width*0.8625490,size.height*0.3020880);
    path_14.cubicTo(size.width*0.8667157,size.height*0.3047397,size.width*0.8556078,size.height*0.3050056,size.width*0.8525980,size.height*0.3029719);
    path_14.cubicTo(size.width*0.8484314,size.height*0.3003202,size.width*0.8595392,size.height*0.3002322,size.width*0.8625490,size.height*0.3020880);
    path_14.close();

Paint paint14Fill = Paint()..style=PaintingStyle.fill;
paint14Fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_14,paint14Fill);

Path path_15 = Path();
    path_15.moveTo(size.width*0.6027255,size.height*0.3531124);
    path_15.cubicTo(size.width*0.6483137,size.height*0.4138446,size.width*0.6867255,size.height*0.4752846,size.width*0.7177353,size.height*0.5373446);
    path_15.cubicTo(size.width*0.6381324,size.height*0.5498970,size.width*0.5476520,size.height*0.5490112,size.width*0.4641118,size.height*0.5410562);
    path_15.cubicTo(size.width*0.3805730,size.height*0.5331011,size.width*0.3028206,size.height*0.5184270,size.width*0.2255304,size.height*0.5039270);
    path_15.cubicTo(size.width*0.2398765,size.height*0.4439906,size.width*0.2940275,size.height*0.3854682,size.width*0.3810368,size.height*0.3353427);
    path_15.cubicTo(size.width*0.4055657,size.height*0.3211985,size.width*0.4594848,size.height*0.2948539,size.width*0.5127108,size.height*0.2980356);
    path_15.cubicTo(size.width*0.5663971,size.height*0.3012191,size.width*0.5902304,size.height*0.3366685,size.width*0.6027255,size.height*0.3531124);
    path_15.close();

Paint paint15Fill = Paint()..style=PaintingStyle.fill;
paint15Fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_15,paint15Fill);

Path path_16 = Path();
    path_16.moveTo(size.width*0.5541667,size.height*0.3110468);
    path_16.cubicTo(size.width*0.5576373,size.height*0.3019419,size.width*0.5599510,size.height*0.2909794,size.width*0.5409755,size.height*0.2852322);
    path_16.cubicTo(size.width*0.5287108,size.height*0.2815206,size.width*0.5118186,size.height*0.2815206,size.width*0.4963137,size.height*0.2816086);
    path_16.cubicTo(size.width*0.4796525,size.height*0.2816966,size.width*0.4629907,size.height*0.2818745,size.width*0.4463289,size.height*0.2819625);
    path_16.cubicTo(size.width*0.4322137,size.height*0.2820506,size.width*0.4174039,size.height*0.2822266,size.width*0.4046765,size.height*0.2846142);
    path_16.cubicTo(size.width*0.3829240,size.height*0.2885918,size.width*0.3720471,size.height*0.2978745,size.width*0.3623279,size.height*0.3063614);
    path_16.cubicTo(size.width*0.2940627,size.height*0.3655019,size.width*0.1987225,size.height*0.4201367,size.width*0.08186078,size.height*0.4669026);
    path_16.cubicTo(size.width*0.07630686,size.height*0.4691124,size.width*0.07052157,size.height*0.4714101,size.width*0.06820784,size.height*0.4744157);
    path_16.cubicTo(size.width*0.06357941,size.height*0.4801629,size.width*0.07283578,size.height*0.4860843,size.width*0.08209216,size.height*0.4908596);
    path_16.cubicTo(size.width*0.1640113,size.height*0.5330281,size.width*0.2859637,size.height*0.5637041,size.width*0.4197181,size.height*0.5758127);
    path_16.cubicTo(size.width*0.4655368,size.height*0.5799682,size.width*0.5460686,size.height*0.5873951,size.width*0.5539363,size.height*0.5629082);
    path_16.cubicTo(size.width*0.5620343,size.height*0.5374457,size.width*0.5361176,size.height*0.5053577,size.width*0.5326471,size.height*0.4793670);
    path_16.cubicTo(size.width*0.5252402,size.height*0.4231423,size.width*0.5324118,size.height*0.3666517,size.width*0.5541667,size.height*0.3110468);
    path_16.close();

Paint paint16Fill = Paint()..style=PaintingStyle.fill;
paint16Fill.color = const Color(0xffCDCCC7).withOpacity(1.0);
canvas.drawPath(path_16,paint16Fill);

Path path_17 = Path();
    path_17.moveTo(size.width*0.1118578,size.height*0.5585749);
    path_17.cubicTo(size.width*0.1125520,size.height*0.5564513,size.width*0.1153289,size.height*0.5545056,size.width*0.1183373,size.height*0.5528296);
    path_17.cubicTo(size.width*0.1215770,size.height*0.5509738,size.width*0.1285191,size.height*0.5479625,size.width*0.1356926,size.height*0.5461966);
    path_17.cubicTo(size.width*0.1375446,size.height*0.5457547,size.width*0.1393951,size.height*0.5454007,size.width*0.1410152,size.height*0.5451367);
    path_17.cubicTo(size.width*0.1627676,size.height*0.5372659,size.width*0.2257103,size.height*0.4896199,size.width*0.2340412,size.height*0.4842266);
    path_17.cubicTo(size.width*0.2671328,size.height*0.4631873,size.width*0.2967534,size.height*0.4414382,size.width*0.3233662,size.height*0.4190730);
    path_17.cubicTo(size.width*0.3499775,size.height*0.3967079,size.width*0.3721931,size.height*0.3737228,size.width*0.3925559,size.height*0.3503839);
    path_17.cubicTo(size.width*0.4069034,size.height*0.3341180,size.width*0.4034328,size.height*0.3087453,size.width*0.4469373,size.height*0.2989326);
    path_17.cubicTo(size.width*0.4779466,size.height*0.2919494,size.width*0.4966912,size.height*0.2868221,size.width*0.5202941,size.height*0.2971648);
    path_17.cubicTo(size.width*0.5438971,size.height*0.3075075,size.width*0.5290882,size.height*0.3128127,size.width*0.5327892,size.height*0.3265150);
    path_17.cubicTo(size.width*0.5371863,size.height*0.3430468,size.width*0.4726240,size.height*0.3651479,size.width*0.4575824,size.height*0.3807940);
    path_17.cubicTo(size.width*0.4349044,size.height*0.4043109,size.width*0.4126897,size.height*0.4203989,size.width*0.3627044,size.height*0.4448876);
    path_17.cubicTo(size.width*0.2844882,size.height*0.4831667,size.width*0.2500088,size.height*0.5164045,size.width*0.1555946,size.height*0.5489382);
    path_17.cubicTo(size.width*0.1558250,size.height*0.5492921,size.width*0.1560569,size.height*0.5496442,size.width*0.1562887,size.height*0.5500880);
    path_17.cubicTo(size.width*0.1574451,size.height*0.5536255,size.width*0.1525863,size.height*0.5570730,size.width*0.1468000,size.height*0.5599869);
    path_17.cubicTo(size.width*0.1433294,size.height*0.5617547,size.width*0.1393951,size.height*0.5635243,size.width*0.1340730,size.height*0.5645843);
    path_17.cubicTo(size.width*0.1287505,size.height*0.5655599,size.width*0.1220397,size.height*0.5657341,size.width*0.1174113,size.height*0.5644101);
    path_17.cubicTo(size.width*0.1127833,size.height*0.5629925,size.width*0.1111632,size.height*0.5606948,size.width*0.1118578,size.height*0.5585749);
    path_17.close();

Paint paint17Fill = Paint()..style=PaintingStyle.fill;
paint17Fill.color = const Color(0xff7C6C61).withOpacity(1.0);
canvas.drawPath(path_17,paint17Fill);

Path path_18 = Path();
    path_18.moveTo(size.width*0.8387304,size.height*0.9670037);
    path_18.cubicTo(size.width*0.8102647,size.height*0.9591330,size.width*0.7912892,size.height*0.9473783,size.width*0.7681471,size.height*0.9372978);
    path_18.cubicTo(size.width*0.7667598,size.height*0.9367715,size.width*0.7653725,size.height*0.9361498,size.width*0.7637549,size.height*0.9358858);
    path_18.cubicTo(size.width*0.7621324,size.height*0.9356217,size.width*0.7600490,size.height*0.9356217,size.width*0.7581961,size.height*0.9357060);
    path_18.cubicTo(size.width*0.7484804,size.height*0.9358858,size.width*0.7387598,size.height*0.9360599,size.width*0.7290392,size.height*0.9362378);
    path_18.cubicTo(size.width*0.7248775,size.height*0.9533876,size.width*0.7244118,size.height*0.9705375,size.width*0.7274216,size.height*0.9876910);
    path_18.cubicTo(size.width*0.7285784,size.height*0.9806161,size.width*0.7387598,size.height*0.9741629,size.width*0.7484804,size.height*0.9681536);
    path_18.cubicTo(size.width*0.7572745,size.height*0.9719551,size.width*0.7637500,size.height*0.9763727,size.width*0.7676863,size.height*0.9812378);
    path_18.cubicTo(size.width*0.7688431,size.height*0.9825618,size.width*0.7697696,size.height*0.9838895,size.width*0.7723137,size.height*0.9848596);
    path_18.cubicTo(size.width*0.7755539,size.height*0.9860094,size.width*0.7801814,size.height*0.9861891,size.width*0.7843480,size.height*0.9862734);
    path_18.cubicTo(size.width*0.8246127,size.height*0.9872472,size.width*0.8648775,size.height*0.9882172,size.width*0.9051422,size.height*0.9891929);
    path_18.cubicTo(size.width*0.9380049,size.height*0.9899888,size.width*0.9021373,size.height*0.9807060,size.width*0.8917206,size.height*0.9784082);
    path_18.cubicTo(size.width*0.8741324,size.height*0.9745169,size.width*0.8551569,size.height*0.9715112,size.width*0.8387304,size.height*0.9670037);
    path_18.close();

Paint paint18Fill = Paint()..style=PaintingStyle.fill;
paint18Fill.color = const Color(0xffFE8668).withOpacity(1.0);
canvas.drawPath(path_18,paint18Fill);

Path path_19 = Path();
    path_19.moveTo(size.width*0.2269343,size.height*0.9794401);
    path_19.cubicTo(size.width*0.2063387,size.height*0.9742210,size.width*0.1778755,size.height*0.9736049,size.width*0.1621397,size.height*0.9663558);
    path_19.cubicTo(size.width*0.1514946,size.height*0.9614906,size.width*0.1496431,size.height*0.9546854,size.width*0.1498745,size.height*0.9484120);
    path_19.cubicTo(size.width*0.1501064,size.height*0.9422228,size.width*0.1521887,size.height*0.9361217,size.width*0.1561230,size.height*0.9301966);
    path_19.cubicTo(size.width*0.1568172,size.height*0.9292266,size.width*0.1595936,size.height*0.9278989,size.width*0.1614456,size.height*0.9286948);
    path_19.cubicTo(size.width*0.1475608,size.height*0.9247154,size.width*0.1327505,size.height*0.9212659,size.width*0.1170147,size.height*0.9184419);
    path_19.cubicTo(size.width*0.1049814,size.height*0.9267491,size.width*0.09271667,size.height*0.9350581,size.width*0.08068333,size.height*0.9434551);
    path_19.cubicTo(size.width*0.07003873,size.height*0.9508839,size.width*0.05916225,size.height*0.9583109,size.width*0.04412088,size.height*0.9645000);
    path_19.cubicTo(size.width*0.05707990,size.height*0.9608727,size.width*0.07003873,size.height*0.9573371,size.width*0.08276618,size.height*0.9537154);
    path_19.cubicTo(size.width*0.08253480,size.height*0.9592809,size.width*0.08438578,size.height*0.9648539,size.width*0.08855147,size.height*0.9701573);
    path_19.cubicTo(size.width*0.1082211,size.height*0.9719232,size.width*0.1271966,size.height*0.9750169,size.width*0.1438583,size.height*0.9793502);
    path_19.cubicTo(size.width*0.1501064,size.height*0.9809438,size.width*0.1563534,size.height*0.9827996,size.width*0.1635279,size.height*0.9836798);
    path_19.cubicTo(size.width*0.1709328,size.height*0.9845655,size.width*0.1788015,size.height*0.9845655,size.width*0.1864368,size.height*0.9844757);
    path_19.cubicTo(size.width*0.1980078,size.height*0.9843914,size.width*0.2098093,size.height*0.9844757,size.width*0.2216123,size.height*0.9842116);
    path_19.cubicTo(size.width*0.2329510,size.height*0.9837697,size.width*0.2389676,size.height*0.9824457,size.width*0.2269343,size.height*0.9794401);
    path_19.close();

Paint paint19Fill = Paint()..style=PaintingStyle.fill;
paint19Fill.color = const Color(0xffFE8668).withOpacity(1.0);
canvas.drawPath(path_19,paint19Fill);

Path path_20 = Path();
    path_20.moveTo(size.width*0.3185495,size.height*0.2618989);
    path_20.cubicTo(size.width*0.3331275,size.height*0.2585393,size.width*0.3502515,size.height*0.2574794,size.width*0.3669132,size.height*0.2567715);
    path_20.cubicTo(size.width*0.4451294,size.height*0.2537659,size.width*0.5256618,size.height*0.2602191,size.width*0.5941569,size.height*0.2749831);
    path_20.cubicTo(size.width*0.6110490,size.height*0.2786086,size.width*0.6279412,size.height*0.2829401,size.width*0.6381275,size.height*0.2893034);
    path_20.cubicTo(size.width*0.6483088,size.height*0.2955805,size.width*0.6506225,size.height*0.3043333,size.width*0.6388186,size.height*0.3102566);
    path_20.cubicTo(size.width*0.6332647,size.height*0.3130861,size.width*0.6251667,size.height*0.3150300,size.width*0.6193824,size.height*0.3178596);
    path_20.cubicTo(size.width*0.5985539,size.height*0.3279363,size.width*0.6170686,size.height*0.3423464,size.width*0.6186863,size.height*0.3550768);
    path_20.cubicTo(size.width*0.6198431,size.height*0.3644476,size.width*0.6110490,size.height*0.3735543,size.width*0.6024902,size.height*0.3823052);
    path_20.cubicTo(size.width*0.5770343,size.height*0.4083839,size.width*0.5504216,size.height*0.4351704,size.width*0.4999755,size.height*0.4551498);
    path_20.cubicTo(size.width*0.4969657,size.height*0.4563876,size.width*0.4937255,size.height*0.4575356,size.width*0.4895603,size.height*0.4582434);
    path_20.cubicTo(size.width*0.4809985,size.height*0.4596573,size.width*0.4710480,size.height*0.4583315,size.width*0.4624853,size.height*0.4570056);
    path_20.cubicTo(size.width*0.4472118,size.height*0.4547079,size.width*0.4289314,size.height*0.4508165,size.width*0.4296255,size.height*0.4445412);
    path_20.cubicTo(size.width*0.4298574,size.height*0.4419775,size.width*0.4335598,size.height*0.4395899,size.width*0.4370304,size.height*0.4373801);
    path_20.cubicTo(size.width*0.4597088,size.height*0.4232360,size.width*0.4823873,size.height*0.4090037,size.width*0.5050637,size.height*0.3948577);
    path_20.cubicTo(size.width*0.5386176,size.height*0.3739064,size.width*0.5733284,size.height*0.3496835,size.width*0.5592157,size.height*0.3260805);
    path_20.cubicTo(size.width*0.4890975,size.height*0.3093727,size.width*0.3847328,size.height*0.3141461,size.width*0.3185495,size.height*0.2935487);
    path_20.cubicTo(size.width*0.3055907,size.height*0.2895693,size.width*0.2940196,size.height*0.2840880,size.width*0.2935574,size.height*0.2777247);
    path_20.cubicTo(size.width*0.2926314,size.height*0.2711816,size.width*0.3039706,size.height*0.2652584,size.width*0.3185495,size.height*0.2618989);
    path_20.close();

Paint paint20Fill = Paint()..style=PaintingStyle.fill;
paint20Fill.color = const Color(0xffFE8668).withOpacity(1.0);
canvas.drawPath(path_20,paint20Fill);

Path path_21 = Path();
    path_21.moveTo(size.width*0.4135740,size.height*0.003481685);
    path_21.cubicTo(size.width*0.3733083,size.height*0.01046556,size.width*0.3728461,size.height*0.03495318,size.width*0.3703000,size.height*0.04847903);
    path_21.cubicTo(size.width*0.3654412,size.height*0.07473464,size.width*0.3693755,size.height*0.1009906,size.width*0.3811770,size.height*0.1268929);
    path_21.cubicTo(size.width*0.3758544,size.height*0.1277770,size.width*0.3709956,size.height*0.1289262,size.width*0.3670613,size.height*0.1307824);
    path_21.cubicTo(size.width*0.3483172,size.height*0.1393575,size.width*0.3332755,size.height*0.1485515,size.width*0.3339696,size.height*0.1602210);
    path_21.cubicTo(size.width*0.3346637,size.height*0.1728627,size.width*0.3571103,size.height*0.1850620,size.width*0.3888137,size.height*0.1888633);
    path_21.cubicTo(size.width*0.4114917,size.height*0.1915150,size.width*0.4341701,size.height*0.1894831,size.width*0.4515245,size.height*0.1843551);
    path_21.cubicTo(size.width*0.4621696,size.height*0.1836476,size.width*0.4725838,size.height*0.1817914,size.width*0.4816088,size.height*0.1789625);
    path_21.cubicTo(size.width*0.5065980,size.height*0.1710060,size.width*0.5135441,size.height*0.1578339,size.width*0.5061373,size.height*0.1463416);
    path_21.cubicTo(size.width*0.5052108,size.height*0.1385620,size.width*0.4929461,size.height*0.1304292,size.width*0.4742029,size.height*0.1272466);
    path_21.cubicTo(size.width*0.4714265,size.height*0.1268043,size.width*0.4686500,size.height*0.1264506,size.width*0.4658721,size.height*0.1260974);
    path_21.cubicTo(size.width*0.4568471,size.height*0.1244172,size.width*0.4466657,size.height*0.1234451,size.width*0.4353265,size.height*0.1234451);
    path_21.cubicTo(size.width*0.4306980,size.height*0.1234451,size.width*0.4260696,size.height*0.1236217,size.width*0.4219049,size.height*0.1238869);
    path_21.cubicTo(size.width*0.4212108,size.height*0.1053225,size.width*0.4207471,size.height*0.08684588,size.width*0.4214412,size.height*0.06828146);
    path_21.cubicTo(size.width*0.4219049,size.height*0.06165112,size.width*0.4225990,size.height*0.05510936,size.width*0.4235250,size.height*0.04847903);
    path_21.cubicTo(size.width*0.4186647,size.height*0.03813577,size.width*0.4313922,size.height*0.03159382,size.width*0.4617074,size.height*0.02876498);
    path_21.cubicTo(size.width*0.4742029,size.height*0.04078783,size.width*0.4783686,size.height*0.05378315,size.width*0.4785995,size.height*0.06660131);
    path_21.cubicTo(size.width*0.4785995,size.height*0.07579532,size.width*0.5149314,size.height*0.07579532,size.width*0.5158578,size.height*0.06660131);
    path_21.cubicTo(size.width*0.5184020,size.height*0.04043408,size.width*0.5170147,size.height*-0.01428742,size.width*0.4135740,size.height*0.003481685);
    path_21.close();

Paint paint21Fill = Paint()..style=PaintingStyle.fill;
paint21Fill.color = const Color(0xffFE8668).withOpacity(1.0);
canvas.drawPath(path_21,paint21Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}