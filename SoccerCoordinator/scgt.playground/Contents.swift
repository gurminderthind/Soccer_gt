//: Playground - noun: a place where people can play

let name: String = "name"
let height: String = "height"
let soccerExperience: String = "soccerExperience"
let guardianName: String = "guardianName"

let joeSmith: Dictionary <String,Any> = [
    name: "Joe Smith",
    height: 42,
    soccerExperience: true,
    guardianName: "Jim and Jan Smith"
]

let jillTanner: Dictionary <String,Any> = [
    name: "Jill Tanner",
    height: 36,
    soccerExperience: true,
    guardianName: "Clara Tanner"
]

let billBon: Dictionary <String,Any> = [
    name: "Bill Bon",
    height: 43,
    soccerExperience: true,
    guardianName: "Sara and Jenny Bon"
]

let evaGordon: Dictionary <String,Any> = [
    name: "Eva Gordon",
    height: 45,
    soccerExperience: false,
    guardianName: "Wendy and Mike Gordon"
]

let mattGill: Dictionary <String,Any> = [
    name: "Matt Gill",
    height: 40,
    soccerExperience: false,
    guardianName: "Charles and Sylvia Gill"
]

let kimmyStein: Dictionary <String,Any> = [
    name: "Kimmy Stein",
    height: 41,
    soccerExperience: false,
    guardianName: "Bill and Hillary Stein"
]

let sammyAdams: Dictionary <String,Any> = [
    name: "Sammy Adams",
    height: 45,
    soccerExperience: false,
    guardianName: "Jeff Adams"
]

let karlSaygan: Dictionary <String,Any> = [
    name: "Karl Saygan",
    height: 42,
    soccerExperience: true,
    guardianName: "Heather Bledsoe"
]

let suzaneGreenberg: Dictionary <String,Any> = [
    name: "Suzane Greenberg",
    height: 44,
    soccerExperience: true,
    guardianName: "Henrietta Dumas"
]

let salDali: Dictionary <String,Any> = [
    name: "Sal Dali",
    height: 41,
    soccerExperience: false,
    guardianName: "Gala Dali"
]

let joeKavalier: Dictionary <String,Any> = [
    name: "Joe Kavalier",
    height: 39,
    soccerExperience: false,
    guardianName: "Sam and Elaine Kavalier"
]

let benFinkelstein: Dictionary <String,Any> = [
    name: "Ben Finkelstein",
    height: 44,
    soccerExperience: false,
    guardianName: "Aaron and Jill Finkelstein"
]

let diegoSoto: Dictionary <String,Any> = [
    name: "Diego Soto",
    height: 41,
    soccerExperience: true,
    guardianName: "Robin and Sarika Soto"
]

let chloeAlaska: Dictionary <String,Any> = [
    name: "Chloe Alaska",
    height: 47,
    soccerExperience: false,
    guardianName: "David and Jamie Alaska"
]

let arnoldWillis: Dictionary <String,Any> = [
    name: "Arnold Willis",
    height: 43,
    soccerExperience: false,
    guardianName: "Claire Willis"
]

let phillipHelm: Dictionary <String,Any> = [
    name: "Phillip Helm",
    height: 44,
    soccerExperience: true,
    guardianName: "Thomas Helm and Eva Jones"
]

let lesClay: Dictionary <String,Any> = [
    name: "Les Clay",
    height: 42,
    soccerExperience: true,
    guardianName: "Wynonna Brown"
]

let herschelKrustofski: Dictionary <String,Any> = [
    name: "Herschel Krustofski",
    height: 45,
    soccerExperience: true,
    guardianName: "Hyman and Rachel Krustofski"
]

let players: [Dictionary<String, Any>] = [
    joeSmith,
    jillTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenberg,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski
]

var experiencedPlayers: [Dictionary<String, Any>] = []
var inexperiencedPlayers: [Dictionary<String, Any>] = []
for player in players {
    if player[soccerExperience] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

var sharks: [Dictionary<String, Any>] = []
var dragons: [Dictionary<String, Any>] = []
var raptors: [Dictionary<String, Any>] = []

for i in 0..<experiencedPlayers.count {
    let player = experiencedPlayers[i]
    let mod = i % 3
    if mod == 0 {
        sharks.append(player)
    } else if mod == 1 {
        dragons.append(player)
    } else {
        raptors.append(player)
    }
}

for i in 0..<inexperiencedPlayers.count {
    let player = inexperiencedPlayers[i]
    let mod = i % 3
    if mod == 0 {
        raptors.append(player)
    } else if mod == 1 {
        dragons.append(player)
    } else {
        sharks.append(player)
    }
    
    for player in sharks {
        print("Dear \(player[guardianName]), your child, \(player[name]),has been placed on the team Sharks. The first practice is on February 28,2017")
    }
    
    for player in dragons {
        print("Dear \(player[guardianName]), your child, \(player[name]),has been placed on the team Dragons. The first practice is on February 28,2017")
    }
    
    for player in raptors {
        print("Dear \(player[guardianName]), your child, \(player[name]),has been placed on the team Raptors. The first practice is on February 28,2017")
    }
}
