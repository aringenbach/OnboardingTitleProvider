import ModuleSDK
import Foundation

public class OnboardingTitleProvider: OnboardingTitleProviderProtocol {
    public private (set) var onboardingTitle: String? = "Some external title"

    public init() {}
}
