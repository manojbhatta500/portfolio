import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/widgets/education_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/projects_web.dart';
import 'package:portfolio/widgets/skill_desktop.dart';
import 'package:portfolio/widgets/skills_mobile.dart';

List<GlobalKey> desktopnavigator = [
  Maindesktop.maindesktopkey,
  SkillDesktop.skilldesktop,
  Projectweb.projectkey,
  EducationMobile.educationkey,
  Contacts.contactkey
];

List<GlobalKey> mobilenavigator = [
  MainMobile.mainmobilekey,
  SkillMobile.mobileskillkey,
  Projectweb.projectkey,
  EducationMobile.educationkey,
  Contacts.contactkey
];
