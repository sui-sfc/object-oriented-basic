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
func pow_ten(_ n:Int) -> Int{
    var t=1
    for _ in 1...n{
        t=t*10
    }
    return t
}
func ten_thousand(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return convertKnasuushi(n)+"万"
    }
}
func hundred_million(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return convertKnasuushi(n)+"億"
    }
}
func trillion(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return convertKnasuushi(n)+"兆"
    }
}
func ten_quadrillion(_ n:Int)-> String {
    if n==0{
        return ""
    }else{
        return convertKnasuushi(n)+"京"
    }
}
func convertTotalKansushi(_ n:Int) -> String{
    return ten_quadrillion(n/pow_ten(16))+trillion((n/pow_ten(12))%pow_ten(4))+hundred_million((n/pow_ten(8))%pow_ten(4))+ten_thousand((n/pow_ten(4))%pow_ten(4))+convertKnasuushi(n%pow_ten(4))
}