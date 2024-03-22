import UIKit
import Foundation


var exampleString = "aaba Kouq bux"
//MARK: - 1. Soru
func deleteLetter(delete: Int) {
    var strings = exampleString
    
    for char in strings{
        if char == " "{
            continue
        }
        var varCount = 1

        for char1 in strings{
            if char == char1{
                varCount += 1
            }
        }
        if varCount > delete {
            strings = strings.filter { $0 != char }
        }
    }
    print(strings)
}
//deleteLetter(delete: 2)
//MARK: - 2. Soru
var exampleString2 = "Merhaba nasılsınız iyiyim siz nasılsınız bende iyiyim"
func findWord(){
    var exampleString2 = exampleString2.lowercased()
    var totalWord = ""
    for char in exampleString2{
        if char == " "{
            let occurrences = exampleString2.components(separatedBy: " ").filter { $0 == totalWord }.count
            print("\(totalWord) kelimesi \(occurrences) kez geçiyor")
            totalWord = ""

        }else{
            totalWord += String(char)
        }
    }
}
//findWord()


 //MARK: - EULER PROJECT
//MARK: - 1. Soru
/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get  and . The sum of these multiples is 23 .

 Find the sum of all the multiples of  1000 or  below .
 */
func totalMultiple(){
    var total = 0
    for i in 1..<1000{
        if i % 3 == 0 || i % 5 == 0{
            total += i
        }
    }
    print(total)
}
//totalMultiple()
//MARK: - 2. Soru
/*
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 */
func fibonacci(){
    var first = 1
    var second = 2
    var total = 0
    while second < 4000000{
        if second % 2 == 0{
            total += second
        }
        let temp = first
        first = second
        second = temp + first
    }
    print(total)
}
//fibonacci()
//MARK: - 3. Soru
/*
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number  ?
 */
func largestPrime(){
    var isPrime = true
    var largestPrime = 2
    for i in 2...600851475143{
        if 600851475143 % i == 0{
            for j in 2..<i{
                if i % j == 0{
                    isPrime = false
                    break
                }
            }
            if isPrime{
                largestPrime = i
            }
        }
        
    }
    print(largestPrime)
}
//largestPrime()

//MARK: - 4. Soru ARRAY, SET, SETLERDE HASHABLE PROTOKOL AVANTAJI :

/*
 // Setler düzensiz ve tekrar etmezken, arraylerde düzen vardır ve array elementleri birbirini tekrar edebilir..
 // Setlerde Hashable protokolü kullanılırken, arraylerde kullanılmaz.
 // Setlerde sıralama yokken, arraylerde sıralama vardır.
 // Setlerde elemanlar birbirini tekrar etmezken, arraylerde tekrar edebilir.
 // Setlerde elemanlar değiştirilemezken, arraylerde değiştirilebilir.
 // Setlerde elemanlar indexlenemezken, arraylerde indexlenebilir.
 // Setler arraylerden daha hızlı erişim sağlayabilir. Özellikle veri setinde bir elemanın olup olmadığını kontrol etmek için setler daha hızlıdır denilebilir.
 */

//MARK: - 5. Soru
/*
 A polindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers.
 */
 
func polindromicNum(){
    var number = 0
    var string1 = ""
    for i in 100...999{
        for j in 100...999{
            string1 = String(i*j)
            if string1 == String(string1.reversed()){
                if i*j > number{
                    number = i*j
                }
            }
        }
    }
    print(number)
}
//polindromicNum()

//MARK: - 6. Soru
/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 what is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */
 
func evenlyDivisible(){
    var number = 1
    for i in 1...20{
        number*=i
    }
    for i in 20...number{
        var isDivisible = true
        for j in 1...20{
            if i % j != 0{
                isDivisible = false
                break
            }
        }
        if isDivisible{
            print(i)
            break
        }
    }
}
//evenlyDivisible()
