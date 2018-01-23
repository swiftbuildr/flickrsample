//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class MockUINavigationController: UINavigationController {

    var invokedTopViewControllerGetter = false
    var invokedTopViewControllerGetterCount = 0
    var stubbedTopViewController: UIViewController!
    override var topViewController: UIViewController? {
        invokedTopViewControllerGetter = true
        invokedTopViewControllerGetterCount += 1
        return stubbedTopViewController
    }
    var invokedVisibleViewControllerGetter = false
    var invokedVisibleViewControllerGetterCount = 0
    var stubbedVisibleViewController: UIViewController!
    override var visibleViewController: UIViewController? {
        invokedVisibleViewControllerGetter = true
        invokedVisibleViewControllerGetterCount += 1
        return stubbedVisibleViewController
    }
    var invokedViewControllersSetter = false
    var invokedViewControllersSetterCount = 0
    var invokedViewControllers: [UIViewController]?
    var invokedViewControllersList = [[UIViewController]]()
    var invokedViewControllersGetter = false
    var invokedViewControllersGetterCount = 0
    var stubbedViewControllers: [UIViewController]! = []
    override var viewControllers: [UIViewController] {
        set {
            invokedViewControllersSetter = true
            invokedViewControllersSetterCount += 1
            invokedViewControllers = newValue
            invokedViewControllersList.append(newValue)
        }
        get {
            invokedViewControllersGetter = true
            invokedViewControllersGetterCount += 1
            return stubbedViewControllers
        }
    }
    var invokedIsNavigationBarHiddenSetter = false
    var invokedIsNavigationBarHiddenSetterCount = 0
    var invokedIsNavigationBarHidden: Bool?
    var invokedIsNavigationBarHiddenList = [Bool]()
    var invokedIsNavigationBarHiddenGetter = false
    var invokedIsNavigationBarHiddenGetterCount = 0
    var stubbedIsNavigationBarHidden: Bool! = false
    override var isNavigationBarHidden: Bool {
        set {
            invokedIsNavigationBarHiddenSetter = true
            invokedIsNavigationBarHiddenSetterCount += 1
            invokedIsNavigationBarHidden = newValue
            invokedIsNavigationBarHiddenList.append(newValue)
        }
        get {
            invokedIsNavigationBarHiddenGetter = true
            invokedIsNavigationBarHiddenGetterCount += 1
            return stubbedIsNavigationBarHidden
        }
    }
    var invokedNavigationBarGetter = false
    var invokedNavigationBarGetterCount = 0
    var stubbedNavigationBar: UINavigationBar = UINavigationBar()
    override var navigationBar: UINavigationBar {
        invokedNavigationBarGetter = true
        invokedNavigationBarGetterCount += 1
        return stubbedNavigationBar
    }
    var invokedIsToolbarHiddenSetter = false
    var invokedIsToolbarHiddenSetterCount = 0
    var invokedIsToolbarHidden: Bool?
    var invokedIsToolbarHiddenList = [Bool]()
    var invokedIsToolbarHiddenGetter = false
    var invokedIsToolbarHiddenGetterCount = 0
    var stubbedIsToolbarHidden: Bool! = false
    override var isToolbarHidden: Bool {
        set {
            invokedIsToolbarHiddenSetter = true
            invokedIsToolbarHiddenSetterCount += 1
            invokedIsToolbarHidden = newValue
            invokedIsToolbarHiddenList.append(newValue)
        }
        get {
            invokedIsToolbarHiddenGetter = true
            invokedIsToolbarHiddenGetterCount += 1
            return stubbedIsToolbarHidden
        }
    }
    var invokedToolbarGetter = false
    var invokedToolbarGetterCount = 0
    var stubbedToolbar: UIToolbar! = UIToolbar()
    override var toolbar: UIToolbar! {
        invokedToolbarGetter = true
        invokedToolbarGetterCount += 1
        return stubbedToolbar
    }
    var invokedDelegateSetter = false
    var invokedDelegateSetterCount = 0
    var invokedDelegate: UINavigationControllerDelegate?
    var invokedDelegateList = [UINavigationControllerDelegate?]()
    var invokedDelegateGetter = false
    var invokedDelegateGetterCount = 0
    var stubbedDelegate: UINavigationControllerDelegate!
    override var delegate: UINavigationControllerDelegate? {
        set {
            invokedDelegateSetter = true
            invokedDelegateSetterCount += 1
            invokedDelegate = newValue
            invokedDelegateList.append(newValue)
        }
        get {
            invokedDelegateGetter = true
            invokedDelegateGetterCount += 1
            return stubbedDelegate
        }
    }
    var invokedInteractivePopGestureRecognizerGetter = false
    var invokedInteractivePopGestureRecognizerGetterCount = 0
    var stubbedInteractivePopGestureRecognizer: UIGestureRecognizer!
    override var interactivePopGestureRecognizer: UIGestureRecognizer? {
        invokedInteractivePopGestureRecognizerGetter = true
        invokedInteractivePopGestureRecognizerGetterCount += 1
        return stubbedInteractivePopGestureRecognizer
    }
    var invokedHidesBarsWhenKeyboardAppearsSetter = false
    var invokedHidesBarsWhenKeyboardAppearsSetterCount = 0
    var invokedHidesBarsWhenKeyboardAppears: Bool?
    var invokedHidesBarsWhenKeyboardAppearsList = [Bool]()
    var invokedHidesBarsWhenKeyboardAppearsGetter = false
    var invokedHidesBarsWhenKeyboardAppearsGetterCount = 0
    var stubbedHidesBarsWhenKeyboardAppears: Bool! = false
    override var hidesBarsWhenKeyboardAppears: Bool {
        set {
            invokedHidesBarsWhenKeyboardAppearsSetter = true
            invokedHidesBarsWhenKeyboardAppearsSetterCount += 1
            invokedHidesBarsWhenKeyboardAppears = newValue
            invokedHidesBarsWhenKeyboardAppearsList.append(newValue)
        }
        get {
            invokedHidesBarsWhenKeyboardAppearsGetter = true
            invokedHidesBarsWhenKeyboardAppearsGetterCount += 1
            return stubbedHidesBarsWhenKeyboardAppears
        }
    }
    var invokedHidesBarsOnSwipeSetter = false
    var invokedHidesBarsOnSwipeSetterCount = 0
    var invokedHidesBarsOnSwipe: Bool?
    var invokedHidesBarsOnSwipeList = [Bool]()
    var invokedHidesBarsOnSwipeGetter = false
    var invokedHidesBarsOnSwipeGetterCount = 0
    var stubbedHidesBarsOnSwipe: Bool! = false
    override var hidesBarsOnSwipe: Bool {
        set {
            invokedHidesBarsOnSwipeSetter = true
            invokedHidesBarsOnSwipeSetterCount += 1
            invokedHidesBarsOnSwipe = newValue
            invokedHidesBarsOnSwipeList.append(newValue)
        }
        get {
            invokedHidesBarsOnSwipeGetter = true
            invokedHidesBarsOnSwipeGetterCount += 1
            return stubbedHidesBarsOnSwipe
        }
    }
    var invokedBarHideOnSwipeGestureRecognizerGetter = false
    var invokedBarHideOnSwipeGestureRecognizerGetterCount = 0
    var stubbedBarHideOnSwipeGestureRecognizer: UIPanGestureRecognizer!
    override var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer {
        invokedBarHideOnSwipeGestureRecognizerGetter = true
        invokedBarHideOnSwipeGestureRecognizerGetterCount += 1
        return stubbedBarHideOnSwipeGestureRecognizer
    }
    var invokedHidesBarsWhenVerticallyCompactSetter = false
    var invokedHidesBarsWhenVerticallyCompactSetterCount = 0
    var invokedHidesBarsWhenVerticallyCompact: Bool?
    var invokedHidesBarsWhenVerticallyCompactList = [Bool]()
    var invokedHidesBarsWhenVerticallyCompactGetter = false
    var invokedHidesBarsWhenVerticallyCompactGetterCount = 0
    var stubbedHidesBarsWhenVerticallyCompact: Bool! = false
    override var hidesBarsWhenVerticallyCompact: Bool {
        set {
            invokedHidesBarsWhenVerticallyCompactSetter = true
            invokedHidesBarsWhenVerticallyCompactSetterCount += 1
            invokedHidesBarsWhenVerticallyCompact = newValue
            invokedHidesBarsWhenVerticallyCompactList.append(newValue)
        }
        get {
            invokedHidesBarsWhenVerticallyCompactGetter = true
            invokedHidesBarsWhenVerticallyCompactGetterCount += 1
            return stubbedHidesBarsWhenVerticallyCompact
        }
    }
    var invokedHidesBarsOnTapSetter = false
    var invokedHidesBarsOnTapSetterCount = 0
    var invokedHidesBarsOnTap: Bool?
    var invokedHidesBarsOnTapList = [Bool]()
    var invokedHidesBarsOnTapGetter = false
    var invokedHidesBarsOnTapGetterCount = 0
    var stubbedHidesBarsOnTap: Bool! = false
    override var hidesBarsOnTap: Bool {
        set {
            invokedHidesBarsOnTapSetter = true
            invokedHidesBarsOnTapSetterCount += 1
            invokedHidesBarsOnTap = newValue
            invokedHidesBarsOnTapList.append(newValue)
        }
        get {
            invokedHidesBarsOnTapGetter = true
            invokedHidesBarsOnTapGetterCount += 1
            return stubbedHidesBarsOnTap
        }
    }
    var invokedBarHideOnTapGestureRecognizerGetter = false
    var invokedBarHideOnTapGestureRecognizerGetterCount = 0
    var stubbedBarHideOnTapGestureRecognizer: UITapGestureRecognizer!
    override var barHideOnTapGestureRecognizer: UITapGestureRecognizer {
        invokedBarHideOnTapGestureRecognizerGetter = true
        invokedBarHideOnTapGestureRecognizerGetterCount += 1
        return stubbedBarHideOnTapGestureRecognizer
    }
    var invokedViewSetter = false
    var invokedViewSetterCount = 0
    var invokedView: UIView?
    var invokedViewList = [UIView!]()
    var invokedViewGetter = false
    var invokedViewGetterCount = 0
    var stubbedView: UIView!
    override var view: UIView! {
        set {
            invokedViewSetter = true
            invokedViewSetterCount += 1
            invokedView = newValue
            invokedViewList.append(newValue)
        }
        get {
            invokedViewGetter = true
            invokedViewGetterCount += 1
            return stubbedView
        }
    }
    var invokedViewIfLoadedGetter = false
    var invokedViewIfLoadedGetterCount = 0
    var stubbedViewIfLoaded: UIView!
    override var viewIfLoaded: UIView? {
        invokedViewIfLoadedGetter = true
        invokedViewIfLoadedGetterCount += 1
        return stubbedViewIfLoaded
    }
    var invokedIsViewLoadedGetter = false
    var invokedIsViewLoadedGetterCount = 0
    var stubbedIsViewLoaded: Bool! = false
    override var isViewLoaded: Bool {
        invokedIsViewLoadedGetter = true
        invokedIsViewLoadedGetterCount += 1
        return stubbedIsViewLoaded
    }
    var invokedNibNameGetter = false
    var invokedNibNameGetterCount = 0
    var stubbedNibName: String!
    override var nibName: String? {
        invokedNibNameGetter = true
        invokedNibNameGetterCount += 1
        return stubbedNibName
    }
    var invokedNibBundleGetter = false
    var invokedNibBundleGetterCount = 0
    var stubbedNibBundle: Bundle!
    override var nibBundle: Bundle? {
        invokedNibBundleGetter = true
        invokedNibBundleGetterCount += 1
        return stubbedNibBundle
    }
    var invokedStoryboardGetter = false
    var invokedStoryboardGetterCount = 0
    var stubbedStoryboard: UIStoryboard!
    override var storyboard: UIStoryboard? {
        invokedStoryboardGetter = true
        invokedStoryboardGetterCount += 1
        return stubbedStoryboard
    }
    var invokedTitleSetter = false
    var invokedTitleSetterCount = 0
    var invokedTitle: String?
    var invokedTitleList = [String?]()
    var invokedTitleGetter = false
    var invokedTitleGetterCount = 0
    var stubbedTitle: String!
    override var title: String? {
        set {
            invokedTitleSetter = true
            invokedTitleSetterCount += 1
            invokedTitle = newValue
            invokedTitleList.append(newValue)
        }
        get {
            invokedTitleGetter = true
            invokedTitleGetterCount += 1
            return stubbedTitle
        }
    }
    var invokedParentGetter = false
    var invokedParentGetterCount = 0
    var stubbedParent: UIViewController!
    override var parent: UIViewController? {
        invokedParentGetter = true
        invokedParentGetterCount += 1
        return stubbedParent
    }
    var invokedPresentedViewControllerGetter = false
    var invokedPresentedViewControllerGetterCount = 0
    var stubbedPresentedViewController: UIViewController!
    override var presentedViewController: UIViewController? {
        invokedPresentedViewControllerGetter = true
        invokedPresentedViewControllerGetterCount += 1
        return stubbedPresentedViewController
    }
    var invokedPresentingViewControllerGetter = false
    var invokedPresentingViewControllerGetterCount = 0
    var stubbedPresentingViewController: UIViewController!
    override var presentingViewController: UIViewController? {
        invokedPresentingViewControllerGetter = true
        invokedPresentingViewControllerGetterCount += 1
        return stubbedPresentingViewController
    }
    var invokedDefinesPresentationContextSetter = false
    var invokedDefinesPresentationContextSetterCount = 0
    var invokedDefinesPresentationContext: Bool?
    var invokedDefinesPresentationContextList = [Bool]()
    var invokedDefinesPresentationContextGetter = false
    var invokedDefinesPresentationContextGetterCount = 0
    var stubbedDefinesPresentationContext: Bool! = false
    override var definesPresentationContext: Bool {
        set {
            invokedDefinesPresentationContextSetter = true
            invokedDefinesPresentationContextSetterCount += 1
            invokedDefinesPresentationContext = newValue
            invokedDefinesPresentationContextList.append(newValue)
        }
        get {
            invokedDefinesPresentationContextGetter = true
            invokedDefinesPresentationContextGetterCount += 1
            return stubbedDefinesPresentationContext
        }
    }
    var invokedProvidesPresentationContextTransitionStyleSetter = false
    var invokedProvidesPresentationContextTransitionStyleSetterCount = 0
    var invokedProvidesPresentationContextTransitionStyle: Bool?
    var invokedProvidesPresentationContextTransitionStyleList = [Bool]()
    var invokedProvidesPresentationContextTransitionStyleGetter = false
    var invokedProvidesPresentationContextTransitionStyleGetterCount = 0
    var stubbedProvidesPresentationContextTransitionStyle: Bool! = false
    override var providesPresentationContextTransitionStyle: Bool {
        set {
            invokedProvidesPresentationContextTransitionStyleSetter = true
            invokedProvidesPresentationContextTransitionStyleSetterCount += 1
            invokedProvidesPresentationContextTransitionStyle = newValue
            invokedProvidesPresentationContextTransitionStyleList.append(newValue)
        }
        get {
            invokedProvidesPresentationContextTransitionStyleGetter = true
            invokedProvidesPresentationContextTransitionStyleGetterCount += 1
            return stubbedProvidesPresentationContextTransitionStyle
        }
    }
    var invokedRestoresFocusAfterTransitionSetter = false
    var invokedRestoresFocusAfterTransitionSetterCount = 0
    var invokedRestoresFocusAfterTransition: Bool?
    var invokedRestoresFocusAfterTransitionList = [Bool]()
    var invokedRestoresFocusAfterTransitionGetter = false
    var invokedRestoresFocusAfterTransitionGetterCount = 0
    var stubbedRestoresFocusAfterTransition: Bool! = false
    override var restoresFocusAfterTransition: Bool {
        set {
            invokedRestoresFocusAfterTransitionSetter = true
            invokedRestoresFocusAfterTransitionSetterCount += 1
            invokedRestoresFocusAfterTransition = newValue
            invokedRestoresFocusAfterTransitionList.append(newValue)
        }
        get {
            invokedRestoresFocusAfterTransitionGetter = true
            invokedRestoresFocusAfterTransitionGetterCount += 1
            return stubbedRestoresFocusAfterTransition
        }
    }
    var invokedIsBeingPresentedGetter = false
    var invokedIsBeingPresentedGetterCount = 0
    var stubbedIsBeingPresented: Bool! = false
    override var isBeingPresented: Bool {
        invokedIsBeingPresentedGetter = true
        invokedIsBeingPresentedGetterCount += 1
        return stubbedIsBeingPresented
    }
    var invokedIsBeingDismissedGetter = false
    var invokedIsBeingDismissedGetterCount = 0
    var stubbedIsBeingDismissed: Bool! = false
    override var isBeingDismissed: Bool {
        invokedIsBeingDismissedGetter = true
        invokedIsBeingDismissedGetterCount += 1
        return stubbedIsBeingDismissed
    }
    var invokedIsMovingToParentViewControllerGetter = false
    var invokedIsMovingToParentViewControllerGetterCount = 0
    var stubbedIsMovingToParentViewController: Bool! = false
    override var isMovingToParentViewController: Bool {
        invokedIsMovingToParentViewControllerGetter = true
        invokedIsMovingToParentViewControllerGetterCount += 1
        return stubbedIsMovingToParentViewController
    }
    var invokedIsMovingFromParentViewControllerGetter = false
    var invokedIsMovingFromParentViewControllerGetterCount = 0
    var stubbedIsMovingFromParentViewController: Bool! = false
    override var isMovingFromParentViewController: Bool {
        invokedIsMovingFromParentViewControllerGetter = true
        invokedIsMovingFromParentViewControllerGetterCount += 1
        return stubbedIsMovingFromParentViewController
    }
    var invokedModalTransitionStyleSetter = false
    var invokedModalTransitionStyleSetterCount = 0
    var invokedModalTransitionStyle: UIModalTransitionStyle?
    var invokedModalTransitionStyleList = [UIModalTransitionStyle]()
    var invokedModalTransitionStyleGetter = false
    var invokedModalTransitionStyleGetterCount = 0
    var stubbedModalTransitionStyle: UIModalTransitionStyle!
    override var modalTransitionStyle: UIModalTransitionStyle {
        set {
            invokedModalTransitionStyleSetter = true
            invokedModalTransitionStyleSetterCount += 1
            invokedModalTransitionStyle = newValue
            invokedModalTransitionStyleList.append(newValue)
        }
        get {
            invokedModalTransitionStyleGetter = true
            invokedModalTransitionStyleGetterCount += 1
            return stubbedModalTransitionStyle
        }
    }
    var invokedModalPresentationStyleSetter = false
    var invokedModalPresentationStyleSetterCount = 0
    var invokedModalPresentationStyle: UIModalPresentationStyle?
    var invokedModalPresentationStyleList = [UIModalPresentationStyle]()
    var invokedModalPresentationStyleGetter = false
    var invokedModalPresentationStyleGetterCount = 0
    var stubbedModalPresentationStyle: UIModalPresentationStyle!
    override var modalPresentationStyle: UIModalPresentationStyle {
        set {
            invokedModalPresentationStyleSetter = true
            invokedModalPresentationStyleSetterCount += 1
            invokedModalPresentationStyle = newValue
            invokedModalPresentationStyleList.append(newValue)
        }
        get {
            invokedModalPresentationStyleGetter = true
            invokedModalPresentationStyleGetterCount += 1
            return stubbedModalPresentationStyle
        }
    }
    var invokedModalPresentationCapturesStatusBarAppearanceSetter = false
    var invokedModalPresentationCapturesStatusBarAppearanceSetterCount = 0
    var invokedModalPresentationCapturesStatusBarAppearance: Bool?
    var invokedModalPresentationCapturesStatusBarAppearanceList = [Bool]()
    var invokedModalPresentationCapturesStatusBarAppearanceGetter = false
    var invokedModalPresentationCapturesStatusBarAppearanceGetterCount = 0
    var stubbedModalPresentationCapturesStatusBarAppearance: Bool! = false
    override var modalPresentationCapturesStatusBarAppearance: Bool {
        set {
            invokedModalPresentationCapturesStatusBarAppearanceSetter = true
            invokedModalPresentationCapturesStatusBarAppearanceSetterCount += 1
            invokedModalPresentationCapturesStatusBarAppearance = newValue
            invokedModalPresentationCapturesStatusBarAppearanceList.append(newValue)
        }
        get {
            invokedModalPresentationCapturesStatusBarAppearanceGetter = true
            invokedModalPresentationCapturesStatusBarAppearanceGetterCount += 1
            return stubbedModalPresentationCapturesStatusBarAppearance
        }
    }
    var invokedDisablesAutomaticKeyboardDismissalGetter = false
    var invokedDisablesAutomaticKeyboardDismissalGetterCount = 0
    var stubbedDisablesAutomaticKeyboardDismissal: Bool! = false
    override var disablesAutomaticKeyboardDismissal: Bool {
        invokedDisablesAutomaticKeyboardDismissalGetter = true
        invokedDisablesAutomaticKeyboardDismissalGetterCount += 1
        return stubbedDisablesAutomaticKeyboardDismissal
    }
    var invokedEdgesForExtendedLayoutSetter = false
    var invokedEdgesForExtendedLayoutSetterCount = 0
    var invokedEdgesForExtendedLayout: UIRectEdge?
    var invokedEdgesForExtendedLayoutList = [UIRectEdge]()
    var invokedEdgesForExtendedLayoutGetter = false
    var invokedEdgesForExtendedLayoutGetterCount = 0
    var stubbedEdgesForExtendedLayout: UIRectEdge!
    override var edgesForExtendedLayout: UIRectEdge {
        set {
            invokedEdgesForExtendedLayoutSetter = true
            invokedEdgesForExtendedLayoutSetterCount += 1
            invokedEdgesForExtendedLayout = newValue
            invokedEdgesForExtendedLayoutList.append(newValue)
        }
        get {
            invokedEdgesForExtendedLayoutGetter = true
            invokedEdgesForExtendedLayoutGetterCount += 1
            return stubbedEdgesForExtendedLayout
        }
    }
    var invokedExtendedLayoutIncludesOpaqueBarsSetter = false
    var invokedExtendedLayoutIncludesOpaqueBarsSetterCount = 0
    var invokedExtendedLayoutIncludesOpaqueBars: Bool?
    var invokedExtendedLayoutIncludesOpaqueBarsList = [Bool]()
    var invokedExtendedLayoutIncludesOpaqueBarsGetter = false
    var invokedExtendedLayoutIncludesOpaqueBarsGetterCount = 0
    var stubbedExtendedLayoutIncludesOpaqueBars: Bool! = false
    override var extendedLayoutIncludesOpaqueBars: Bool {
        set {
            invokedExtendedLayoutIncludesOpaqueBarsSetter = true
            invokedExtendedLayoutIncludesOpaqueBarsSetterCount += 1
            invokedExtendedLayoutIncludesOpaqueBars = newValue
            invokedExtendedLayoutIncludesOpaqueBarsList.append(newValue)
        }
        get {
            invokedExtendedLayoutIncludesOpaqueBarsGetter = true
            invokedExtendedLayoutIncludesOpaqueBarsGetterCount += 1
            return stubbedExtendedLayoutIncludesOpaqueBars
        }
    }
    var invokedAutomaticallyAdjustsScrollViewInsetsSetter = false
    var invokedAutomaticallyAdjustsScrollViewInsetsSetterCount = 0
    var invokedAutomaticallyAdjustsScrollViewInsets: Bool?
    var invokedAutomaticallyAdjustsScrollViewInsetsList = [Bool]()
    var invokedAutomaticallyAdjustsScrollViewInsetsGetter = false
    var invokedAutomaticallyAdjustsScrollViewInsetsGetterCount = 0
    var stubbedAutomaticallyAdjustsScrollViewInsets: Bool! = false
    override var automaticallyAdjustsScrollViewInsets: Bool {
        set {
            invokedAutomaticallyAdjustsScrollViewInsetsSetter = true
            invokedAutomaticallyAdjustsScrollViewInsetsSetterCount += 1
            invokedAutomaticallyAdjustsScrollViewInsets = newValue
            invokedAutomaticallyAdjustsScrollViewInsetsList.append(newValue)
        }
        get {
            invokedAutomaticallyAdjustsScrollViewInsetsGetter = true
            invokedAutomaticallyAdjustsScrollViewInsetsGetterCount += 1
            return stubbedAutomaticallyAdjustsScrollViewInsets
        }
    }
    var invokedPreferredContentSizeSetter = false
    var invokedPreferredContentSizeSetterCount = 0
    var invokedPreferredContentSize: CGSize?
    var invokedPreferredContentSizeList = [CGSize]()
    var invokedPreferredContentSizeGetter = false
    var invokedPreferredContentSizeGetterCount = 0
    var stubbedPreferredContentSize: CGSize!
    override var preferredContentSize: CGSize {
        set {
            invokedPreferredContentSizeSetter = true
            invokedPreferredContentSizeSetterCount += 1
            invokedPreferredContentSize = newValue
            invokedPreferredContentSizeList.append(newValue)
        }
        get {
            invokedPreferredContentSizeGetter = true
            invokedPreferredContentSizeGetterCount += 1
            return stubbedPreferredContentSize
        }
    }
    var invokedPreferredStatusBarStyleGetter = false
    var invokedPreferredStatusBarStyleGetterCount = 0
    var stubbedPreferredStatusBarStyle: UIStatusBarStyle!
    override var preferredStatusBarStyle: UIStatusBarStyle {
        invokedPreferredStatusBarStyleGetter = true
        invokedPreferredStatusBarStyleGetterCount += 1
        return stubbedPreferredStatusBarStyle
    }
    var invokedPrefersStatusBarHiddenGetter = false
    var invokedPrefersStatusBarHiddenGetterCount = 0
    var stubbedPrefersStatusBarHidden: Bool! = false
    override var prefersStatusBarHidden: Bool {
        invokedPrefersStatusBarHiddenGetter = true
        invokedPrefersStatusBarHiddenGetterCount += 1
        return stubbedPrefersStatusBarHidden
    }
    var invokedPreferredStatusBarUpdateAnimationGetter = false
    var invokedPreferredStatusBarUpdateAnimationGetterCount = 0
    var stubbedPreferredStatusBarUpdateAnimation: UIStatusBarAnimation!
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        invokedPreferredStatusBarUpdateAnimationGetter = true
        invokedPreferredStatusBarUpdateAnimationGetterCount += 1
        return stubbedPreferredStatusBarUpdateAnimation
    }
    var invokedNextGetter = false
    var invokedNextGetterCount = 0
    var stubbedNext: UIResponder!
    override var next: UIResponder? {
        invokedNextGetter = true
        invokedNextGetterCount += 1
        return stubbedNext
    }
    var invokedCanBecomeFirstResponderGetter = false
    var invokedCanBecomeFirstResponderGetterCount = 0
    var stubbedCanBecomeFirstResponder: Bool! = false
    override var canBecomeFirstResponder: Bool {
        invokedCanBecomeFirstResponderGetter = true
        invokedCanBecomeFirstResponderGetterCount += 1
        return stubbedCanBecomeFirstResponder
    }
    var invokedCanResignFirstResponderGetter = false
    var invokedCanResignFirstResponderGetterCount = 0
    var stubbedCanResignFirstResponder: Bool! = false
    override var canResignFirstResponder: Bool {
        invokedCanResignFirstResponderGetter = true
        invokedCanResignFirstResponderGetterCount += 1
        return stubbedCanResignFirstResponder
    }
    var invokedIsFirstResponderGetter = false
    var invokedIsFirstResponderGetterCount = 0
    var stubbedIsFirstResponder: Bool! = false
    override var isFirstResponder: Bool {
        invokedIsFirstResponderGetter = true
        invokedIsFirstResponderGetterCount += 1
        return stubbedIsFirstResponder
    }
    var invokedUndoManagerGetter = false
    var invokedUndoManagerGetterCount = 0
    var stubbedUndoManager: UndoManager!
    override var undoManager: UndoManager? {
        invokedUndoManagerGetter = true
        invokedUndoManagerGetterCount += 1
        return stubbedUndoManager
    }
    var invokedPushViewController = false
    var invokedPushViewControllerCount = 0
    var invokedPushViewControllerParameters: (viewController: UIViewController, animated: Bool)?
    var invokedPushViewControllerParametersList = [(viewController: UIViewController,
                                                           animated: Bool)]()

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {

        invokedPushViewController = true
        invokedPushViewControllerCount += 1
        invokedPushViewControllerParameters = (viewController, animated)
        invokedPushViewControllerParametersList.append((viewController, animated))
    }

    var invokedPopViewController = false
    var invokedPopViewControllerCount = 0
    var invokedPopViewControllerParameters: (animated: Bool, Void)?
    var invokedPopViewControllerParametersList = [(animated: Bool, Void)]()
    var stubbedPopViewControllerResult: UIViewController!

    override func popViewController(animated: Bool) -> UIViewController? {

        invokedPopViewController = true
        invokedPopViewControllerCount += 1
        invokedPopViewControllerParameters = (animated, ())
        invokedPopViewControllerParametersList.append((animated, ()))
        return stubbedPopViewControllerResult
    }

    var invokedPopToViewController = false
    var invokedPopToViewControllerCount = 0
    var invokedPopToViewControllerParameters: (viewController: UIViewController, animated: Bool)?
    var invokedPopToViewControllerParametersList = [(viewController: UIViewController,
                                                            animated: Bool)]()
    var stubbedPopToViewControllerResult: [UIViewController]!

    override func popToViewController(_ viewController: UIViewController,
                                      animated: Bool) -> [UIViewController]? {

        invokedPopToViewController = true
        invokedPopToViewControllerCount += 1
        invokedPopToViewControllerParameters = (viewController, animated)
        invokedPopToViewControllerParametersList.append((viewController, animated))
        return stubbedPopToViewControllerResult
    }

    var invokedPopToRootViewController = false
    var invokedPopToRootViewControllerCount = 0
    var invokedPopToRootViewControllerParameters: (animated: Bool, Void)?
    var invokedPopToRootViewControllerParametersList = [(animated: Bool, Void)]()
    var stubbedPopToRootViewControllerResult: [UIViewController]!

    override func popToRootViewController(animated: Bool) -> [UIViewController]? {

        invokedPopToRootViewController = true
        invokedPopToRootViewControllerCount += 1
        invokedPopToRootViewControllerParameters = (animated, ())
        invokedPopToRootViewControllerParametersList.append((animated, ()))
        return stubbedPopToRootViewControllerResult
    }

    var invokedSetViewControllers = false
    var invokedSetViewControllersCount = 0
    var invokedSetViewControllersParameters: (viewControllers: [UIViewController], animated: Bool)?
    var invokedSetViewControllersParametersList = [(viewControllers: [UIViewController],
                                                           animated: Bool)]()

    override func setViewControllers(_ viewControllers: [UIViewController], animated: Bool) {

        invokedSetViewControllers = true
        invokedSetViewControllersCount += 1
        invokedSetViewControllersParameters = (viewControllers, animated)
        invokedSetViewControllersParametersList.append((viewControllers, animated))
    }

    var invokedSetNavigationBarHidden = false
    var invokedSetNavigationBarHiddenCount = 0
    var invokedSetNavigationBarHiddenParameters: (hidden: Bool, animated: Bool)?
    var invokedSetNavigationBarHiddenParametersList = [(hidden: Bool, animated: Bool)]()

    override func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {

        invokedSetNavigationBarHidden = true
        invokedSetNavigationBarHiddenCount += 1
        invokedSetNavigationBarHiddenParameters = (hidden, animated)
        invokedSetNavigationBarHiddenParametersList.append((hidden, animated))
    }

    var invokedSetToolbarHidden = false
    var invokedSetToolbarHiddenCount = 0
    var invokedSetToolbarHiddenParameters: (hidden: Bool, animated: Bool)?
    var invokedSetToolbarHiddenParametersList = [(hidden: Bool, animated: Bool)]()

    override func setToolbarHidden(_ hidden: Bool, animated: Bool) {

        invokedSetToolbarHidden = true
        invokedSetToolbarHiddenCount += 1
        invokedSetToolbarHiddenParameters = (hidden, animated)
        invokedSetToolbarHiddenParametersList.append((hidden, animated))
    }

    var invokedShowUIViewControllerSenderAny = false
    var invokedShowUIViewControllerSenderAnyCount = 0
    var invokedShowUIViewControllerSenderAnyParameters: (vc: UIViewController, sender: Any?)?
    var invokedShowUIViewControllerSenderAnyParametersList = [(vc: UIViewController,
                                                                      sender: Any?)]()

    override func show(_ vc: UIViewController, sender: Any?) {

        invokedShowUIViewControllerSenderAny = true
        invokedShowUIViewControllerSenderAnyCount += 1
        invokedShowUIViewControllerSenderAnyParameters = (vc, sender)
        invokedShowUIViewControllerSenderAnyParametersList.append((vc, sender))
    }

    var invokedLoadView = false
    var invokedLoadViewCount = 0

    override func loadView() {

        invokedLoadView = true
        invokedLoadViewCount += 1
    }

    var invokedLoadViewIfNeeded = false
    var invokedLoadViewIfNeededCount = 0

    override func loadViewIfNeeded() {

        invokedLoadViewIfNeeded = true
        invokedLoadViewIfNeededCount += 1
    }

    var invokedViewDidLoad = false
    var invokedViewDidLoadCount = 0

    override func viewDidLoad() {

        invokedViewDidLoad = true
        invokedViewDidLoadCount += 1
    }

    var invokedPerformSegue = false
    var invokedPerformSegueCount = 0
    var invokedPerformSegueParameters: (identifier: String, sender: Any?)?
    var invokedPerformSegueParametersList = [(identifier: String, sender: Any?)]()

    override func performSegue(withIdentifier identifier: String, sender: Any?) {

        invokedPerformSegue = true
        invokedPerformSegueCount += 1
        invokedPerformSegueParameters = (identifier, sender)
        invokedPerformSegueParametersList.append((identifier, sender))
    }

    var invokedShouldPerformSegue = false
    var invokedShouldPerformSegueCount = 0
    var invokedShouldPerformSegueParameters: (identifier: String, sender: Any?)?
    var invokedShouldPerformSegueParametersList = [(identifier: String, sender: Any?)]()
    var stubbedShouldPerformSegueResult: Bool! = false

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {

        invokedShouldPerformSegue = true
        invokedShouldPerformSegueCount += 1
        invokedShouldPerformSegueParameters = (identifier, sender)
        invokedShouldPerformSegueParametersList.append((identifier, sender))
        return stubbedShouldPerformSegueResult
    }

    var invokedPrepare = false
    var invokedPrepareCount = 0
    var invokedPrepareParameters: (segue: UIStoryboardSegue, sender: Any?)?
    var invokedPrepareParametersList = [(segue: UIStoryboardSegue, sender: Any?)]()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        invokedPrepare = true
        invokedPrepareCount += 1
        invokedPrepareParameters = (segue, sender)
        invokedPrepareParametersList.append((segue, sender))
    }

    var invokedCanPerformUnwindSegueAction = false
    var invokedCanPerformUnwindSegueActionCount = 0
    var invokedCanPerformUnwindSegueActionParameters: (action: Selector, fromViewController: UIViewController, sender: Any)?
    var invokedCanPerformUnwindSegueActionParametersList = [(action: Selector,
                                                                    fromViewController: UIViewController,
                                                                    sender: Any)]()
    var stubbedCanPerformUnwindSegueActionResult: Bool! = false

    override func canPerformUnwindSegueAction(_ action: Selector,
                                              from fromViewController: UIViewController,
                                              withSender sender: Any) -> Bool {

        invokedCanPerformUnwindSegueAction = true
        invokedCanPerformUnwindSegueActionCount += 1
        invokedCanPerformUnwindSegueActionParameters = (action, fromViewController, sender)
        invokedCanPerformUnwindSegueActionParametersList.append((action,
                                                                        fromViewController,
                                                                        sender))
        return stubbedCanPerformUnwindSegueActionResult
    }

    var invokedAllowedChildViewControllersForUnwinding = false
    var invokedAllowedChildViewControllersForUnwindingCount = 0
    var invokedAllowedChildViewControllersForUnwindingParameters: (source: UIStoryboardUnwindSegueSource, Void)?
    var invokedAllowedChildViewControllersForUnwindingParametersList = [(source: UIStoryboardUnwindSegueSource,
                                                                                Void)]()
    var stubbedAllowedChildViewControllersForUnwindingResult: [UIViewController]! = []

    override func allowedChildViewControllersForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController] {

        invokedAllowedChildViewControllersForUnwinding = true
        invokedAllowedChildViewControllersForUnwindingCount += 1
        invokedAllowedChildViewControllersForUnwindingParameters = (source, ())
        invokedAllowedChildViewControllersForUnwindingParametersList.append((source, ()))
        return stubbedAllowedChildViewControllersForUnwindingResult
    }

    var invokedChildViewControllerContaining = false
    var invokedChildViewControllerContainingCount = 0
    var invokedChildViewControllerContainingParameters: (source: UIStoryboardUnwindSegueSource, Void)?
    var invokedChildViewControllerContainingParametersList = [(source: UIStoryboardUnwindSegueSource,
                                                                      Void)]()
    var stubbedChildViewControllerContainingResult: UIViewController!

    override func childViewControllerContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController? {

        invokedChildViewControllerContaining = true
        invokedChildViewControllerContainingCount += 1
        invokedChildViewControllerContainingParameters = (source, ())
        invokedChildViewControllerContainingParametersList.append((source, ()))
        return stubbedChildViewControllerContainingResult
    }

    var invokedForUnwindSegueAction = false
    var invokedForUnwindSegueActionCount = 0
    var invokedForUnwindSegueActionParameters: (action: Selector, fromViewController: UIViewController, sender: Any?)?
    var invokedForUnwindSegueActionParametersList = [(action: Selector,
                                                             fromViewController: UIViewController,
                                                             sender: Any?)]()
    var stubbedForUnwindSegueActionResult: UIViewController!

    override func forUnwindSegueAction(_ action: Selector,
                                       from fromViewController: UIViewController,
                                       withSender sender: Any?) -> UIViewController? {

        invokedForUnwindSegueAction = true
        invokedForUnwindSegueActionCount += 1
        invokedForUnwindSegueActionParameters = (action, fromViewController, sender)
        invokedForUnwindSegueActionParametersList.append((action, fromViewController, sender))
        return stubbedForUnwindSegueActionResult
    }

    var invokedUnwind = false
    var invokedUnwindCount = 0
    var invokedUnwindParameters: (unwindSegue: UIStoryboardSegue, subsequentVC: UIViewController)?
    var invokedUnwindParametersList = [(unwindSegue: UIStoryboardSegue,
                                               subsequentVC: UIViewController)]()

    override func unwind(for unwindSegue: UIStoryboardSegue,
                         towardsViewController subsequentVC: UIViewController) {

        invokedUnwind = true
        invokedUnwindCount += 1
        invokedUnwindParameters = (unwindSegue, subsequentVC)
        invokedUnwindParametersList.append((unwindSegue, subsequentVC))
    }

    var invokedSegueForUnwinding = false
    var invokedSegueForUnwindingCount = 0
    var invokedSegueForUnwindingParameters: (toViewController: UIViewController, fromViewController: UIViewController, identifier: String?)?
    var invokedSegueForUnwindingParametersList = [(toViewController: UIViewController,
                                                          fromViewController: UIViewController,
                                                          identifier: String?)]()
    var stubbedSegueForUnwindingResult: UIStoryboardSegue!

    override func segueForUnwinding(to toViewController: UIViewController,
                                    from fromViewController: UIViewController,
                                    identifier: String?) -> UIStoryboardSegue? {

        invokedSegueForUnwinding = true
        invokedSegueForUnwindingCount += 1
        invokedSegueForUnwindingParameters = (toViewController, fromViewController, identifier)
        invokedSegueForUnwindingParametersList.append((toViewController,
                                                              fromViewController,
                                                              identifier))
        return stubbedSegueForUnwindingResult
    }

    var invokedViewWillAppear = false
    var invokedViewWillAppearCount = 0
    var invokedViewWillAppearParameters: (animated: Bool, Void)?
    var invokedViewWillAppearParametersList = [(animated: Bool, Void)]()

    override func viewWillAppear(_ animated: Bool) {

        invokedViewWillAppear = true
        invokedViewWillAppearCount += 1
        invokedViewWillAppearParameters = (animated, ())
        invokedViewWillAppearParametersList.append((animated, ()))
    }

    var invokedViewDidAppear = false
    var invokedViewDidAppearCount = 0
    var invokedViewDidAppearParameters: (animated: Bool, Void)?
    var invokedViewDidAppearParametersList = [(animated: Bool, Void)]()

    override func viewDidAppear(_ animated: Bool) {

        invokedViewDidAppear = true
        invokedViewDidAppearCount += 1
        invokedViewDidAppearParameters = (animated, ())
        invokedViewDidAppearParametersList.append((animated, ()))
    }

    var invokedViewWillDisappear = false
    var invokedViewWillDisappearCount = 0
    var invokedViewWillDisappearParameters: (animated: Bool, Void)?
    var invokedViewWillDisappearParametersList = [(animated: Bool, Void)]()

    override func viewWillDisappear(_ animated: Bool) {

        invokedViewWillDisappear = true
        invokedViewWillDisappearCount += 1
        invokedViewWillDisappearParameters = (animated, ())
        invokedViewWillDisappearParametersList.append((animated, ()))
    }

    var invokedViewDidDisappear = false
    var invokedViewDidDisappearCount = 0
    var invokedViewDidDisappearParameters: (animated: Bool, Void)?
    var invokedViewDidDisappearParametersList = [(animated: Bool, Void)]()

    override func viewDidDisappear(_ animated: Bool) {

        invokedViewDidDisappear = true
        invokedViewDidDisappearCount += 1
        invokedViewDidDisappearParameters = (animated, ())
        invokedViewDidDisappearParametersList.append((animated, ()))
    }

    var invokedViewWillLayoutSubviews = false
    var invokedViewWillLayoutSubviewsCount = 0

    override func viewWillLayoutSubviews() {

        invokedViewWillLayoutSubviews = true
        invokedViewWillLayoutSubviewsCount += 1
    }

    var invokedViewDidLayoutSubviews = false
    var invokedViewDidLayoutSubviewsCount = 0

    override func viewDidLayoutSubviews() {

        invokedViewDidLayoutSubviews = true
        invokedViewDidLayoutSubviewsCount += 1
    }

    var invokedDidReceiveMemoryWarning = false
    var invokedDidReceiveMemoryWarningCount = 0

    override func didReceiveMemoryWarning() {

        invokedDidReceiveMemoryWarning = true
        invokedDidReceiveMemoryWarningCount += 1
    }

    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (viewControllerToPresent: UIViewController, flag: Bool, completion: (() -> Swift.Void)?)?
    var invokedPresentParametersList = [(viewControllerToPresent: UIViewController,
                                                flag: Bool,
                                                completion: (() -> Swift.Void)?)]()

    override func present(_ viewControllerToPresent: UIViewController,
                          animated flag: Bool,
                          completion: (() -> Swift.Void)? = nil) {

        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (viewControllerToPresent, flag, completion)
        invokedPresentParametersList.append((viewControllerToPresent, flag, completion))
    }

    var invokedDismiss = false
    var invokedDismissCount = 0
    var invokedDismissParameters: (flag: Bool, completion: (() -> Swift.Void)?)?
    var invokedDismissParametersList = [(flag: Bool, completion: (() -> Swift.Void)?)]()

    override func dismiss(animated flag: Bool, completion: (() -> Swift.Void)? = nil) {

        invokedDismiss = true
        invokedDismissCount += 1
        invokedDismissParameters = (flag, completion)
        invokedDismissParametersList.append((flag, completion))
    }

    var invokedSetNeedsStatusBarAppearanceUpdate = false
    var invokedSetNeedsStatusBarAppearanceUpdateCount = 0

    override func setNeedsStatusBarAppearanceUpdate() {

        invokedSetNeedsStatusBarAppearanceUpdate = true
        invokedSetNeedsStatusBarAppearanceUpdateCount += 1
    }

    var invokedTargetViewController = false
    var invokedTargetViewControllerCount = 0
    var invokedTargetViewControllerParameters: (action: Selector, sender: Any?)?
    var invokedTargetViewControllerParametersList = [(action: Selector, sender: Any?)]()
    var stubbedTargetViewControllerResult: UIViewController!

    override func targetViewController(forAction action: Selector,
                                       sender: Any?) -> UIViewController? {

        invokedTargetViewController = true
        invokedTargetViewControllerCount += 1
        invokedTargetViewControllerParameters = (action, sender)
        invokedTargetViewControllerParametersList.append((action, sender))
        return stubbedTargetViewControllerResult
    }

    var invokedShowDetailViewController = false
    var invokedShowDetailViewControllerCount = 0
    var invokedShowDetailViewControllerParameters: (vc: UIViewController, sender: Any?)?
    var invokedShowDetailViewControllerParametersList = [(vc: UIViewController, sender: Any?)]()

    override func showDetailViewController(_ vc: UIViewController, sender: Any?) {

        invokedShowDetailViewController = true
        invokedShowDetailViewControllerCount += 1
        invokedShowDetailViewControllerParameters = (vc, sender)
        invokedShowDetailViewControllerParametersList.append((vc, sender))
    }

    var invokedBecomeFirstResponder = false
    var invokedBecomeFirstResponderCount = 0
    var stubbedBecomeFirstResponderResult: Bool! = false

    override func becomeFirstResponder() -> Bool {

        invokedBecomeFirstResponder = true
        invokedBecomeFirstResponderCount += 1
        return stubbedBecomeFirstResponderResult
    }

    var invokedResignFirstResponder = false
    var invokedResignFirstResponderCount = 0
    var stubbedResignFirstResponderResult: Bool! = false

    override func resignFirstResponder() -> Bool {

        invokedResignFirstResponder = true
        invokedResignFirstResponderCount += 1
        return stubbedResignFirstResponderResult
    }

    var invokedTouchesBegan = false
    var invokedTouchesBeganCount = 0
    var invokedTouchesBeganParameters: (touches: Set<UITouch>, event: UIEvent?)?
    var invokedTouchesBeganParametersList = [(touches: Set < UITouch>, event: UIEvent?)]()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        invokedTouchesBegan = true
        invokedTouchesBeganCount += 1
        invokedTouchesBeganParameters = (touches, event)
        invokedTouchesBeganParametersList.append((touches, event))
    }

    var invokedTouchesMoved = false
    var invokedTouchesMovedCount = 0
    var invokedTouchesMovedParameters: (touches: Set<UITouch>, event: UIEvent?)?
    var invokedTouchesMovedParametersList = [(touches: Set < UITouch>, event: UIEvent?)]()

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

        invokedTouchesMoved = true
        invokedTouchesMovedCount += 1
        invokedTouchesMovedParameters = (touches, event)
        invokedTouchesMovedParametersList.append((touches, event))
    }

    var invokedTouchesEnded = false
    var invokedTouchesEndedCount = 0
    var invokedTouchesEndedParameters: (touches: Set<UITouch>, event: UIEvent?)?
    var invokedTouchesEndedParametersList = [(touches: Set < UITouch>, event: UIEvent?)]()

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        invokedTouchesEnded = true
        invokedTouchesEndedCount += 1
        invokedTouchesEndedParameters = (touches, event)
        invokedTouchesEndedParametersList.append((touches, event))
    }

    var invokedTouchesCancelled = false
    var invokedTouchesCancelledCount = 0
    var invokedTouchesCancelledParameters: (touches: Set<UITouch>, event: UIEvent?)?
    var invokedTouchesCancelledParametersList = [(touches: Set < UITouch>, event: UIEvent?)]()

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {

        invokedTouchesCancelled = true
        invokedTouchesCancelledCount += 1
        invokedTouchesCancelledParameters = (touches, event)
        invokedTouchesCancelledParametersList.append((touches, event))
    }

    var invokedTouchesEstimatedPropertiesUpdated = false
    var invokedTouchesEstimatedPropertiesUpdatedCount = 0
    var invokedTouchesEstimatedPropertiesUpdatedParameters: (touches: Set<UITouch>, Void)?
    var invokedTouchesEstimatedPropertiesUpdatedParametersList = [(touches: Set < UITouch>, Void)]()

    override func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>) {

        invokedTouchesEstimatedPropertiesUpdated = true
        invokedTouchesEstimatedPropertiesUpdatedCount += 1
        invokedTouchesEstimatedPropertiesUpdatedParameters = (touches, ())
        invokedTouchesEstimatedPropertiesUpdatedParametersList.append((touches, ()))
    }

    var invokedPressesBegan = false
    var invokedPressesBeganCount = 0
    var invokedPressesBeganParameters: (presses: Set<UIPress>, event: UIPressesEvent?)?
    var invokedPressesBeganParametersList = [(presses: Set < UIPress>, event: UIPressesEvent?)]()

    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {

        invokedPressesBegan = true
        invokedPressesBeganCount += 1
        invokedPressesBeganParameters = (presses, event)
        invokedPressesBeganParametersList.append((presses, event))
    }

    var invokedPressesChanged = false
    var invokedPressesChangedCount = 0
    var invokedPressesChangedParameters: (presses: Set<UIPress>, event: UIPressesEvent?)?
    var invokedPressesChangedParametersList = [(presses: Set < UIPress>, event: UIPressesEvent?)]()

    override func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent?) {

        invokedPressesChanged = true
        invokedPressesChangedCount += 1
        invokedPressesChangedParameters = (presses, event)
        invokedPressesChangedParametersList.append((presses, event))
    }

    var invokedPressesEnded = false
    var invokedPressesEndedCount = 0
    var invokedPressesEndedParameters: (presses: Set<UIPress>, event: UIPressesEvent?)?
    var invokedPressesEndedParametersList = [(presses: Set < UIPress>, event: UIPressesEvent?)]()

    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {

        invokedPressesEnded = true
        invokedPressesEndedCount += 1
        invokedPressesEndedParameters = (presses, event)
        invokedPressesEndedParametersList.append((presses, event))
    }

    var invokedPressesCancelled = false
    var invokedPressesCancelledCount = 0
    var invokedPressesCancelledParameters: (presses: Set<UIPress>, event: UIPressesEvent?)?
    var invokedPressesCancelledParametersList = [(presses: Set < UIPress>,
                                                         event: UIPressesEvent?)]()

    override func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?) {

        invokedPressesCancelled = true
        invokedPressesCancelledCount += 1
        invokedPressesCancelledParameters = (presses, event)
        invokedPressesCancelledParametersList.append((presses, event))
    }

    var invokedMotionBegan = false
    var invokedMotionBeganCount = 0
    var invokedMotionBeganParameters: (motion: UIEventSubtype, event: UIEvent?)?
    var invokedMotionBeganParametersList = [(motion: UIEventSubtype, event: UIEvent?)]()

    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {

        invokedMotionBegan = true
        invokedMotionBeganCount += 1
        invokedMotionBeganParameters = (motion, event)
        invokedMotionBeganParametersList.append((motion, event))
    }

    var invokedMotionEnded = false
    var invokedMotionEndedCount = 0
    var invokedMotionEndedParameters: (motion: UIEventSubtype, event: UIEvent?)?
    var invokedMotionEndedParametersList = [(motion: UIEventSubtype, event: UIEvent?)]()

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {

        invokedMotionEnded = true
        invokedMotionEndedCount += 1
        invokedMotionEndedParameters = (motion, event)
        invokedMotionEndedParametersList.append((motion, event))
    }

    var invokedMotionCancelled = false
    var invokedMotionCancelledCount = 0
    var invokedMotionCancelledParameters: (motion: UIEventSubtype, event: UIEvent?)?
    var invokedMotionCancelledParametersList = [(motion: UIEventSubtype, event: UIEvent?)]()

    override func motionCancelled(_ motion: UIEventSubtype, with event: UIEvent?) {

        invokedMotionCancelled = true
        invokedMotionCancelledCount += 1
        invokedMotionCancelledParameters = (motion, event)
        invokedMotionCancelledParametersList.append((motion, event))
    }

    var invokedRemoteControlReceived = false
    var invokedRemoteControlReceivedCount = 0
    var invokedRemoteControlReceivedParameters: (event: UIEvent?, Void)?
    var invokedRemoteControlReceivedParametersList = [(event: UIEvent?, Void)]()

    override func remoteControlReceived(with event: UIEvent?) {

        invokedRemoteControlReceived = true
        invokedRemoteControlReceivedCount += 1
        invokedRemoteControlReceivedParameters = (event, ())
        invokedRemoteControlReceivedParametersList.append((event, ()))
    }

    var invokedCanPerformAction = false
    var invokedCanPerformActionCount = 0
    var invokedCanPerformActionParameters: (action: Selector, sender: Any?)?
    var invokedCanPerformActionParametersList = [(action: Selector, sender: Any?)]()
    var stubbedCanPerformActionResult: Bool! = false

    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {

        invokedCanPerformAction = true
        invokedCanPerformActionCount += 1
        invokedCanPerformActionParameters = (action, sender)
        invokedCanPerformActionParametersList.append((action, sender))
        return stubbedCanPerformActionResult
    }

    var invokedTarget = false
    var invokedTargetCount = 0
    var invokedTargetParameters: (action: Selector, sender: Any?)?
    var invokedTargetParametersList = [(action: Selector, sender: Any?)]()
    var stubbedTargetResult: Any!

    override func target(forAction action: Selector, withSender sender: Any?) -> Any? {

        invokedTarget = true
        invokedTargetCount += 1
        invokedTargetParameters = (action, sender)
        invokedTargetParametersList.append((action, sender))
        return stubbedTargetResult
    }
}
