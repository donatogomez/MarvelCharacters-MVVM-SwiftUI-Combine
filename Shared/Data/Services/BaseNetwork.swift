import Foundation
import CryptoKit

let server = "https://gateway.marvel.com"
let privateKey = "697ba75a8bd5a48b720e3cf2de030dee3cdfc232"
let publicKey = "16386cc7e74a33499265f775d6070bd4"
let ts = 1
let orderBy = "-modified"

//let md5InputData = "\(ts)\(privateKey)\(publicKey)".data(using: .utf8)!
//let digest = Insecure.MD5.hash(data: md5InputData)
//let hashString = digest.map { String(format: "%02x", $0) }.joined()

let hashString = "91908452168cd8a52e3e1f4eb09e1261"

struct HTTPMethods {
    static let post = "POST"
    static let get = "GET"
    static let content = "application/json"
}

enum endpoints: String {
    case characters = "/v1/public/characters"
    //TODO: ¿Como meter un parametro?
    case characterSeries = "/v1/public/characters/{characterId}/series"
}

struct BaseNetwork {
    
    func getSessionCharacters() -> URLRequest? {
        let urlStr = "\(server)\(endpoints.characters.rawValue)?apikey=\(publicKey)&ts=\(ts)&hash=\(hashString)&orderBy=\(orderBy)"
        
        guard let urlServer = URL(string: urlStr) else {
            return nil
        }
        
        var request = URLRequest(url: urlServer)
        request.httpMethod = HTTPMethods.get
        request.addValue(HTTPMethods.content, forHTTPHeaderField: "Content-type")
        
        return request
    }
    
    func getSessionCharacterSeries(characterId: Int) -> URLRequest? {
        let urlStr = "\(server)/v1/public/characters/\(characterId)/series?apikey=\(publicKey)&ts=\(ts)&hash=\(hashString)&orderBy=\(orderBy)"
        
        guard let urlServer = URL(string: urlStr) else {
            return nil
        }
        
        var request = URLRequest(url: urlServer)
        request.httpMethod = HTTPMethods.get
        request.addValue(HTTPMethods.content, forHTTPHeaderField: "Content-type")
        
        return request
    }
}
