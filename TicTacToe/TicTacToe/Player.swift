//
//  Player.swift
//  TicTacToe
//
//  Created by Kathiresan on 20/05/20.
//  Copyright © 2020 Kathiresan. All rights reserved.
//

import Foundation

enum Player {
    case one
    case two
}

extension Player {
    
    var identity: String {
        switch self {
        case .one:
            return "X"
        default:
            return "O"
        }
    }
    
    mutating func toggle() {
        if self == .one {
            self = .two
        } else {
            self = .one
        }
    }
}
