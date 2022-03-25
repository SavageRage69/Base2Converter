package main
import "fmt"

func Reverse(s string) string {
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

func toBase2(val int) string {
    a := []string{}
    str := ""
    for val!=0 {
        if val%2==0 {
            a = append(a, "0")
            val=val/2
        } else {
            a = append(a, "1")
            val=(val-1)/2
        }
    }
    for i := 0; i < len(a); i++ {
        str=str+a[i]
    }
    return(Reverse(str))
}
