import UIKit
import PlaygroundSupport

class ChaosView: UIView {
    override func draw(_ rect: CGRect) {
        let a = CGPoint(x: 0, y: 0)
        let b = CGPoint(x: rect.width / 2, y: rect.height)
        let c = CGPoint(x: rect.width, y: 0)
        let points = [a, b, c]
        
        UIColor.green.setFill()
        
        for point in points {
            UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: point.x - 0.5, y: point.y - 0.5), size: CGSize(width: 1, height: 1))).fill()
        }
        
        let next = CGPoint(x: Int.random(in: 0...Int(rect.width)), y: Int.random(in: 0...Int(rect.height)))
        
        UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: next.x - 0.5, y: next.y - 0.5), size: CGSize(width: 1, height: 1))).fill()

        while true {
            let number = Int.random(in: 0..<points.count)
            if number == 0 {
                let rect1 = CGRect(origin: CGPoint(x: abs(a.x - next.x) / 2, y: abs(a.y - next.y) / 2), size: CGSize(width: 1, height: 1))
                
                UIBezierPath(ovalIn: rect1).fill()
            } else if number == 1 {
                let rect2 = CGRect(origin: CGPoint(x: abs(b.x - next.x) / 2, y: abs(b.y - next.y) / 2), size: CGSize(width: 1, height: 1))
                
                UIBezierPath(ovalIn: rect2).fill()
            } else if number == 2 {
                let rect3 = CGRect(origin: CGPoint(x: abs(c.x - next.x) / 2, y: abs(c.y - next.y) / 2), size: CGSize(width: 1, height: 1))
                
                UIBezierPath(ovalIn: rect3).fill()
            }
        }

    }
}


let rect = CGRect(x: 0, y: 0, width: 300, height: 400)
let view = ChaosView(frame: rect)
PlaygroundPage.current.liveView = view
