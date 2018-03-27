import 'package:flutter/material.dart';
import 'styles.dart';

class RowBoxData {
  String title;
  String subtitle;
  DecorationImage image;
  RowBoxData({this.subtitle, this.title, this.image});
}

class DataListBuilder {
  List<RowBoxData> rowItemList = new List<RowBoxData>();
  RowBoxData row1 = new RowBoxData(
      title: "Catch up with Tom",
      subtitle: "5 - 6pm  Hangouts",
      image: avatar2);
  RowBoxData row2 = new RowBoxData(
      title: "Yoga classes with Emily",
      subtitle: "7 - 8am Workout",
      image: avatar6);
  RowBoxData row3 = new RowBoxData(
      title: "Breakfast with Harry", subtitle: "9 - 10am ", image: avatar1);
  RowBoxData row4 = new RowBoxData(
      title: "Meet Pheobe ", subtitle: "12 - 1pm  Meeting", image: avatar5);
  RowBoxData row5 = new RowBoxData(
      title: "Lunch with Janet and friends",
      subtitle: "2 - 3pm ",
      image: avatar4);
  RowBoxData row6 = new RowBoxData(
      title: "Catch up with Tom",
      subtitle: "5 - 6pm  Hangouts",
      image: avatar2);
  RowBoxData row7 = new RowBoxData(
      title: "Party at Hard Rock",
      subtitle: "8 - 12 Pub and Restaurant",
      image: avatar3);
  RowBoxData row8 = new RowBoxData(
      title: "Yoga classes with Emily",
      subtitle: "7 - 8am Workout",
      image: avatar6);

  DataListBuilder() {
    rowItemList.add(row1);
    rowItemList.add(row2);
    rowItemList.add(row3);
    rowItemList.add(row4);
    rowItemList.add(row5);
    rowItemList.add(row6);
    rowItemList.add(row7);
    rowItemList.add(row8);
  }
}
