//
//  RemoteActionDelegate.swift
//  LoopKit
//
//  Created by Bill Gestrich on 3/19/23.
//  Copyright © 2023 LoopKit Authors. All rights reserved.
//

import Foundation

public protocol RemoteActionDelegate: AnyObject {
    func enactRemoteOverride(name: String, durationTime: TimeInterval?, remoteAddress: String) async throws -> TemporaryScheduleOverride
    func cancelRemoteOverride() async throws -> TemporaryScheduleOverride
    func deliverRemoteCarbs(amountInGrams: Double, absorptionTime: TimeInterval?, foodType: String?, startDate: Date?, userCreatedDate: Date) async throws -> StoredCarbEntry
    func deliverRemoteBolus(amountInUnits: Double, userCreatedDate: Date) async throws -> DoseEntry
}
