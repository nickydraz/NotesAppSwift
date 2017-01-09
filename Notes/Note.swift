//
//  Note.swift
//  Notes
//
//  Created by Nicholas Drazenovic on 1/8/17.
//  Copyright © 2017 NDraz. All rights reserved.
//

import Foundation

class Note {
    var Title: String = ""
    var Content: String = ""
    var _lastChanged: Date = Date();
    var LastChanged: Date
    {
        get {
            
            return _lastChanged
            
        }
        set {
            _lastChanged = newValue
        }
    }
    
    var LastchangedDisplay: String {
        get {
            let dateFormatterGet = DateFormatter()
            dateFormatterGet.dateFormat = "MM/dd/yyyy hh:mm"
            return dateFormatterGet.string(from: _lastChanged)
        }
        
    }

    init(title: String, content: String) {
        Title = title
        Content = content
    }
}
