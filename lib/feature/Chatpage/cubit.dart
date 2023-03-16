import 'package:bandage/feature/Chatpage/dio.dart';
import 'package:bandage/feature/Chatpage/modelbot.dart';
import 'package:bandage/feature/Chatpage/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitChat extends Cubit<ChatState> {
  CubitChat() : super(initChatState());
  static CubitChat get(context) => BlocProvider.of(context);

  List<ModelChat> messages = [];

  void sendmessage({required String message}) {
       messages.add(ModelChat(
      imageUrls: "",
      type: "ask",
      message: message,
    ));
   
  emit(Sendmessageloading());
    DioApp.postData(
        url: "https://api.writesonic.com/v2/business/content/chatsonic",
        data: {
          "enable_google_results": "true",
          "enable_memory": false,
          "input_text": message
        }).then((value) {
          
      print("Enter");
      messages.add(ModelChat(
        imageUrls: "",
        type: "answer",
        message: value.data['message'],
      ));
      print(value.data);
      emit(Sendmessagesuccess());
    }).catchError((error) {
      print("This Error ${error.toString()}");
    });
  }
}
