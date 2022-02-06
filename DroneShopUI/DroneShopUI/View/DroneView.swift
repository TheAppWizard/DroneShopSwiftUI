//
//  DroneView.swift
//  DroneShopUI
//
//  Created by Shreyas Vilaschandra Bhike on 06/02/22.
//

import SwiftUI
import SceneKit

struct DroneView: View {
    var body: some View {
        ZStack{
          


            AutoRotate3D()
            manualRotate3D()

        }
    }
}

struct DroneView_Previews: PreviewProvider {
    static var previews: some View {
        DroneView()
    }
}

struct AutoRotate3D: View {

        var body: some View {

                    ZStack{
                        SceneView(
                            scene: {
                                let scene = SCNScene(named: "drone.usdz")!

                                //BackgroundColor White
                                scene.background.contents = UIColor.black

                                
                                let drone = scene.rootNode.childNode(withName: "drone", recursively: true)!

                                // animate the 3d object
                                drone.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 2, z: 0, duration: 3)))


                                return scene


                            }(),
                            options: [.allowsCameraControl,.autoenablesDefaultLighting]
                        )
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .center)
                       

                    }
                }
            }


struct manualRotate3D: View {

        var body: some View {

                    ZStack{
                        SceneView(
                            scene: {
                                let scene = SCNScene(named: "drone.usdz")!
                                //BackgroundColor White
                                scene.background.contents = UIColor.black
                                return scene

                            }(),
                            options: [.allowsCameraControl,.autoenablesDefaultLighting]
                        )
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .center)
                       

                    }
                }
            }

