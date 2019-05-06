
import SpriteKit
class GameScene: SKScene {
    
    var lastUpdateTime: TimeInterval = 0
    var dt: TimeInterval = 0
    
    let zombie = SKSpriteNode(imageNamed: "zombie1")
    let velocity = CGPoint(x: 480.0, y: 0)

    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        let background = SKSpriteNode(imageNamed: "background1")
        background.anchorPoint = CGPoint.zero
        background.zPosition = -1
        addChild(background)
        
        
        zombie.position = CGPoint(x: 400, y: 400)
        zombie.zPosition = 0
//        zombie.setScale(2)
        addChild(zombie)
    }
    
    override func update(_ currentTime: TimeInterval) {
        if lastUpdateTime > 0 {
            dt = currentTime - lastUpdateTime
        } else {
            dt = 0
        }
        lastUpdateTime = currentTime
        
        let amountToMove = CGPoint(x: CGFloat(dt) * velocity.x, y: 0)
        print(amountToMove)
        zombie.position = CGPoint(x: zombie.position.x + amountToMove.x, y: zombie.position.y)
    }
    
    func move(sprite: SKSpriteNode, velocity: CGPoint)
}
