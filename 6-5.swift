var i=1
while true {
    if i%2 == 1{
        print("\(i*i) ",terminator: "")
    }
    else {
        print("\(i*i*i) ",terminator: "")
    }
    if i==8{
        print("")
        break
    }
    i+=1
}