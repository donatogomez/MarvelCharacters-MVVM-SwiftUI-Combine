import SwiftUI

@main
struct MarvelCharactersApp: App {
    
    @StateObject var charactersViewModel = CharactersViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(charactersViewModel)
        }
    }
}
