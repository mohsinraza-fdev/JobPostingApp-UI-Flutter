import 'package:assignment1/ui/shared/styles.dart';
import 'package:assignment1/ui/views/add_job/add_job_view.dart';
import 'package:assignment1/ui/views/edit_job/edit_job_view.dart';
import 'package:flutter/material.dart';

import '../../shared/ui_helpers.dart';

class JobListingView extends StatelessWidget {
  const JobListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        body: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              Padding(
                padding: appHorizontalPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    WelcomeTextWithButton(),
                    SearchBar(),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                height: screenHeight(context) * 0.70,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) =>
                        const JobPost(),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 27, bottom: 25),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AddJobView()))),
              child: Container(
                width: 74,
                height: 74,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E5E5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 8),
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 5),
                  ],
                ),
                child: const Icon(Icons.add),
              ),
            )),
      ),
    );
  }
}

class JobPost extends StatelessWidget {
  const JobPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: 360,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 27, right: 27, top: 11),
      decoration: BoxDecoration(
          color: const Color(0xFF201E27),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 25,
                offset: const Offset(0, 4),
                color: Colors.black.withOpacity(0.25))
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Flutter Developer Required', style: textParagraph2),
                Text('Karachi, Pakistan', style: textParagraph3),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const EditJobView()))),
            child: const SizedBox(
              width: 24,
              height: 24,
              child:
                  FittedBox(child: Image(image: AssetImage('images/edit.png'))),
            ),
          ),
          const SizedBox(width: 30),
          const SizedBox(
            width: 24,
            height: 24,
            child:
                FittedBox(child: Image(image: AssetImage('images/delete.png'))),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 56,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 19, bottom: 15),
      decoration: BoxDecoration(
        color: appTextFieldOverlay,
        border: Border.all(width: 1, color: appStrokeColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: textParagraph1.merge(const TextStyle(color: Colors.white)),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search keywords.',
          hintStyle: textParagraph1,
          prefixIcon: const Image(image: AssetImage('images/search_icon.png')),
        ),
      ),
    );
  }
}

class WelcomeTextWithButton extends StatelessWidget {
  const WelcomeTextWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 79),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome',
                style: textHeading4,
              ),
              Text(
                'Mohsin Raza',
                style: textHeading3,
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const SizedBox(
              width: 25,
              height: 25,
              child: FittedBox(
                child: Image(
                  image: AssetImage('images/back_icon.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
