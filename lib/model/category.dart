import 'package:flutter/material.dart';

class Category {
  final String id, title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    required this.color,
  });
}

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'ملابس أطفال',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'ملابس شباب',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'ملابس بنات',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'ملابس رجالي',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'ملابس نسائي',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'فساتين السهرة نسائي',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'أكسسورات نسائية',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'ماكياج وعطور',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'ملابس محجبات',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'ملابس داخليه',
    color: Colors.teal,
  ),
];
