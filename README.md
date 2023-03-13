# Information

## APPFLOWY INC
<img src="https://user-images.githubusercontent.com/12026239/215302596-2b1490a3-0f8f-42e2-808b-a233f4576414.png" width="80"/>

### Company information

AppFlowy is an open-source no-code platform for your wikis, notes, tasks, and more, available for Windows, macOS, and Linux. You are in charge of your data and customizations.

Since its GitHub launch in November 2021, it has accumulated more than 30,000 stars and 130+ contributors. In 2022, AppFlowy was selected for the Noteworthy Newcomer award as part of the Open Source Awards at GitHub Universe!

### Why participate in an Octernship with APPFLOWY INC

AppFlowy is built with Flutter and Rust, an interesting tech stack with a lot of potential and opportunities. If you are a true believer in open source and want to build a world-class open source collaboration software together, we’d love to hear from you!

An Octernship with AppFlowy is aimed at creating a hands-on learning opportunity for new developers who may otherwise lack the opportunity to gain exposure to real-world software practice and entry to the technical community.

Benefits for Students:
- Students gain exposure to real-world software development and entry to the open-source community.
- Students become more competitive in the job market by having more meaningful software development experience.
- Students have hands-on opportunities to do work related to their professional interests and to further the pursuit of their interests.
- Students expand their professional network by getting involved in the community and meeting other awesome contributors.

Program Structure:

You will develop both hard and soft skills required for a software engineer in the real world throughout the program.

The program will provide you with the opportunity to:
- Collect and discuss business requirements cross-functionally
- Conduct a tech review to have your mentor and peers review your tech design doc
- Give and receive code reviews to/from your peers
- Offer help to the community
- Know your mentor and peers and participate in online hangouts
- Write an article related to your project and get it published to our newsletter - AppFlowy Binary

Check out [projects](https://appflowy.gitbook.io/docs/essential-documentation/contribute-to-appflowy/appflowy-mentorship-program/mentorship-2022) our mentees are working on

### Octernship role description

- The GitHub Classroom assignment submission deadline is March 30, 2023
- Length of the Octernship: 6 weeks or 12 weeks depended on your project scope
- Monthly Stipend: 600 USD

### Recommended qualifications

Becoming an AppFlowy contributor is a prerequisite. Newcomers are encouraged to complete an issue tagged with the “[good first issue for devs](https://github.com/AppFlowy-IO/AppFlowy/labels/good%20first%20issue%20for%20devs)”. This requires you to get familiar with our codebase and demonstrates your interest in contributing to AppFlowy. Don’t worry if you make mistakes in your first contribution. Instead, please see it as a great opportunity to get involved in our community, receive feedback, and iterate your work - a flavor of doing a project with the community.

### Eligibility

To participate, you must be:

* A [verified student](https://education.github.com/discount_requests/pack_application) on Global Campus

* 18 years or older

* Active contributor on GitHub (monthly)

* Please select an unclaimed task under the Desktop Features section from [Project Ideas](https://appflowy.gitbook.io/docs/essential-documentation/contribute-to-appflowy/appflowy-mentorship-program/mentorship-2022/project-ideas) and then submit a [project proposal](https://github.com/AppFlowy-GitHub-Octernship/project-template-repo/blob/main/project-proposal.md) when applying via GitHUb Octernship

# Assignment

## Task instructions

You are required to implement a divider plugin that allows the user to insert a divider into the document.
* Users should be able to insert a divider by:
    * Typing `~~~` to insert a wavy line
    * Typing `===` to insert a double solid line
    * Typing `***` to insert a dotted line
* Users should be able to insert a divider using the slash menu.
    * Typing `/divider` and pressing `enter` to insert the divider.

## Task Expectations

* You need to consider how to move the cursor to the appropriate position after inserting a divider.
* You need to ensure the correctness of inserting a divider, including checking user input and inserting the divider at the correct position.
* Make sure to include widget tests or integration tests in your codebase to ensure that your code coverage reaches at least 90%.

## Task submission
* Write code that implements the requirements above
* Submit changes to the feedback branch 
* And leave a comment with a recorded video to demo your work

## Reference

### Getting Started

This project is a starting point for an AppFlowy editor plugin.

```bash
# Please make sure the version of your flutter is above 3.7.0
flutter pub get
flutter run
```

* [horizontal_rule_widget_builder](./lib/plugins/horizontal_rule_widget_builder.dart) illustrates how to create a plugin.
* [horizontal_rule_menu_items](./lib/selection_menu_items/horizaontal_rult_menu_item.dart) illustrates how to add a new menu item to selection menu(slash menu).
* [horizontal_rule_shortcut_event](./lib/shortcut_events/horizaontal_rule_shortcut_event.dart) illustrates how to add a new shortcut to insert a horizontal rule.


https://user-images.githubusercontent.com/11863087/220231988-b661ea91-854c-495a-b33c-bcb8c60c724d.mov
