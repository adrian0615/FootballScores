//
//  Teams.swift
//  FootballScores
//
//  Created by Adrian McDaniel on 12/9/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

struct Team {
    let name: String
    var scoreplay: [ScoringPlay]
    var points: Int {
        var output = 0
        for score in scoreplay {
            output += score.pointValue
        }
        return output
    }
}
