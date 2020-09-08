//
//  ContentView.swift
//  Moonshot
//
//  Created by Design Work on 2020-09-07.
//  Copyright © 2020 Ling Lu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView{
            List(missions){ mission in
                NavigationLink(destination: Text("Detail View")){
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width:60)
                    
                    VStack(alignment: .leading){
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.formattedLaunchDate)
                    }

                    
                }
                
            }.navigationBarTitle("MoonShot")
           
//            GeometryReader{geo in
//                Image("preview")
//
//
//            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
