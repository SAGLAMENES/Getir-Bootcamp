#!/usr/bin/env swift

import Foundation


var users = ["Enes","Rezzak","Sinem","Ahmet","Mehmet"]

if users.contains(""){
	print("Error, empty username")
}else{
	users = users.sorted(by: { $0 > $1 })
	for index in 0..<users.count {
	users[index]=users[index].uppercased()
	print(users[index])
	}
	
}


/*print("Enter your name:")
var name = readLine(strippingNewline: true)
print("Hello \(name ?? "anon")")*/
// Odev: usersların tüm harflerini büyütüp Z-A ya sıralı olacak şekilde yazınız

