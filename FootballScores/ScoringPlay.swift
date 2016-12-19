enum ScoringPlay {
    case touchdown
    case safety
    case fieldGoal
    
    var pointValue: Int {
        switch self {
        case .touchdown:
            return 7
        case .safety:
            return 2
        case .fieldGoal:
            return 3
        }
    }
    
}








