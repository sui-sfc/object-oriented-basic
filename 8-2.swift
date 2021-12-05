func printCardinal(n:Int){
    if n>=4 && n<=20 {
        print("\(n)th")
    }else {
        if n%10==1{
           print("\(n)st") 
        }
        else if n%10==2{
           print("\(n)nd") 
        }
        else if n%10==3{
           print("\(n)rd") 
        }
        else {
           print("\(n)th") 
        }
    }
}
for i in 1...30{
   printCardinal(n:i) 
}