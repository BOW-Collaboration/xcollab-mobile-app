// Copyright (C) 2019 Pujit Mehrotra
//
// This file is part of xcollab.
//
// xcollab is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// xcollab is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with xcollab.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:xcollab/config/app/colors.dart';
import 'tabs/feed.dart';
import 'tabs/discover.dart';
import 'tabs/saved.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Foodie 😍",
          style:
              TextStyle(color: Theme.of(context).primaryColor, fontSize: 28.0)),
      centerTitle: true,
      bottom: TabBar(
        unselectedLabelColor: unselectedTabLabelColor,
        labelColor: Theme.of(context).primaryColor,
        labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        indicatorWeight: 5.0,
        indicator: BoxDecoration(
          gradient: primaryGradient,
        ),
        tabs: <Widget>[
          _buildTab(Icons.search),
          _buildTab(Icons.star),
          _buildTab(Icons.account_circle),
        ],
      ),
    );

    final body = TabBarView(
      children: [
        FeedPage(),
        DiscoverPage(),
        SavedPage(),
      ],
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBar,
        body: body,
      ),
    );
  }

  Widget _buildTab(IconData icon) {
    return Container(
      height: 40.0,
      alignment: Alignment.center,
      color: Colors.white,
      child: Icon(icon, size: 40.0),
    );
  }
}
