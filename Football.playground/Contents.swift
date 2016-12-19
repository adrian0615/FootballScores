func scoringPlay(_ play: String) -> Int? {
    var  scored : Int?
    
    if play == "Touchdown" {
        scored = 6
    } else if play == "Extra Point" {
        scored = 1
    } else if play == "Two Point Conversion" || play == "Safety" {
        scored = 2
    } else if play == "Field Goal" {
        scored = 3
    } else {
        return nil
    }
    return scored
}



