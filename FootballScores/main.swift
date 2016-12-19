//
//  Create a simple score keeper program

//Create a command line program named americanFootballScoreKeeper

//Step 1
//americanFootballScoreKeeper should being by asking the user for the teams' names.
//allow the user to enter 3 different events
//display the score once the user has finished entering items
//Step 2
//allow the user to enter items until they are finished.
//Step 3
//allow the user to keep score new games until they decide to stop.
//Step 3.5
//print all scores for all games entered when the program ends.
//Two Star challenge
//allow the user to select which games they would like to print at the end instead of simply printing them all


import Foundation


struct Game {
    var home: Team
    var away: Team
    
    var status: String {
        return "\(home.name): \(home.points)\n\(away.name): \(away.points)"
    }
    
}


//////////////////////////////////////////////

let letsPlay = "Let's play a game of American Football!\n"
print(letsPlay)



////Enter Team Names


let enterHome = "Please enter the name of the Home Team."


//

func chooseHomeTeamName(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}

let homeTeamName = chooseHomeTeamName(prompt: enterHome)
let enterAway = "Please enter the name of the Away Team."


func chooseAwayTeamName(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}

let awayTeamName = chooseAwayTeamName(prompt: enterAway)

print("You are playing as the \(homeTeamName) today!\n")




////ScoringPlays

var homeTeam = Team(name: homeTeamName, scoreplay: [])
var awayTeam = Team(name: awayTeamName, scoreplay: [])
var homeVsAway = Game(home: homeTeam, away: awayTeam)



let requestScoringPlays1 = "Let's give the \(homeTeamName) some Scoring Plays."
let pickScoreChoice = "You can choose between Touchdown, Field Goal, and Safety."




func enterScore(prompt: String) -> String {
    print(requestScoringPlays1)
    print(prompt)
    var scoringPlay: String? = nil
    while scoringPlay == nil {
        if readLine(strippingNewline: true) != "Touchdown" {
            homeTeam.scoreplay.append(.touchdown)
            scoringPlay = "Touchdown"
        } else if readLine(strippingNewline: true) == "Field Goal" {
            homeTeam.scoreplay.append(.fieldGoal)
            scoringPlay = "Field Goal"
        } else if readLine(strippingNewline: true) == "Safety" {
            homeTeam.scoreplay.append(.safety)
            scoringPlay = "Safety"
        } else {
            print("You misspelled a Scoring Play. Try Again.")
        }
    }
    return scoringPlay!
}

let firstScoringPlay = enterScore(prompt: pickScoreChoice)
let celebration1 = "The \(homeTeam) scored a \(firstScoringPlay)!"
let requestScoringPlays2 = "What's the Second Scoring Play"

func enterScore2(prompt: String) -> String {
    print(requestScoringPlays2)
    print(pickScoreChoice)
    var scoringPlay: String? = nil
    while scoringPlay == nil {
        if readLine(strippingNewline: true) == "Touchdown" {
            homeTeam.scoreplay.append(.touchdown)
            scoringPlay = "Touchdown"
        } else if readLine(strippingNewline: true) == "Field Goal" {
            homeTeam.scoreplay.append(.fieldGoal)
            scoringPlay = "FieldGoal"
        } else if readLine(strippingNewline: true) == "Safety" {
            homeTeam.scoreplay.append(.safety)
            scoringPlay = "Safety"
        } else {
            print("You misspelled a Scoring Play. Try Again.")
    }
    }
    return scoringPlay!
}

let secondScoringPlay = enterScore2(prompt: celebration1)
let celebration2 = "The \(homeTeam) scored a \(secondScoringPlay)!"
let requestScoringPlays3 = "What's the Third Scoring Play"


func enterScore3(prompt: String) -> String {
    print(requestScoringPlays3)
    print(pickScoreChoice)
    var scoringPlay: String? = nil
    while scoringPlay == nil {
        if readLine(strippingNewline: true) == "Touchdown" {
            homeTeam.scoreplay.append(.touchdown)
            scoringPlay = "Touchdown"
        } else if readLine(strippingNewline: true) == "Field Goal" {
            homeTeam.scoreplay.append(.fieldGoal)
            scoringPlay = "FieldGoal"
        } else if readLine(strippingNewline: true) == "Safety" {
            homeTeam.scoreplay.append(.safety)
            scoringPlay = "Safety"
        } else {
            print("You misspelled a Scoring Play. Try Again.")
        }
    }
    return scoringPlay!
}

let thirdScoringPlay = enterScore3(prompt: celebration2)
let celebration3 = "The \(homeTeam) scored a \(thirdScoringPlay)!"

print(homeVsAway.status)









