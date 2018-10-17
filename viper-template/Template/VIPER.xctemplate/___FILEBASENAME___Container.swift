//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___VARIABLE_ModuleName___Container {
	let viewController: UIViewController
	private(set) weak var router: ___VARIABLE_ModuleName___RouterInput!

	class func assemble(with input: ___VARIABLE_ModuleName___ModuleInput) -> ___VARIABLE_ModuleName___Container {
		let viewController = ___VARIABLE_ModuleName___ViewController()
		let presenter = ___VARIABLE_ModuleName___Presenter()
		let router = ___VARIABLE_ModuleName___Router()
		let interactor = ___VARIABLE_ModuleName___Interactor()

		viewController.output = presenter

		presenter.view = viewController
		presenter.router = router
		presenter.interactor = interactor
		presenter.moduleOutput = input.moduleOutput

		interactor.output = presenter

		return ___VARIABLE_ModuleName___Container(view: viewController, router: router)
	}

	private init(view: UIViewController, router: ___VARIABLE_ModuleName___RouterInput) {
		viewController = view
		self.router = router
	}
}

struct ___VARIABLE_ModuleName___Input: ___VARIABLE_ModuleName___ModuleInput {
	weak var moduleOutput: ___VARIABLE_ModuleName___ModuleOutput?
}
