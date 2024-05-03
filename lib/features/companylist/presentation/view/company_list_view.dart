import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sales_app/core/widgets/costom_btn.dart';

class CompanyList extends StatefulWidget {
  const CompanyList({super.key});

  @override
  State<CompanyList> createState() => _CompanyListState();
}
 
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
class _CompanyListState extends State<CompanyList> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding:   const EdgeInsets.all(15),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
          height: 150,
          width: 150,
              child: Image(image: AssetImage('assets/images/logo.png'),)),
              const Gap(20),
              DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: const Row(
                children: [
                  Icon(
                    Icons.list,
                    size: 16,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 4, ),
                    
                 
                  Expanded(
                    child: Text(
                      'اختار شركة',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 22, 22),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
              buttonStyleData: ButtonStyleData(
                height: 50,
                width: 260,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.redAccent,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 20,
                iconEnabledColor: Colors.yellow,
                iconDisabledColor: Colors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 260,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                offset: const Offset(0, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(20),
                  thickness: MaterialStateProperty.all<double>(6),
                  thumbVisibility: MaterialStateProperty.all<bool>(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.only(left: 14, right: 14),
              ),
          ),),
          const Gap(20),
          CustomBtn(text: 'موافق', onPressed: (){}, width: 200),
                
           ] ),
            ),
      ));
  }
}