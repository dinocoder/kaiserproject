import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kaiserproject/models/user_information.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference userCollection = Firestore.instance.collection('users');

  //Collect data for the SURVEYS page (add more page support later)
  Future updateUserData(String username, int statusMood, String wentWell, String wentPoorly) async {
    return await userCollection.document(uid).setData({
      'username': username,
      'statusMood': statusMood,
      'wentWell': wentWell,
      'wentPoorly': wentPoorly
    });
  }

  //user information from snapshot
  List<UserInformation> _userInformationFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return UserInformation(
          username: doc.data['username'] ?? '',
          statusMood: doc.data['statusMood'] ?? 1,
          wentWell: doc.data['wentWell'] ?? '',
          wentPoorly: doc.data['wentPoorly'] ?? ''
      );
    }).toList();
  }

  //get user stream
  Stream<List<UserInformation>> get users {
    return userCollection.snapshots().map(_userInformationFromSnapshot);
  }

}