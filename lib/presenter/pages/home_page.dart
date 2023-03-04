import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenlo2/main/config/injection.dart';
import 'package:kenlo2/presenter/cubit/get_items_cubit.dart';
import 'package:kenlo2/presenter/pages/components/items_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GetItemsCubit>()..getItems(),
      child: const HomePageView(),
    );
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Kenlo Test'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BlocBuilder<GetItemsCubit, GetItemsState>(
                  builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (returnModel) => ItemsList(returnModel: returnModel),
                  failed: (error) => Center(
                    child: Text(error),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
