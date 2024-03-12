import 'package:aunt_flo/service/firebase_database_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/user_model.dart';

class EditProfile extends StatefulWidget {
   EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  final _fullNameController = TextEditingController();

  final _emailAddressController = TextEditingController();

  final _emailRegexPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  ///Function to set default usermodel value to form controllers
  void setValuesFromUserModelInFormControllers() {
    final UserModel? userModelDetails = ModalRoute
        .of(context)!
        .settings
        .arguments as UserModel;

    if (userModelDetails != null) {
      if (userModelDetails.fullName != null) {
        _fullNameController.text = userModelDetails.fullName!;
      }
      if (userModelDetails.emailAddress != null) {
        _emailAddressController.text = userModelDetails.emailAddress!;
      }
    }
  }

  @override
  void didChangeDependencies() {
    setValuesFromUserModelInFormControllers();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
    body: Form(
    key: _formKey,
    child: Container(
    padding: EdgeInsets.only(left: 10, top: 20),
    width: MediaQuery.of(context).size.width/1.5,
    child: ListView(
    children: [
    EditProfileImage(),
    SizedBox(height: 10),
    TextFormField(
    controller: _fullNameController,
    keyboardType: TextInputType.name,
    maxLength: 30,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter full name',
    ),
    validator: (fullNameValue) {
    if (fullNameValue == null || fullNameValue.trim().isEmpty) {
    return 'Please Enter Full Name';
    }
    return null;
    },
    ),
    SizedBox(height: 10),
    TextFormField(
    controller: _emailAddressController,
    maxLength: 30,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email address',
    ),
    validator: (emailValue) {
    if (emailValue == null || emailValue.trim().isEmpty) {
    return 'Please enter your email address';
    }
    final regex = RegExp(_emailRegexPattern);
    if (!regex.hasMatch(emailValue)) {
    return 'Please enter a valid email';
    }
    return null;
    },
    ),
    SizedBox(height: 20),
    ElevatedButton(onPressed: () async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final uId = prefs.getString('id');

    if(uId != null){
    final userModelRequest = UserModel(
    uId: uId,
    fullName: _fullNameController.text,
    emailAddress: _emailAddressController.text,
    );

    final userModelResponse = await FirebaseDatabaseService().updateUserUsingUID(
    uId: uId, userModel: userModelRequest);
    if(userModelResponse != null){
    print('Data Update Success');
    Navigator.of(context).pop();
    }else{
    print('Error updating');
    }
    }
    },
    child: Text('Update'),
    ),
    ],
    ),
    ),
    )
    );
  }
}

//This class is used to create an editable profile image
class EditProfileImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            radius: 18,
            child: ClipOval(
              child: Image.asset('assets/images/pig.png'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.edit),
          ),
        ),
      ],
    );
  }
}
