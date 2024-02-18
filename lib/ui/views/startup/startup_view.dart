import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_trading_app/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return  Scaffold(
      body: Center(
        child: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurple,
                  Colors.blue,
                  Colors.blueAccent,
                  Colors.deepPurple,
                ],
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenWidth(context)/2,
                  height: 150,
                  child: Image(image:AssetImage('assets/coins.png')),),
              verticalSpaceMedium,
              Text("BITIFY",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              verticalSpaceMedium,
              Text("The most trusted and secure wallet",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}



/*  Text(
  'STACKED',
  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
  ),
  Row(
  mainAxisSize: MainAxisSize.min,
  children: [
  Text('Loading ...', style: TextStyle(fontSize: 16)),
  horizontalSpaceSmall,
  SizedBox(
  width: 16,
  height: 16,
  child: CircularProgressIndicator(
  color: Colors.black,
  strokeWidth: 6,
  ),
  )
  ],
  ),*/
