func single_digit(_ n:Int) -> String {
    let array=["二","三","四","五","六","七","八","九"]
    if n==0 || n==1{
        return ""
    }else{
        return array[n-2]
    }
}
func one(_ n:Int) -> String {
    let array=["一","二","三","四","五","六","七","八","九"]
    if n==0 {
        return ""
    }else{
        return array[n-1]
    }
}
func ten(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return single_digit(n)+"十"
    }
}
func hundret(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return single_digit(n)+"百"
    }
}
func thousand(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return single_digit(n)+"千"
    }
}
func convertKnasuushi(_ n:Int) -> String {
    return thousand(n/1000)+hundret((n/100)%10)+ten((n/10)%10)+one(n%10)
}
