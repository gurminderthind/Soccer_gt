//: Playground - noun: a place where people can play

let joeSmith: [String: Any] = ["Name": "Joe Smith", "Height": 42, "Experience": true, "Guardian": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "Experience": true, "Guardian": "Clara Tanner"]
let billBon: [String: Any] = ["Name": "Bill Bon", "Height": 43, "Experience": true, "Guardian": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["Name": "Eva Gordon", "Height": 45, "Experience": false, "Guardian": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["Name": "Matt Gill", "Height": 40, "Experience": false, "Guardian": "Charles and Sylvia Gill"]
let kimmyStein: [String: Any] = ["Name": "Kimmy Stein", "Height": 41, "Experience": false, "Guardian": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["Name": "Sammy Adams", "Height": 45, "Experience": false, "Guardian": "Jeff Adams"]
let karlSaygan: [String: Any] = ["Name": "Karl Saygan", "Height": 42, "Experience": true, "Guardian": "Heather Bledsoe"]
let suzaneGreenberg: [String: Any] = ["Name": "Suzane Greenberg", "Height": 44, "Experience": true, "Guardian": "Henrietta Dumas"]
let salDali: [String: Any] = ["Name": "Sal Dali", "Height": 41, "Experience": false, "Guardian": "Gala Dali"]
let joeKavalier: [String: Any] = ["Name": "Joe Kavalier", "Height": 39, "Experience": false, "Guardian": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["Name": "Ben Finkelstein", "Height": 44, "Experience": false, "Guardian": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["Name": "Diego Soto", "Height": 41, "Experience": true, "Guardian": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["Name": "Chloe Alaska", "Height": 47, "Experience": false, "Guardian": "David and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["Name": "Arnold Willis", "Height": 43, "Experience": false, "Guardian": "Claire Willis"]
let phillipHelm: [String: Any] = ["Name": "Phillip Helm", "Height": 44, "Experience": true, "Guardian": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["Name": "Les Clay", "Height": 42, "Experience": true, "Guardian": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["Name": "Herschel Krustofski", "Height": 45, "Experience": true, "Guardian": "Hyman and Rachel Krustofski"]

let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

var experiencedPlayers: [[String: Any]] = []
var unexperiencedPlayers: [[String: Any]] = []

for player in players {
        if player ["Experience"] as! Bool == true {
                experiencedPlayers.append(player)
            } else {
                unexperiencedPlayers.append(player)
            }
    }

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

for i in 0..<experiencedPlayers.count {
        let players = experiencedPlayers [i]
        let mod = i % 3
        if mod == 0 {
                teamSharks.append(players)
            }
       else if mod == 1 {
                teamDragons.append(players)
            }
        else {
                teamRaptors.append(players)
            }
    }

for i in 0..<unexperiencedPlayers.count {
        let players = unexperiencedPlayers[i]
        let mod = i % 3
        if mod == 0 {
                teamRaptors.append(players)
            }
        else if mod == 1 {
                teamDragons.append(players)
            }
        else {
                teamSharks.append(players)
            }
    }


for players in teamSharks {
        print("Congrats \(players["Guardian"]!), your child, \(players["Name"]!), has been chosen to play on team Sharks. The first practice for the Sharks will be held on April 30th at 1 pm.")
    }

for players in teamDragons {
        print("Congrats \(players["Guardian"]!), your child, \(players["Name"]!), has been chosen to play on team Dragons. The first practice for the Dragons will be held on April 30th at 1 pm.")
    }

for players in teamRaptors {
        print("Congrats \(players["Guardian"]!), your child, \(players["Name"]!), has been chosen to play on team Raptors. The first practice for the Raptors will be held on April 30th at 1 pm.")
    }

