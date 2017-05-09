// MARK: - Mocks generated from file: FBTest/ViewController.swift at 2017-05-09 16:16:51 +0000

//
//  ViewController.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. Al
import Cuckoo
@testable import FBTest

import UIKit

class MockViewController: ViewController, Cuckoo.Mock {
    typealias MocksType = ViewController
    typealias Stubbing = __StubbingProxy_ViewController
    typealias Verification = __VerificationProxy_ViewController
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: ViewController?

    func spy(on victim: ViewController) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "presenter", "accesibility": "", "@type": "InstanceVariable", "type": "PresenterImpl!", "isReadOnly": false]
     override var presenter: PresenterImpl! {
        get {
            return cuckoo_manager.getter("presenter", original: observed.map { o in return { () -> PresenterImpl! in o.presenter }})
        }
        
        set {
            cuckoo_manager.setter("presenter", value: newValue, original: observed != nil ? { self.observed?.presenter = $0 } : nil)
        }
        
    }
    

    

    
     override func viewDidLoad()  {
        
        return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.viewDidLoad()
                }
            })
        
    }
    
     override func didReceiveMemoryWarning()  {
        
        return cuckoo_manager.call("didReceiveMemoryWarning()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.didReceiveMemoryWarning()
                }
            })
        
    }
    
     override func getViewController()  -> UIViewController {
        
        return cuckoo_manager.call("getViewController() -> UIViewController",
            parameters: (),
            original: observed.map { o in
                return { () -> UIViewController in
                    o.getViewController()
                }
            })
        
    }
    
     override func printResult(_ result: String)  -> (Void) {
        
        return cuckoo_manager.call("printResult(_: String) -> (Void)",
            parameters: (result),
            original: observed.map { o in
                return { (result: String) -> (Void) in
                    o.printResult(result)
                }
            })
        
    }
    
     override func getTokenButtonTapAction(_ sender: Any)  {
        
        return cuckoo_manager.call("getTokenButtonTapAction(_: Any)",
            parameters: (sender),
            original: observed.map { o in
                return { (sender: Any) in
                    o.getTokenButtonTapAction(sender)
                }
            })
        
    }
    

    struct __StubbingProxy_ViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var presenter: Cuckoo.ToBeStubbedProperty<PresenterImpl?> {
            return .init(manager: cuckoo_manager, name: "presenter")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func didReceiveMemoryWarning() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("didReceiveMemoryWarning()", parameterMatchers: matchers))
        }
        
        func getViewController() -> Cuckoo.StubFunction<(), UIViewController> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("getViewController() -> UIViewController", parameterMatchers: matchers))
        }
        
        func printResult<M1: Cuckoo.Matchable>(_ result: M1) -> Cuckoo.StubFunction<(String), (Void)> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: result) { $0 }]
            return .init(stub: cuckoo_manager.createStub("printResult(_: String) -> (Void)", parameterMatchers: matchers))
        }
        
        func getTokenButtonTapAction<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.StubNoReturnFunction<(Any)> where M1.MatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getTokenButtonTapAction(_: Any)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_ViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var presenter: Cuckoo.VerifyProperty<PresenterImpl?> {
            return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func didReceiveMemoryWarning() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("didReceiveMemoryWarning()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func getViewController() -> Cuckoo.__DoNotUse<UIViewController> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getViewController() -> UIViewController", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func printResult<M1: Cuckoo.Matchable>(_ result: M1) -> Cuckoo.__DoNotUse<(Void)> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: result) { $0 }]
            return cuckoo_manager.verify("printResult(_: String) -> (Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func getTokenButtonTapAction<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
            return cuckoo_manager.verify("getTokenButtonTapAction(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class ViewControllerStub: ViewController {
    
     override var presenter: PresenterImpl! {
        get {
            return DefaultValueRegistry.defaultValue(for: (PresenterImpl!).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func didReceiveMemoryWarning()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getViewController()  -> UIViewController {
        return DefaultValueRegistry.defaultValue(for: UIViewController.self)
    }
    
     override func printResult(_ result: String)  -> (Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getTokenButtonTapAction(_ sender: Any)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}




// MARK: - Mocks generated from file: FBTest/Facebook.swift at 2017-05-09 16:16:51 +0000

//
//  Facebook.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. Al
import Cuckoo
@testable import FBTest

import SafariServices
import UIKit

class MockFacebook: Facebook, Cuckoo.Mock {
    typealias MocksType = Facebook
    typealias Stubbing = __StubbingProxy_Facebook
    typealias Verification = __VerificationProxy_Facebook
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: Facebook?

    func spy(on victim: Facebook) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "viewController", "accesibility": "", "@type": "InstanceVariable", "type": "UIViewController?", "isReadOnly": false]
     override var viewController: UIViewController? {
        get {
            return cuckoo_manager.getter("viewController", original: observed.map { o in return { () -> UIViewController? in o.viewController }})
        }
        
        set {
            cuckoo_manager.setter("viewController", value: newValue, original: observed != nil ? { self.observed?.viewController = $0 } : nil)
        }
        
    }
    
    // ["name": "svc", "accesibility": "", "@type": "InstanceVariable", "type": "SFSafariViewController?", "isReadOnly": false]
     override var svc: SFSafariViewController? {
        get {
            return cuckoo_manager.getter("svc", original: observed.map { o in return { () -> SFSafariViewController? in o.svc }})
        }
        
        set {
            cuckoo_manager.setter("svc", value: newValue, original: observed != nil ? { self.observed?.svc = $0 } : nil)
        }
        
    }
    
    // ["name": "callback", "accesibility": "", "@type": "InstanceVariable", "type": "((String?, Error?) -> Void)?", "isReadOnly": false]
     override var callback: ((String?, Error?) -> Void)? {
        get {
            return cuckoo_manager.getter("callback", original: observed.map { o in return { () -> ((String?, Error?) -> Void)? in o.callback }})
        }
        
        set {
            cuckoo_manager.setter("callback", value: newValue, original: observed != nil ? { self.observed?.callback = $0 } : nil)
        }
        
    }
    
    // ["name": "loginWasCalled", "accesibility": "", "@type": "InstanceVariable", "type": "Bool", "isReadOnly": false]
     override var loginWasCalled: Bool {
        get {
            return cuckoo_manager.getter("loginWasCalled", original: observed.map { o in return { () -> Bool in o.loginWasCalled }})
        }
        
        set {
            cuckoo_manager.setter("loginWasCalled", value: newValue, original: observed != nil ? { self.observed?.loginWasCalled = $0 } : nil)
        }
        
    }
    

    

    
    public override func getAuthToken(callback: @escaping (String?, Error?) -> Void)  {
        
        return cuckoo_manager.call("getAuthToken(callback: @escaping (String?, Error?) -> Void)",
            parameters: (callback),
            original: observed.map { o in
                return { (callback: @escaping (String?, Error?) -> Void) in
                    o.getAuthToken(callback: callback)
                }
            })
        
    }
    
     override func parsingURL(_ url: URL)  {
        
        return cuckoo_manager.call("parsingURL(_: URL)",
            parameters: (url),
            original: observed.map { o in
                return { (url: URL) in
                    o.parsingURL(url)
                }
            })
        
    }
    

    struct __StubbingProxy_Facebook: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var viewController: Cuckoo.ToBeStubbedProperty<UIViewController?> {
            return .init(manager: cuckoo_manager, name: "viewController")
        }
        
        var svc: Cuckoo.ToBeStubbedProperty<SFSafariViewController?> {
            return .init(manager: cuckoo_manager, name: "svc")
        }
        
        var callback: Cuckoo.ToBeStubbedProperty<((String?, Error?) -> Void)?> {
            return .init(manager: cuckoo_manager, name: "callback")
        }
        
        var loginWasCalled: Cuckoo.ToBeStubbedProperty<Bool> {
            return .init(manager: cuckoo_manager, name: "loginWasCalled")
        }
        
        
        func getAuthToken<M1: Cuckoo.Matchable>(callback: M1) -> Cuckoo.StubNoReturnFunction<((String?, Error?) -> Void)> where M1.MatchedType == (String?, Error?) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((String?, Error?) -> Void)>] = [wrap(matchable: callback) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getAuthToken(callback: @escaping (String?, Error?) -> Void)", parameterMatchers: matchers))
        }
        
        func parsingURL<M1: Cuckoo.Matchable>(_ url: M1) -> Cuckoo.StubNoReturnFunction<(URL)> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
            return .init(stub: cuckoo_manager.createStub("parsingURL(_: URL)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_Facebook: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var viewController: Cuckoo.VerifyProperty<UIViewController?> {
            return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var svc: Cuckoo.VerifyProperty<SFSafariViewController?> {
            return .init(manager: cuckoo_manager, name: "svc", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var callback: Cuckoo.VerifyProperty<((String?, Error?) -> Void)?> {
            return .init(manager: cuckoo_manager, name: "callback", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var loginWasCalled: Cuckoo.VerifyProperty<Bool> {
            return .init(manager: cuckoo_manager, name: "loginWasCalled", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func getAuthToken<M1: Cuckoo.Matchable>(callback: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (String?, Error?) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((String?, Error?) -> Void)>] = [wrap(matchable: callback) { $0 }]
            return cuckoo_manager.verify("getAuthToken(callback: @escaping (String?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func parsingURL<M1: Cuckoo.Matchable>(_ url: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
            return cuckoo_manager.verify("parsingURL(_: URL)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class FacebookStub: Facebook {
    
     override var viewController: UIViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController?).self)
        }
        
        set { }
        
    }
    
     override var svc: SFSafariViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SFSafariViewController?).self)
        }
        
        set { }
        
    }
    
     override var callback: ((String?, Error?) -> Void)? {
        get {
            return DefaultValueRegistry.defaultValue(for: (((String?, Error?) -> Void)?).self)
        }
        
        set { }
        
    }
    
     override var loginWasCalled: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
        set { }
        
    }
    

    

    
    public override func getAuthToken(callback: @escaping (String?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func parsingURL(_ url: URL)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}




// MARK: - Mocks generated from file: FBTest/PresenterImpl.swift at 2017-05-09 16:16:51 +0000

//
//  PresenterImpl.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. Al
import Cuckoo
@testable import FBTest

import UIKit

class MockPresenterImpl: PresenterImpl, Cuckoo.Mock {
    typealias MocksType = PresenterImpl
    typealias Stubbing = __StubbingProxy_PresenterImpl
    typealias Verification = __VerificationProxy_PresenterImpl
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: PresenterImpl?

    func spy(on victim: PresenterImpl) -> Self {
        observed = victim
        return self
    }

    

    

    
     override func auth()  {
        
        return cuckoo_manager.call("auth()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.auth()
                }
            })
        
    }
    

    struct __StubbingProxy_PresenterImpl: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func auth() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("auth()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_PresenterImpl: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func auth() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("auth()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class PresenterImplStub: PresenterImpl {
    

    

    
     override func auth()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



