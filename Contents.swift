import UIKit
import SpriteKit
import PlaygroundSupport

class ChaosView: UIView {
    
    let a = CGPoint(x: 0, y: 0)
    let b = CGPoint(x: rect.width / 2, y: rect.height)
    let c = CGPoint(x: rect.width, y: 0)
    
    var nextPoint = CGPoint(x: Int.random(in: 0...Int(rect.width)), y: Int.random(in: 0...Int(rect.height)))
    
    override func draw(_ rect: CGRect) {
        
        let points = [a, b, c]
        
        UIColor.white.setFill()
        
        for point in points {
            UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: point.x - 5, y: point.y - 5), size: CGSize(width: 10, height: 10))).fill()
        }
        
        UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: nextPoint.x - 5, y: nextPoint.y - 5), size: CGSize(width: 10, height: 10))).fill()

//        for _ in 0..<10_000 {
//            let number = Int.random(in: 0..<3)
//            if number == 0 {
//                UIColor.red.setFill()
//                let point = CGPoint(x: (a.x + nextPoint.x) / 2, y: (a.y + nextPoint.y) / 2)
//                let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
//                UIBezierPath(ovalIn: rectP).fill()
//                nextPoint = point
//            } else if number == 1 {
//                UIColor.green.setFill()
//                let point = CGPoint(x: (b.x + nextPoint.x) / 2, y: (b.y + nextPoint.y) / 2)
//                let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
//                UIBezierPath(ovalIn: rectP).fill()
//                nextPoint = point
//            } else if number == 2 {
//                UIColor.blue.setFill()
//                let point = CGPoint(x: (c.x + nextPoint.x) / 2, y: (c.y + nextPoint.y) / 2)
//                let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
//                UIBezierPath(ovalIn: rectP).fill()
//                nextPoint = point
//            }
//        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let number = Int.random(in: 0..<3)
        if number == 0 {
            UIColor.red.setFill()
            let point = CGPoint(x: (a.x + nextPoint.x) / 2, y: (a.y + nextPoint.y) / 2)
            let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
            UIBezierPath(ovalIn: rectP).fill()
            nextPoint = point
        } else if number == 1 {
            UIColor.green.setFill()
            let point = CGPoint(x: (b.x + nextPoint.x) / 2, y: (b.y + nextPoint.y) / 2)
            let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
            UIBezierPath(ovalIn: rectP).fill()
            nextPoint = point
        } else if number == 2 {
            UIColor.blue.setFill()
            let point = CGPoint(x: (c.x + nextPoint.x) / 2, y: (c.y + nextPoint.y) / 2)
            let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
            UIBezierPath(ovalIn: rectP).fill()
            nextPoint = point
        }
    }
    
}



let rect = CGRect(x: 0, y: 0, width: 300, height: 400)
let view = ChaosView(frame: rect)

PlaygroundPage.current.liveView = view
