import UIKit
import PlaygroundSupport

class ChaosView: UIView {
    override func draw(_ rect: CGRect) {
        let a = CGPoint(x: 0, y: 0)
        let b = CGPoint(x: rect.width / 2, y: rect.height)
        let c = CGPoint(x: rect.width, y: 0)
        let points = [a, b, c]
        
        UIColor.white.setFill()
        
        for point in points {
            UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: point.x - 5, y: point.y - 5), size: CGSize(width: 10, height: 10))).fill()
        }
        
        var next = CGPoint(x: Int.random(in: 0...Int(rect.width)), y: Int.random(in: 0...Int(rect.height)))
        
        UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: next.x - 5, y: next.y - 5), size: CGSize(width: 10, height: 10))).fill()

        for _ in 0..<100_000 {
            let number = Int.random(in: 0..<3)
            if number == 0 {
                UIColor.red.setFill()
                let point = CGPoint(x: (a.x + next.x) / 2, y: (a.y + next.y) / 2)
                let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
                UIBezierPath(ovalIn: rectP).fill()
                next = point
            } else if number == 1 {
                UIColor.green.setFill()
                let point = CGPoint(x: (b.x + next.x) / 2, y: (b.y + next.y) / 2)
                let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
                UIBezierPath(ovalIn: rectP).fill()
                next = point
            } else if number == 2 {
                UIColor.blue.setFill()
                let point = CGPoint(x: (c.x + next.x) / 2, y: (c.y + next.y) / 2)
                let rectP = CGRect(origin: point, size: CGSize(width: 1, height: 1))
                UIBezierPath(ovalIn: rectP).fill()
                next = point
            }
            
        }

    }
}


let rect = CGRect(x: 0, y: 0, width: 300, height: 400)
let view = ChaosView(frame: rect)
PlaygroundPage.current.liveView = view
