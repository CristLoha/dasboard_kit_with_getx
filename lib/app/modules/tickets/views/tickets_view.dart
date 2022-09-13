import 'package:dasboard_kit_with_getx/app/modules/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/tickets_controller.dart';

class TicketsView extends GetView<TicketsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 30, top: 30, right: 33, bottom: 32),
        scrollDirection: Axis.vertical,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tickets',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      hoverColor: Colors.white,
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: kgreyColor3,
                      ),
                    ),
                    SizedBox(width: 24),
                    InkWell(
                      hoverColor: Colors.white,
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: kgreyColor3,
                      ),
                    ),
                    SizedBox(width: 32),
                    VerticalDivider(
                      thickness: 1,
                      color: kgreyColor3,
                    ),
                    SizedBox(width: 32),
                    Text(
                      'Jones Ferdinnd',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(width: 14),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1456327102063-fb5054efe647?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=f05c14dd4db49f08a789e6449604c490'),
                      radius: 26,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 54),

          ///CREATE TABLES
          Container(
            width: 1122,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: kgreyColor4,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 27,
                    right: 27,
                    top: 32,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Tickets',
                        style: blackTextStyle.copyWith(
                          fontSize: 19,
                          fontWeight: bold,
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('icon/sort.svg'),
                              SizedBox(width: 8),
                              Text(
                                'Sort',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 32),
                          Row(
                            children: [
                              SvgPicture.asset('icon/sort.svg'),
                              SizedBox(width: 8),
                              Text(
                                'Filter',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 48),
                DataTable(
                  dataRowHeight: 92,
                  columns: [
                    DataColumn(
                      label: Text(
                        'Ticket Details',
                        style: greyTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Customer Name',
                        style: greyTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Date',
                        style: greyTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Priority',
                        style: greyTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    /// 1
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 2
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 3
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 4
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 5
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 6
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 7
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 8
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 9
                    DataRow(
                      cells: [
                        DataCell(
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                              radius: 26,
                            ),
                            title: Text(
                              'Contact Email Not Linked',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Updated 1 Day Ago',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'Tom Cruise',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'on 24.05.2022',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          ListTile(
                            title: Text(
                              'May 26, 2022',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                '6:30 PM',
                                style: subGreyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    'HIGH',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kgreyColor5,
                                ),
                                itemBuilder: (context) {
                                  return List.generate(
                                    5,
                                    (index) {
                                      return PopupMenuItem(
                                        child: Text('Button no $index'),
                                      );
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                  color: kgreyColor4,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 24, bottom: 24, right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Simon'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
