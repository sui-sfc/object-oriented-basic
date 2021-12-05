var i=1
while true {
    if i%3 == 0{
        print("0 ",terminator: "")
    }
    else {
        print("1 ",terminator: "")
    }
    if i==15{
        print("")
        break
    }
    i+=1
}