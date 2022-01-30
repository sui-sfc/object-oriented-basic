import Foundation

//プログラム自体は問題ないと思いますが辞書に抜けがあるかもしれません

func convert(_ roman:String)->String{
    let str = roman
    // 複数文字を変換しようとすると順番次第となってしまうので最初に数字に置き換える
    // 辞書作成
    //SHCHだけ最初にやるついでにPHとFは変換先が同じなので変換する
    let dic_shch = ["SHCH":"05","shch":"13","PH":"F","ph":"f"]
    let dictionary = ["YE":"00", "YO":"01", "ZH":"02", "CH":"03", "SH":"04","YU":"06", "YA":"07", "ye":"08", "yo":"09", "zh":"10", "ch":"11", "sh":"12", "yu":"14", "ya":"15","TS":"16","ts":"17",]
    
    let rep_shch = dic_shch.reduce(str) { $0.replacingOccurrences(of: $1.key, with: $1.value) }
    //他の複数文字もやる
    let rep_two = dictionary.reduce(rep_shch) { $0.replacingOccurrences(of: $1.key, with: $1.value) }

    //11-2で作った配列
    let cyrillic = ["А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "Й", "Ж", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У", "Ф", "Х", "К", "Ч", "Ш", "Щ", "Ъ", "Ы", "Ь", "Э", "Ю", "Я", "а", "б", "в", "г", "д", "е", "ё", "ж", "з", "й", "ж", "к", "л", "м", "н", "о", "п", "р", "с", "т", "у", "ф", "х", "k", "ч", "ш", "щ", "ъ", "ы", "ь", "э", "ю", "я","КЮ","кю","Ц","ц"];
    let latin = ["A", "B", "V", "G", "D", "00", "01", "02", "Z", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "F", "X", "C", "03", "04", "05", "", "Y", "", "E", "06", "07", "a", "b", "v", "g", "d", "08", "09", "10", "z", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "f", "x", "c", "11", "12", "13", "", "y", "", "e", "14", "15","Q","q","16","17"];

    //辞書型にまとめる
    var return_dic:[String:String] = [:]
    for i in 0..<cyrillic.count{
        return_dic.updateValue(cyrillic[i], forKey: latin[i])
    }

    //最後の置き換え
    let rep_return = return_dic.reduce(rep_two) { $0.replacingOccurrences(of: $1.key, with: $1.value) }

    return rep_return
}

// 置換後
let tmp = readLine()!
print(convert(tmp))
