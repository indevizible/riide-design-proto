//
//  SaksButton.swift
//  Saks
//
//  Created by Michael Campbell on 2/15/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

/// A Saks Button.
internal final class riideButton: UIButton {

    /// The Saks Button Type.
    var type: riideButtonType = .DarkButton {
        didSet {
            setupDesign()
        }
    }

    override var enabled: Bool {
        didSet {
            let state: UIControlState = enabled ? .Normal : .Disabled
            setupDesign(.Normal)
            setupDesign(.Disabled)
            setupDesign(.Highlighted)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        setupDesign()
    }

    override func setTitle(title: String?, forState state: UIControlState) {
        super.setTitle(title, forState: state)

        guard let title = title else {
            return
        }
        setAttributedTitle(title, state: state)
    }

    /**
     Sets up the Saks Button Design.
     */
    func setupDesign(state: UIControlState = .Normal) {
        backgroundColor = type.backgroundColor(state)
        layer.borderColor = type.borderColor(state)
        layer.borderWidth = type.borderWidth()

        contentEdgeInsets = type.contentEdgeInsets()

        if let title = titleLabel?.text {
            setAttributedTitle(title, state: state)
        }
    }

    private func setAttributedTitle(text: String, state: UIControlState) {
        let attributedTitle = type.attributedTitle(text, controlState: state)
        setAttributedTitle(attributedTitle, forState: state)
    }

}
