# Doppler

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

<!--
[![Version](https://img.shields.io/cocoapods/v/Chores.svg?style=flat)](http://cocoadocs.org/docsets/Chores)
[![License](https://img.shields.io/cocoapods/l/Chores.svg?style=flat)](http://cocoadocs.org/docsets/Chores)
[![Platform](https://img.shields.io/cocoapods/p/Chores.svg?style=flat)](http://cocoadocs.org/docsets/Chores)
[![Build Status](http://img.shields.io/travis/neonichu/Chores.svg?style=flat)](https://travis-ci.org/neonichu/Chores)
-->

A library for communicating with [OpenRadar][3].

## Usage

```swift
Doppler.radar(10192655) { (radar, error) in
  if let radar = radar {
    print(radar.title) // Value of UIKeyboardFrameEndUserInfoKey is a CGPoint on iOS 5
  }
}
```

## Unit Tests

The tests require [xctester][1], install it via [Homebrew][2]:

```
$ brew tap neonichu/formulae
$ brew install xctester
```

and run the tests:

```
$ make test
```

[1]: https://github.com/neonichu/xctester
[2]: http://brew.sh
[3]: https://openradar.appspot.com

