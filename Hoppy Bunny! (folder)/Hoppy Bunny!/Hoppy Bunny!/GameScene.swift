import SpriteKit

class GameScene: SKScene {
    
    var hero: SKSpriteNode!
    //UserInteractionEnabled = true
    
    override func didMove(to view: SKView) {
        /* Setup your scene here */
        /* Recursive node search for 'hero' (child of referenced node) */
        hero = self.childNode(withName: "//hero") as! SKSpriteNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        
        /* Apply vertical impulse */
        hero.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 300))
    }
    
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
        
        
        /* Grab current velocity */
        let velocityY = hero.physicsBody?.velocity.dy ?? 0
        
        /* Check and cap vertical velocity */
        if velocityY > 400 {
            hero.physicsBody?.velocity.dy = 400
        }
    }
}
