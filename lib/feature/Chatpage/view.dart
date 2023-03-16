import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bandage/feature/Chatpage/cubit.dart';
import 'package:bandage/feature/Chatpage/modelbot.dart';
import 'package:bandage/feature/Chatpage/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBotScreen extends StatelessWidget {
  TextEditingController message = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitChat(),
      child: BlocConsumer<CubitChat, ChatState>(
        builder: (context, state) {
          var cubit = CubitChat.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFFFE9B1),
              elevation: 0,
              leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red[600],
                ),
              ),
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.red[600],
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/drbot.png"),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Dr/Bot",
                    style: TextStyle(color: Colors.red[600]),
                  )
                ],
              ),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/bg_whats.jpg'),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: cubit.messages.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: cubit.messages[index].type == "ask"
                                ? sender(cubit.messages[index])
                                : answer(cubit.messages[index]));
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 7.5,
                      ),
                    ),
                  ),
                  Visibility(child: LinearProgressIndicator(),visible: state is Sendmessageloading ? true : false,),
                SizedBox(height: 70,)
                ],
              ),
            ),
            bottomSheet: BottomSheet(
              onClosing: () {},
              builder: (context) {
                return Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Form(
                      key: formstate,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.newline,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Can't Send Message Empty";
                                }
                              },
                              maxLines: null,
                              onChanged: (value) {
                                print(value);
                              },
                              controller: message,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.red,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.5,
                          ),
                          InkWell(
                            onTap: () {
                              if (formstate.currentState!.validate()) {
                                cubit.sendmessage(message: message.text);
                                message.text = '';
                              }
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 25,
                              child: Icon(Icons.send),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}

Widget sender(ModelChat model) {
  return Row(
    children: [
      CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/images/user-image.png"),
      ),
      SizedBox(
        width: 8,
      ),
      Expanded(
          child: DefaultTextStyle(
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.w700, fontSize: 16),
        child: AnimatedTextKit(
            isRepeatingAnimation: false,
            repeatForever: false,
            displayFullTextOnTap: true,
            totalRepeatCount: 1,
            animatedTexts: [
              TyperAnimatedText(model.message!),
            ]),
      )),
    ],
  );
}

Widget answer(ModelChat model) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: DefaultTextStyle(
          style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
          child: AnimatedTextKit(
          isRepeatingAnimation: false,
          repeatForever: false,
          displayFullTextOnTap: true,
          totalRepeatCount: 1,
          animatedTexts: [
            TyperAnimatedText(model.message!),
          ]),
        ),
      ),

      SizedBox(
        width: 8,
      ),
      CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/images/drbot.png"),
      ),
    ],
  );
}
// Controller index screll
// Box Text
// Handel lang