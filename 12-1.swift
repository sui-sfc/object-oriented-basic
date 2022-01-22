func bubble_sort( sortlist: Array<Double>, limit: Int) -> Array<Double>{
    var tmp:Double
    var flag:Int
    var sorting = sortlist
    for i in 0..<limit{
        flag = 1
        for c in 0..<limit-1-i{
            if sorting[c] > sorting[c+1]{
                tmp = sorting[c]
                sorting[c] = sorting[c+1]
                sorting[c+1] = tmp
                flag = 0
            }
        }
        if flag == 1 {
            break;
        } 
    }
    return sorting
}

func median( numlist: Array<Double> ) -> Double{
    //要素数
    var n = 0
    for _ in numlist{
        n = n + 1
    }

    //バブルソート
    let sorted_list =  bubble_sort(sortlist:numlist, limit:n)
    
    //中央値の計算
    if n % 2 == 1{
        return sorted_list[n/2]
    }
    else{
        return (sorted_list[(n/2)-1]+sorted_list[n/2])/2
    }
}


let test:[Double] = [8,7,9,6,3,2,1,4,5,0]
print(median( numlist: test))