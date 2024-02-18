import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_trading_app/ui/common/app_colors.dart';
import 'package:flutter_trading_app/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: screenHeight(context),
            width: screenWidth(context),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      kcCard,
                      kcPrimaryColorDark,
                      kcPrimaryColor,
                      Colors.deepPurple,
                    ],
                  )
              ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox( width: 45,height: 45,child: CircleAvatar(child: Icon(Icons.person),backgroundColor: Colors.purple,)),
                          horizontalSpaceSmall,
                          Text('WELCOME BACK!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.purple),),
                        ],
                      ),

                      Icon(Icons.notifications,color: kcPurpleDark,)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  height: 170,
                  width: 300,
                  child: Card(
                    color: kcCard,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.deepPurple,
                                  Colors.blue,
                                  Colors.deepPurple,
                                ],
                              )
                          ),
                          height: 100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Total Balance",style: TextStyle(fontSize: 15,color: Colors.white),),

                                ],
                              ),
                              Text('\$1212.25',style: TextStyle(fontSize: 15,color: Colors.white),)

                            ],
                          ),

                        ),
                        Container(
                          height: 62,
                          color: kcPurpleDark,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
