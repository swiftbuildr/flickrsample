//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class MockURLSessionDataTask: URLSessionDataTask {

    var invokedTaskIdentifierGetter = false
    var invokedTaskIdentifierGetterCount = 0
    var stubbedTaskIdentifier: Int! = 0
    override var taskIdentifier: Int {
        invokedTaskIdentifierGetter = true
        invokedTaskIdentifierGetterCount += 1
        return stubbedTaskIdentifier
    }
    var invokedOriginalRequestGetter = false
    var invokedOriginalRequestGetterCount = 0
    var stubbedOriginalRequest: URLRequest!
    override var originalRequest: URLRequest? {
        invokedOriginalRequestGetter = true
        invokedOriginalRequestGetterCount += 1
        return stubbedOriginalRequest
    }
    var invokedCurrentRequestGetter = false
    var invokedCurrentRequestGetterCount = 0
    var stubbedCurrentRequest: URLRequest!
    override var currentRequest: URLRequest? {
        invokedCurrentRequestGetter = true
        invokedCurrentRequestGetterCount += 1
        return stubbedCurrentRequest
    }
    var invokedResponseGetter = false
    var invokedResponseGetterCount = 0
    var stubbedResponse: URLResponse!
    override var response: URLResponse? {
        invokedResponseGetter = true
        invokedResponseGetterCount += 1
        return stubbedResponse
    }
    var invokedProgressGetter = false
    var invokedProgressGetterCount = 0
    var stubbedProgress: Progress!
    override var progress: Progress {
        invokedProgressGetter = true
        invokedProgressGetterCount += 1
        return stubbedProgress
    }
    var invokedEarliestBeginDateSetter = false
    var invokedEarliestBeginDateSetterCount = 0
    var invokedEarliestBeginDate: Date?
    var invokedEarliestBeginDateList = [Date?]()
    var invokedEarliestBeginDateGetter = false
    var invokedEarliestBeginDateGetterCount = 0
    var stubbedEarliestBeginDate: Date!
    override var earliestBeginDate: Date? {
        set {
            invokedEarliestBeginDateSetter = true
            invokedEarliestBeginDateSetterCount += 1
            invokedEarliestBeginDate = newValue
            invokedEarliestBeginDateList.append(newValue)
        }
        get {
            invokedEarliestBeginDateGetter = true
            invokedEarliestBeginDateGetterCount += 1
            return stubbedEarliestBeginDate
        }
    }
    var invokedCountOfBytesClientExpectsToSendSetter = false
    var invokedCountOfBytesClientExpectsToSendSetterCount = 0
    var invokedCountOfBytesClientExpectsToSend: Int64?
    var invokedCountOfBytesClientExpectsToSendList = [Int64]()
    var invokedCountOfBytesClientExpectsToSendGetter = false
    var invokedCountOfBytesClientExpectsToSendGetterCount = 0
    var stubbedCountOfBytesClientExpectsToSend: Int64! = 0
    override var countOfBytesClientExpectsToSend: Int64 {
        set {
            invokedCountOfBytesClientExpectsToSendSetter = true
            invokedCountOfBytesClientExpectsToSendSetterCount += 1
            invokedCountOfBytesClientExpectsToSend = newValue
            invokedCountOfBytesClientExpectsToSendList.append(newValue)
        }
        get {
            invokedCountOfBytesClientExpectsToSendGetter = true
            invokedCountOfBytesClientExpectsToSendGetterCount += 1
            return stubbedCountOfBytesClientExpectsToSend
        }
    }
    var invokedCountOfBytesClientExpectsToReceiveSetter = false
    var invokedCountOfBytesClientExpectsToReceiveSetterCount = 0
    var invokedCountOfBytesClientExpectsToReceive: Int64?
    var invokedCountOfBytesClientExpectsToReceiveList = [Int64]()
    var invokedCountOfBytesClientExpectsToReceiveGetter = false
    var invokedCountOfBytesClientExpectsToReceiveGetterCount = 0
    var stubbedCountOfBytesClientExpectsToReceive: Int64! = 0
    override var countOfBytesClientExpectsToReceive: Int64 {
        set {
            invokedCountOfBytesClientExpectsToReceiveSetter = true
            invokedCountOfBytesClientExpectsToReceiveSetterCount += 1
            invokedCountOfBytesClientExpectsToReceive = newValue
            invokedCountOfBytesClientExpectsToReceiveList.append(newValue)
        }
        get {
            invokedCountOfBytesClientExpectsToReceiveGetter = true
            invokedCountOfBytesClientExpectsToReceiveGetterCount += 1
            return stubbedCountOfBytesClientExpectsToReceive
        }
    }
    var invokedCountOfBytesReceivedGetter = false
    var invokedCountOfBytesReceivedGetterCount = 0
    var stubbedCountOfBytesReceived: Int64! = 0
    override var countOfBytesReceived: Int64 {
        invokedCountOfBytesReceivedGetter = true
        invokedCountOfBytesReceivedGetterCount += 1
        return stubbedCountOfBytesReceived
    }
    var invokedCountOfBytesSentGetter = false
    var invokedCountOfBytesSentGetterCount = 0
    var stubbedCountOfBytesSent: Int64! = 0
    override var countOfBytesSent: Int64 {
        invokedCountOfBytesSentGetter = true
        invokedCountOfBytesSentGetterCount += 1
        return stubbedCountOfBytesSent
    }
    var invokedCountOfBytesExpectedToSendGetter = false
    var invokedCountOfBytesExpectedToSendGetterCount = 0
    var stubbedCountOfBytesExpectedToSend: Int64! = 0
    override var countOfBytesExpectedToSend: Int64 {
        invokedCountOfBytesExpectedToSendGetter = true
        invokedCountOfBytesExpectedToSendGetterCount += 1
        return stubbedCountOfBytesExpectedToSend
    }
    var invokedCountOfBytesExpectedToReceiveGetter = false
    var invokedCountOfBytesExpectedToReceiveGetterCount = 0
    var stubbedCountOfBytesExpectedToReceive: Int64! = 0
    override var countOfBytesExpectedToReceive: Int64 {
        invokedCountOfBytesExpectedToReceiveGetter = true
        invokedCountOfBytesExpectedToReceiveGetterCount += 1
        return stubbedCountOfBytesExpectedToReceive
    }
    var invokedTaskDescriptionSetter = false
    var invokedTaskDescriptionSetterCount = 0
    var invokedTaskDescription: String?
    var invokedTaskDescriptionList = [String?]()
    var invokedTaskDescriptionGetter = false
    var invokedTaskDescriptionGetterCount = 0
    var stubbedTaskDescription: String!
    override var taskDescription: String? {
        set {
            invokedTaskDescriptionSetter = true
            invokedTaskDescriptionSetterCount += 1
            invokedTaskDescription = newValue
            invokedTaskDescriptionList.append(newValue)
        }
        get {
            invokedTaskDescriptionGetter = true
            invokedTaskDescriptionGetterCount += 1
            return stubbedTaskDescription
        }
    }
    var invokedStateGetter = false
    var invokedStateGetterCount = 0
    var stubbedState: URLSessionTask.State!
    override var state: URLSessionTask.State {
        invokedStateGetter = true
        invokedStateGetterCount += 1
        return stubbedState
    }
    var invokedErrorGetter = false
    var invokedErrorGetterCount = 0
    var stubbedError: Error!
    override var error: Error? {
        invokedErrorGetter = true
        invokedErrorGetterCount += 1
        return stubbedError
    }
    var invokedPrioritySetter = false
    var invokedPrioritySetterCount = 0
    var invokedPriority: Float?
    var invokedPriorityList = [Float]()
    var invokedPriorityGetter = false
    var invokedPriorityGetterCount = 0
    var stubbedPriority: Float! = 0
    override var priority: Float {
        set {
            invokedPrioritySetter = true
            invokedPrioritySetterCount += 1
            invokedPriority = newValue
            invokedPriorityList.append(newValue)
        }
        get {
            invokedPriorityGetter = true
            invokedPriorityGetterCount += 1
            return stubbedPriority
        }
    }
    var invokedCancel = false
    var invokedCancelCount = 0

    override func cancel() {

        invokedCancel = true
        invokedCancelCount += 1
    }

    var invokedSuspend = false
    var invokedSuspendCount = 0

    override func suspend() {

        invokedSuspend = true
        invokedSuspendCount += 1
    }

    var invokedResume = false
    var invokedResumeCount = 0

    override func resume() {

        invokedResume = true
        invokedResumeCount += 1
    }
}
