# CoordinateThis

This iOS app demonstrates the Coordinator design pattern using both traditional [Delegation](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Delegation.html) and [RxSwift / RxCocoa](https://github.com/ReactiveX/RxSwift) as internal communication mechanisms.

### Architecture

The app is composed of 3 independent UIViewController classes and a Controller class.  The 3 UIViewControllers display 3 different app state:

* Loading Screen
* Master Screen
* Detail Screen

The Controller class, called `AppController`, is reponsible for moving the app through it's different defined states by reponding to events from the app.

### Functionality

It is a purposely simple app that mirrors the usual Loading-Master-Detail flow of many apps today.  At start time the Loading Screen is displayed and after 2 seconds elapse it notifies the AppCoordinator which then displays the Master Screen.  The Master Screen consists of a single button that loads a Detail Screen via the AppCoordinator.  From the Detail Screen there are 3 different ways (Navigation Controller back button, Button via Delegation and Button via Rx) to return to the Master Screen.  Note that the Button via Rx is only implemented as of `v1.0-rx` and is the only Rx implementation in the app.

### Build Instructions

#### Delegation Only

* Checkout tag `v1.0`
* Open `CoordinateThis.xcodeproj` using Xcode 9.4.1. 

#### RxSwift / RxCoca

* Checkout tag `v1.0-rx`
* Install RxSwift and RxCocoa using [Cocoapods](https://cocoapods.org)
* Open `CoordinateThis.xcworkspace` using Xcode 9.4.1

### Observations

* RxSwift / RxCocoa reduces boilerplate code required to support Delegation.  Specifically it removes:
  * Protocols
  * Class implementation definitions
  * Class implementation of methods
* RxSwift / RxCocoa makes it easier to follow implementation of event listeners and functionality
* App Size only goes from 2.4 MB (No libraries) to 3 MB (with RxSwift and RxCocoa) when compiled as distributable `.ipa` files.

Copyright (c) 2018 Brad Leege

  