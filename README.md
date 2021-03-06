# Flutter Features

- [Fultter project Structure](https://github.com/sakibcy/Flutter-Features#Fultter-project-Structure)
- [Adding a package dependency to an app](https://github.com/sakibcy/Flutter-Features#adding-a-package-dependency-to-an-app)
- [Widget](https://github.com/sakibcy/Flutter-Features#Widget)
- [What are the Button Types in Flutter?](https://github.com/sakibcy/Flutter-Features#what-are-the-button-types-in-flutter)
- [AssetBundle](https://github.com/sakibcy/Flutter-Features#assetbundle)
- [Image](https://github.com/sakibcy/Flutter-Features#image)
- [Using Decorators](https://github.com/sakibcy/Flutter-Features#using-decorators)

# Fultter project Structure

- assets/images
- lib/pages or lib/screens
- lib/models
- lib/utils
- lib/widgets
- lib/services

### assets/images:

The assets folder holds subfolders such as images, fonts, and configuration files.

<br>

### lib/pages or lib/screens:

The pages folder holds user interface (UI) files such as logins, lists of items, charts,
and settings.

<br>

### lib/models:

The models folder holds classes for your data such as customer information and
inventory items.

<br>

### lib/utils:

The utils folder holds helper classes such as date calculations and data conversion.

<br>

### lib/widgets:

The widgets folder holds different Dart files separating widgets to reuse
through the app.

<br>

### lib/services:

The services folder holds classes that help to retrieve data from services over the
Internet. A great example is when using Google Cloud Firestore, Cloud Storage, Realtime Database, Authentication, or Cloud Functions. You can retrieve data from social media accounts, database servers, and so on.

<br>

## BuildContext is responsible for handling the location of a widget in the widget tree

<br>

# Adding a package dependency to an app

`flutter pub get`

<br><br>

# Widget

- Scaffold Widget

## Scaffold Widget

The Scaffold widget implements the
basic Material Design visual layout, allowing the simple addition of
AppBar, BottomAppBar, FloatingActionButton, Drawer, SnackBar, BottomSheet, and more.

`Scaffold` Implements the Material Design visual layout, allowing the use of Flutter???s
Material Components widgets

### `AppBar` Implements the toolbar at the top of the screen

<img src='./readmeImages/AppBar.png' style='width: 300px'>

<br>

`CircleAvatar` Usually used to show a rounded user profile photo, but you can use it
for any image

<br>

`Divider` Draws a horizontal line with padding above and below

If the app you are creating is using Cupertino, you can use the following widgets instead. Note that
with Cupertino you can use two different scaffolds, a page scaffold or a tab scaffold.

<br>

`CupertinoPageScaffold` Implements the iOS visual layout for a page. It works with
CupertinoNavigationBar to provide the use of Flutter???s Cupertino iOS-style widgets.

<br>

`CupertinoTabScaffold` Implements the iOS visual layout. This is used to navigate multiple pages, with the tabs at the bottom of the screen allowing you to use Flutter???s Cupertino
iOS-style widgets.

<br>

`CupertinoNavigationBar` Implements the iOS visual layout toolbar at the top of
the screen

<br>

### The following widgets can be used with both Material Design and Cupertino:

`SingleChildScrollview` This adds vertical or horizontal scrolling ability to a single
child widget.

`Padding` This adds left, top, right, and bottom padding.

<br><br>

# `Column` This displays a vertical list of child widgets.

<img src='./readmeImages/column.png' style='width: 300px'>

<br><br>

# `Row` This displays a horizontal list of child widgets.

<img src='./readmeImages/row.png' style='width: 300px'>

<img src='./readmeImages/column with row.png' style='width: 300px'>

<br><br>

`Container` This widget can be used as an empty placeholder (invisible) or can specify
height, width, color, transform (rotate, move, skew), and many more properties.

<br>

`Expanded` This expands and fills the available space for the child widget that belongs to a
Column or Row widget.

<br>

`Text` The Text widget is a great way to display labels on the screen. It can be configured
to be a single line or multiple lines. An optional style argument can be applied to change
the color, font, size, and many other properties.

<br>

`Stack` What a powerful widget! Stack lets you stack widgets on top of each other and use
a Positioned (optional) widget to align each child of the Stack for the layout needed. A
great example is a shopping cart icon with a small red circle on the upper right to show the
number of items to purchase.

<br>

`Positioned` The Positioned widget works with the Stack widget to control child positioning and size. A Positioned widget allows you to set the height and width. You can also specify the position location distance from the top, bottom, left, and right sides of the
Stack widget.

<br><br>

# What are the Button Types in Flutter?

- Flat Button
- Raised Button
- Floating Button
- Drop Down Button
- Icon Button
- PopupMenu Button

<br>

## Creating a full widget tree

A full widget tree is the result of nesting widgets to create the page UI. The
more widgets added, the harder the code is to read and manage.

<br>

## Creating a shallow widget tree

A shallow widget tree is the result of separating widgets into manageable
sections to accomplish each task. The widgets can be separated by a
`constant variable, method, or widget class`. The goal is to keep the widget
tree shallow to improve code readability and manageability.
`To improve performance, you can refactor by using the widget class that takes advantage of Flutter???s subtree rebuilding`

<br>

## AssetBundle

The AssetBundle class provides access to custom resources such as images, fonts, audio, data files,
and more. Before a Flutter app can use a resource, you must declare it in the pubspec.yaml file.

`pubspec.yaml` file to edit

<br>

## To add assets to your application, add an assets section on `pubspec.yaml`, like this:

assets:

- assets/images/
- assets/data/

# Image

The Image widget displays an image from a local or URL (web) source. To load an Image widget,
there are a few different constructors to use.

- Image()???Retrieves image from an ImageProvider class
- Image.asset()???Retrieves image from an AssetBundle class using a key
- Image.file()???Retrieves image from a File class
- Image.memory()???Retrieves image from a Uint8List class
- Image.network()???Retrieves image from a URL path

<br>

## USING DECORATORS

Decorators help to convey a message depending on the user???s action or customize the look and feel of
a widget. There are different types of decorators for each task.

- Decoration???The base class to define other decorations.
- BoxDecoration ??? Provides many ways to draw a box with border, body, and boxShadow.
- InputDecoration ??? Used in TextField and TextFormField to customize the border, label,
  icon, and styles. This is a great way to give the user feedback on data entry, specifying a
  hint, an error, an alert icon, and more.

<br>

## Orientation

Devices orientation:

- Portrait
- Landscape

<img src="./readmeImages/orientation.png" width="500px" />

<br>

first create a variable to get device's orientation.

```dart
Orientation orientation = MediaQuery.of(context).orientation;
```

then use the orientation and check, Is it portrait or landscape?\
render widgets based on the condition.

```dart
orientation == Orientation.portrait ? 2 : 4
```

<br>
