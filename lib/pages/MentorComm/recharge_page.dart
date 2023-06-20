
import 'package:flutter/material.dart';
import 'package:skido/widgets/Mentor/recharge_widgets.dart';



class RechargePage extends StatefulWidget {
  const RechargePage({Key? key}) : super(key: key);


  @override
  State<RechargePage> createState() => _RechargePageState();
}


class _RechargePageState extends State<RechargePage> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/elements/backg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_horiz,color: Colors.white,),
                    )
                  ],
                ),
                SizedBox(height: height*.02,),
                RechargeHeader(),
                SizedBox(height: height*.04,),
                BalanceWidget(balance: 0),
                SizedBox(height: height*.04,),
                WalletWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
