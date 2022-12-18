import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:resepmakanan/model/detail_resep_makanan_model.dart';
import 'package:resepmakanan/request/resep_makanan_request.dart';
import 'package:resepmakanan/model/resep_makanan_model.dart';
part 'resep_makanan_state.dart';

class ResepMakananCubit extends Cubit<ResepMakananState> {
  ResepMakananCubit() : super(ResepMakananInitial());

  final ResepMakananRequest resepMakananRequest = ResepMakananRequest();

  ResepMakananModel resepMakananModel = ResepMakananModel();

  DetailResepMakananModel detailResepMakananModel = DetailResepMakananModel();

  getDataResepMakanan() async {
    emit(ResepMakananInitial());
    resepMakananModel = await resepMakananRequest.getResepMakanan();
    emit(DataResepMakanan(resepMakananModel));
  }

  getDetailDataResepMakanan(String key) async {
    emit(ResepMakananInitial());
    detailResepMakananModel =
        await resepMakananRequest.getDetailResepMakanan(key);
    emit(DataDetailResepMakanan(detailResepMakananModel));
  }
}
