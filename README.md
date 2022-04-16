# Flutter Features

A new Flutter project.

## Fultter project Structure 
- assets/images
- lib/pages
- lib/models
- lib/utils
- lib/widgets
- lib/services

#### assets/images: 
The assets folder holds subfolders such as images, fonts, and configuration files.
#### lib/pages: 
The pages folder holds user interface (UI) files such as logins, lists of items, charts, 
and settings.
#### lib/models: 
The models folder holds classes for your data such as customer information and 
inventory items.
#### lib/utils: 
The utils folder holds helper classes such as date calculations and data conversion.
#### lib/widgets: 
The widgets folder holds different Dart files separating widgets to reuse 
through the app.
#### lib/services: 
The services folder holds classes that help to retrieve data from services over the 
Internet. A great example is when using Google Cloud Firestore, Cloud Storage, Realtime Database, Authentication, or Cloud Functions. You can retrieve data from social media accounts, database servers, and so on.

## Widget 
* Scaffold Widget

#### Scaffold Widget
  The Scaffold widget implements the 
basic Material Design visual layout, allowing the simple addition of 
AppBar, BottomAppBar, FloatingActionButton, Drawer, SnackBar, BottomSheet, and more.

`Scaffold` Implements the Material Design visual layout, allowing the use of Flutter’s 
Material Components widgets

`AppBar` Implements the toolbar at the top of the screen

`CircleAvatar` Usually used to show a rounded user profile photo, but you can use it 
for any image

`Divider` Draws a horizontal line with padding above and below

If the app you are creating is using Cupertino, you can use the following widgets instead. Note that 
with Cupertino you can use two different scaffolds, a page scaffold or a tab scaffold.

`CupertinoPageScaffold` Implements the iOS visual layout for a page. It works with 
CupertinoNavigationBar to provide the use of Flutter’s Cupertino iOS-style widgets.

`CupertinoTabScaffold` Implements the iOS visual layout. This is used to navigate multiple pages, with the tabs at the bottom of the screen allowing you to use Flutter’s Cupertino 
iOS-style widgets.

`CupertinoNavigationBar` Implements the iOS visual layout toolbar at the top of 
the screen

The following widgets can be used with both Material Design and Cupertino:

`SingleChildScrollview` This adds vertical or horizontal scrolling ability to a single 
child widget.
`Padding` This adds left, top, right, and bottom padding.
`Column` This displays a vertical list of child widgets.
`Row` This displays a horizontal list of child widgets.
`Container` This widget can be used as an empty placeholder (invisible) or can specify 
height, width, color, transform (rotate, move, skew), and many more properties.
`Expanded` This expands and fills the available space for the child widget that belongs to a 
Column or Row widget.
`Text` The Text widget is a great way to display labels on the screen. It can be configured 
to be a single line or multiple lines. An optional style argument can be applied to change 
the color, font, size, and many other properties.
