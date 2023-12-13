import 'package:demo/models/OfferModel.dart';
import 'package:demo/repositories/OfferRepository.dart';

class OfferProvider {
  final OfferRepository _offerRepository;
  OfferProvider(this._offerRepository);
  Future<List<OfferModel>> getOffer() async {
    var offers = await _offerRepository.getOffers();
    return offers.map((offer) => OfferModel.fromJson(offer)).toList();
  }
}
