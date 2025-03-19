# Flutter Commerce Mobile Application

This is a simple ecommerce mobile application that stores and retrieves product information from the firebase firestore NoSQL database. Furthermore, it also keeps track of which products are on sale or have been favorited.

## Firebase Integration and Installation
This project uses firestore to store data about products to be displayed. In order to do this, you will need to download the `flutter_fire` package and `firebase` CLI. Please refer to the below documentation

-[Firebase CLI](https://firebase.google.com/docs/cli#setup_update_cli)

-[flutter_fire](https://firebase.google.com/docs/flutter/setup?platform=ios)

Afterwards, clone this repostiory and navigate to it to prepare for integration with firebase.

```bash
git clone https://github.com/AlyElsharkawy/CommerceMobileApp
cd ./CommerceMobileApp
```
Note: The path seperator on Linux and Mac is the '/' character and on Windows its the '\' character. Adapt the above section to the operating system you are using.

Then, login to firebase with the below command

`firebase login`

Afterwards, you will then run the below command to configure the project with firebase. Also, make sure that you _atleast_ select android as a supported app. Please make sure that you are in the directory in which the cloned repository was downloaded to.

`flutterfire configure`

After this step, you are done. The only two remaining steps are running the android emulator and building and running the project. Assuming you created your emulator using visual studio code, then running it should be as follows

```bash
# Run this in its own terminal pane
emulator -avd flutter_emulat
flutter run
```

Do not worry about the dummy data of the project. It will be created automatically!

