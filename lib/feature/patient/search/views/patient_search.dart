// feature/patient/presentation/views/search/views/patient_search.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety_123/core/utils/colors.dart';
import 'package:se7ety_123/core/utils/text_style.dart';
import 'package:se7ety_123/feature/patient/search/widget/search_list.dart';

class PatientSearch extends StatefulWidget {
  const PatientSearch({super.key});

  @override
  State<PatientSearch> createState() => _PatientSearchState();
}

class _PatientSearchState extends State<PatientSearch> {
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.color1,
        title: const Text(
          'ابحث عن دكتور',
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: TextField(
                cursorHeight: 20,
                onChanged: (searchKey) {
                  setState(
                    () {
                      search = searchKey;
                    },
                  );
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: AppColors.accentColor,
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide.none),
                  hintText: "البحث",// 
                  hintStyle:
                      getBodyStyle(),// fontSize: 20, color: AppColors.black
                  suffixIcon: const SizedBox(
                      width: 50,
                      child: Icon(Icons.search, color: AppColors.color1)),
                ),
              ),
            ),
            const Gap(15),
            Expanded(
              child: SearchList(
                searchKey: search,
              ),
            ),
          ],
        ),
      ),
    );
  }
}