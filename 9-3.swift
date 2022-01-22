func trump_number(_ n:Int) -> String{
    if n%13 == 0{
        return "A"
    }else if n%13 == 10{
        return "J"
    }else if n%13 == 11{
        return "Q"
    }else if n%13 == 12{
        return "K"
    }else{
        return String((n%13)+1)
    }
}
func convertCard(_ card:Int) -> String{
    if card>=0 && card<=12{
        return "♤"+trump_number(card)
    }else if card>=13 && card<=25{
        return "♡"+trump_number(card)
    }else if card>=26 && card<=38{
        return "♢"+trump_number(card)
    }else{
        return "♧"+trump_number(card)
    }
}

for i in 0...51{
    print(convertCard(i))
}