#!/usr/bin/env swift

import Foundation


/*var users = ["Enes","Rezzak","Sinem","Ahmet","Mehmet"]

if users.contains(""){
	print("Error, empty username")
}else{
	for user in users {
	print(user.capitalized)
	print(user.uppercased())
	}
}
*/

print("Enter your name:")
var name = readLine(strippingNewline: true)
print("Hello \(name ?? "anon")")
// Odev: usersların tüm harflerini büyütüp Z-A ya sıralı olacak şekilde yazınız

