//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    func greeting(name: String) -> String {
        return "Hello " + name + "!"
    }
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let screenBounds = UIScreen.main.bounds
        let width = screenBounds.width
        let height = screenBounds.height
        
        print(width, height)

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: width, height: height)
        label.text = self.greeting(name: "there")
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .systemGray
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
