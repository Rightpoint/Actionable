# Actionable

[![CI Status](https://img.shields.io/travis/nevillco/Actionable.svg?style=flat)](https://travis-ci.org/nevillco/Actionable)
[![Version](https://img.shields.io/cocoapods/v/Actionable.svg?style=flat)](https://cocoapods.org/pods/Actionable)
[![License](https://img.shields.io/cocoapods/l/Actionable.svg?style=flat)](https://cocoapods.org/pods/Actionable)
[![Platform](https://img.shields.io/cocoapods/p/Actionable.svg?style=flat)](https://cocoapods.org/pods/Actionable)

Actionable makes it easier to adopt iOS conventions around the delegation pattern, with less boilerplate.

## About

When you want to relay actions to an object's owner in iOS, it’s common to use the delegate pattern. In builtin classes, this pattern looks like:
```swift
protocol UITextFieldDelegate: class {
    
    func textFieldDidBeginEditing(UITextField)
    ...
    func textFieldDidEndEditing(UITextField, reason: UITextField.DidEndEditingReason)
    
}
```
You’re encouraged to pass the object doing the delegation - in this case, the `UITextField`, back in the function. This naming convention can get verbose, but it has benefits. You might be delegating multiple `UITextField`s, and use a switch statement to disambiguate. It also makes clear to the developer that a particular function *belongs* to `UITextFieldDelegate`, whereas some `func didBeginEditing()` is more unclear.

But maintaining this style as you develop can be tedious and carry a lot of boilerplate, especially for larger delegates. **Actionable** leverages [Sourcery](https://github.com/krzysztofzablocki/Sourcery) code generation to make these delegate protocols easier to write and express.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Actionable is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Actionable'
```

## Author

Connor Neville, cneville@rightpoint.com

## License

Actionable is available under the MIT license. See the LICENSE file for more info.
