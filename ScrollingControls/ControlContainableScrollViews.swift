//
//  ControlContainableScrollViews.swift
//  ScrollingControls
//
//  Created by Zev Eisenberg on 11/23/16.
//  Copyright © 2016 Raizlabs. All rights reserved.
//

import UIKit

// These let you start a touch on a control that's inside a scroll view,
// and then if you start dragging, it cancels the touch on the button
// and lets you scroll instead. Without these scroll view subclasses,
// controls in scroll views will eat touches that start in them, which
// prevents scrolling and makes the app feel broken.
//
// The UITextInput exception is for cases where you have a text field
// or a label in a scroll view. If you press and hold there, you want
// to get the text editing magnifier cursor, instead of canceling the
// touch in the text input element.

final class ControlContainableScrollView: UIScrollView {

    override func touchesShouldCancel(in view: UIView) -> Bool {
        if view is UIControl && !(view is UITextInput) {
            return true
        }

        return super.touchesShouldCancel(in: view)
    }

}

final class ControlContainableTableView: UITableView {

    override func touchesShouldCancel(in view: UIView) -> Bool {
        if view is UIControl && !(view is UITextInput) {
            return true
        }

        return super.touchesShouldCancel(in: view)
    }

}

final class ControlContainableCollectionView: UICollectionView {

    override func touchesShouldCancel(in view: UIView) -> Bool {
        if view is UIControl && !(view is UITextInput) {
            return true
        }

        return super.touchesShouldCancel(in: view)
    }

}
