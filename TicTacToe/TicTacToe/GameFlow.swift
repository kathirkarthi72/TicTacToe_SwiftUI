//
//  GameFlow.swift
//  TicTacToe
//
//  Created by Kathiresan on 20/05/20.
//  Copyright © 2020 Kathiresan. All rights reserved.
//

import Foundation

enum ButtonState: String {
    case cross = "X"
    case circle = "O"
    case none = ""
}

struct GameFlow {
    
    var content: [String: ButtonState] = [:]
    
    private var winningPosibilities : [[String]] = [["00","01","02"],
                                                    ["10","11","12"],
                                                    ["20","21","22"],
                                                    
                                                    ["00","10","20"],
                                                    ["01","11","21"],
                                                    ["02","12","22"],
                                                    
                                                    ["00","11","22"],
                                                    ["22","11","20"]]
    
    
    func getValue(for key: String) -> ButtonState {
        
        if let value = content[key] {
            return value
        } else {
            return .none
        }
    }
    
    mutating func setValue(_ state: ButtonState, for key: String) {
        content[key] = state
    }
    
    func validat() {
        
    }
    
    func isWin() -> Bool {
        
        for posibility in winningPosibilities {
            
            if content[posibility[0]] != nil {
                
//                print(content[posibility[0]], content[posibility[1]])
                
                if content[posibility[0]] == content[posibility[1]], content[posibility[1]] == content[posibility[2]] {
                    return true
                }
            }
        }
        
        return false
    }
}
