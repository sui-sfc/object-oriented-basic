func printDiamond(size:Int){
    if size%2 == 0{
        return
    }
    for i in 1...(size/2)+1{
        for _ in 0...((size/2)+1)-i{
            print(" ",terminator: "")
        }
        for _ in 1...i*2-1{
            print("□",terminator: "")
        }
    print("")
    }
    for i in (size/2)+2...size{
        for _ in 0...i-(size/2)-1{
           print(" ",terminator: "") 
        }
        for _ in 0...(size-i)*2{
            print("□",terminator: "")
        }
    print("")
    } 
}

printDiamond(size:19)