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

import 'package:xcollab/config/app/images.dart';

class Profile {
  int id;
  String photo;
  String name;

  /// eg. "Richmond"
  String location;
  String type;
  String date;

  /// eg. "5 mi away"
  String distance;

  String industry;
  double rating;

  /// eg. "Our business provides you with food that is fresh, fun and affordable in a relaxed atmosphere where the whole family can enjoy."
  String description;

  Profile();

  Profile.from({
    this.id,
    this.photo,
    this.name,
    this.type,
    this.industry,
    this.rating,
    this.distance,
  });
}
