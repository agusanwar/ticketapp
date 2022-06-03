import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticketapp/models/destinaiton_model.dart';

class DestinationServices {
  final CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destination');

  Future<List<DestinationModel>> fetchDestination() async {
    try {
      QuerySnapshot resault = await _destinationRef.get();

      List<DestinationModel> destination = resault.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destination;
    } catch (e) {
      rethrow;
    }
  }
}
