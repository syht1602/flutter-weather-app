import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_demo_app/injection_container.dart';
import 'package:flutter_counter_demo_app/presentation/blocs/get_weather_bloc/get_weather_bloc.dart';
import 'package:flutter_counter_demo_app/presentation/widgets/common_widget/get_weather_widget.dart';
import 'package:flutter_counter_demo_app/presentation/widgets/common_widget/loading_widget.dart';
import 'package:flutter_counter_demo_app/presentation/widgets/common_widget/show_message_widget.dart';

class GetWeatherPage extends StatelessWidget {
  const GetWeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Weather Location"),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<GetWeatherBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => sl<GetWeatherBloc>(),
        child: BlocBuilder<GetWeatherBloc, GetWeatherState>(
          builder: (context, state) {
            if (state is Empty) {
              return ShowMessageWidget(msg: "Initial state");
            } else if (state is Loading) {
              return LoadingWidget();
            } else if (state is Loaded) {
              return GetWeatherWidget(weatherModel: state.weatherModel);
            } else if (state is Error) {
              return ShowMessageWidget(msg: state.message);
            }
            return Container(
              alignment: Alignment.center,
              child: Text('Initial state'),
            );
          },
        ));
  }
}
