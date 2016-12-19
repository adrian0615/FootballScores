enum Scored {
    case touchdown
    case fieldGoal
    case safety
}


func scoreToNumber(scoringPlay: Scored) -> Int {
    switch scoringPlay {
    case .touchdown:
        return 7
    case .fieldGoal:
        return 3
    case .safety:
        return 2
    }
}



scoreToNumber(scoringPlay: .touchdown)
scoreToNumber(scoringPlay: .fieldGoal)
scoreToNumber(scoringPlay: .safety)



enum Teams {
    case falcons
    case rams
}
