part of 'resep_makanan_cubit.dart';

@immutable
abstract class ResepMakananState {}

class ResepMakananInitial extends ResepMakananState {}

class DataResepMakanan extends ResepMakananState {
  final ResepMakananModel data;
  DataResepMakanan(this.data);
}

class DataDetailResepMakanan extends ResepMakananState {
  final DetailResepMakananModel data;
  DataDetailResepMakanan(this.data);
}
