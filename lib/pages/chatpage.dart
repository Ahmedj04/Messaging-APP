import 'package:flutter/material.dart';
import 'package:messagingapp/mdels/chatUsersModel.dart';
import 'package:messagingapp/widgets/conversationlist.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({ Key? key }) : super(key: key);

  @override
  _ChatpageState createState() => _ChatpageState();
}


class _ChatpageState extends State<Chatpage> {
    List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "https://st3.depositphotos.com/1157310/37720/v/600/depositphotos_377204102-stock-illustration-handy-man-carpenter-builder-emoji.jpg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "https://image.shutterstock.com/image-vector/emoji-chef-cook-cartoon-character-260nw-1334240723.jpg", time: "18 Feb"),
  ];
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
   
       body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(20),
                    //     borderSide: BorderSide(
                    //         color: Colors.grey.shade100
                    //     )
                    // ),
                    enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                    borderSide:  BorderSide( color: Colors.grey.shade100, width: 2.0)
                  ),
                   focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    borderSide:  BorderSide( color: Colors.grey.shade100, width: 2.0)
                  ),
                  ),
                ),
            ),
            ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                },
              ),
          ],
        ),
      ),

      
    );
  }
}
