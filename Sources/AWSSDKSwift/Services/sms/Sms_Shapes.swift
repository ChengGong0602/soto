// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Sms {

    public struct DisassociateConnectorResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct Connector: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var capabilityList: [String]? = nil
        public var status: String? = nil
        public var ipAddress: String? = nil
        public var vmManagerId: String? = nil
        public var version: String? = nil
        public var vmManagerType: String? = nil
        public var connectorId: String? = nil
        public var vmManagerName: String? = nil
        public var macAddress: String? = nil
        public var associatedOn: Date? = nil

        public init() {}

        public init(capabilityList: [String]? = nil, status: String? = nil, ipAddress: String? = nil, vmManagerId: String? = nil, version: String? = nil, vmManagerType: String? = nil, connectorId: String? = nil, vmManagerName: String? = nil, macAddress: String? = nil, associatedOn: Date? = nil) {
            self.capabilityList = capabilityList
            self.status = status
            self.ipAddress = ipAddress
            self.vmManagerId = vmManagerId
            self.version = version
            self.vmManagerType = vmManagerType
            self.connectorId = connectorId
            self.vmManagerName = vmManagerName
            self.macAddress = macAddress
            self.associatedOn = associatedOn
        }

        public init(dictionary: [String: Any]) throws {
            if let capabilityList = dictionary["capabilityList"] as? [String] {
                self.capabilityList = capabilityList
            }
            self.status = dictionary["status"] as? String
            self.ipAddress = dictionary["ipAddress"] as? String
            self.vmManagerId = dictionary["vmManagerId"] as? String
            self.version = dictionary["version"] as? String
            self.vmManagerType = dictionary["vmManagerType"] as? String
            self.connectorId = dictionary["connectorId"] as? String
            self.vmManagerName = dictionary["vmManagerName"] as? String
            self.macAddress = dictionary["macAddress"] as? String
            self.associatedOn = dictionary["associatedOn"] as? Date
        }
    }

    public struct GetReplicationRunsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var nextToken: String? = nil
        public var maxResults: Int32? = nil
        public var replicationJobId: String = ""

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32? = nil, replicationJobId: String) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.replicationJobId = replicationJobId
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["nextToken"] as? String
            self.maxResults = dictionary["maxResults"] as? Int32
            guard let replicationJobId = dictionary["replicationJobId"] as? String else { throw InitializableError.missingRequiredParam("replicationJobId") }
            self.replicationJobId = replicationJobId
        }
    }

    public struct GetConnectorsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var nextToken: String? = nil
        public var maxResults: Int32? = nil

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["nextToken"] as? String
            self.maxResults = dictionary["maxResults"] as? Int32
        }
    }

    public struct ImportServerCatalogRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct GetServersResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var serverList: [Server]? = nil
        public var serverCatalogStatus: String? = nil
        public var nextToken: String? = nil
        public var lastModifiedOn: Date? = nil

        public init() {}

        public init(serverList: [Server]? = nil, serverCatalogStatus: String? = nil, nextToken: String? = nil, lastModifiedOn: Date? = nil) {
            self.serverList = serverList
            self.serverCatalogStatus = serverCatalogStatus
            self.nextToken = nextToken
            self.lastModifiedOn = lastModifiedOn
        }

        public init(dictionary: [String: Any]) throws {
            if let serverList = dictionary["serverList"] as? [[String: Any]] {
                self.serverList = try serverList.map({ try Server(dictionary: $0) })
            }
            self.serverCatalogStatus = dictionary["serverCatalogStatus"] as? String
            self.nextToken = dictionary["nextToken"] as? String
            self.lastModifiedOn = dictionary["lastModifiedOn"] as? Date
        }
    }

    public struct GetReplicationJobsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var nextToken: String? = nil
        public var maxResults: Int32? = nil
        public var replicationJobId: String? = nil

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32? = nil, replicationJobId: String? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.replicationJobId = replicationJobId
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["nextToken"] as? String
            self.maxResults = dictionary["maxResults"] as? Int32
            self.replicationJobId = dictionary["replicationJobId"] as? String
        }
    }

    public struct UpdateReplicationJobResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct StartOnDemandReplicationRunResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var replicationRunId: String? = nil

        public init() {}

        public init(replicationRunId: String? = nil) {
            self.replicationRunId = replicationRunId
        }

        public init(dictionary: [String: Any]) throws {
            self.replicationRunId = dictionary["replicationRunId"] as? String
        }
    }

    public struct UpdateReplicationJobRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var roleName: String? = nil
        public var nextReplicationRunStartTime: Date? = nil
        public var description: String? = nil
        public var frequency: Int32? = nil
        public var replicationJobId: String = ""
        public var licenseType: String? = nil

        public init() {}

        public init(roleName: String? = nil, nextReplicationRunStartTime: Date? = nil, description: String? = nil, frequency: Int32? = nil, replicationJobId: String, licenseType: String? = nil) {
            self.roleName = roleName
            self.nextReplicationRunStartTime = nextReplicationRunStartTime
            self.description = description
            self.frequency = frequency
            self.replicationJobId = replicationJobId
            self.licenseType = licenseType
        }

        public init(dictionary: [String: Any]) throws {
            self.roleName = dictionary["roleName"] as? String
            self.nextReplicationRunStartTime = dictionary["nextReplicationRunStartTime"] as? Date
            self.description = dictionary["description"] as? String
            self.frequency = dictionary["frequency"] as? Int32
            guard let replicationJobId = dictionary["replicationJobId"] as? String else { throw InitializableError.missingRequiredParam("replicationJobId") }
            self.replicationJobId = replicationJobId
            self.licenseType = dictionary["licenseType"] as? String
        }
    }

    public struct ReplicationRun: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var state: String? = nil
        public var replicationRunId: String? = nil
        public var completedTime: Date? = nil
        public var scheduledStartTime: Date? = nil
        public var description: String? = nil
        public var amiId: String? = nil
        public var type: String? = nil
        public var statusMessage: String? = nil

        public init() {}

        public init(state: String? = nil, replicationRunId: String? = nil, completedTime: Date? = nil, scheduledStartTime: Date? = nil, description: String? = nil, amiId: String? = nil, type: String? = nil, statusMessage: String? = nil) {
            self.state = state
            self.replicationRunId = replicationRunId
            self.completedTime = completedTime
            self.scheduledStartTime = scheduledStartTime
            self.description = description
            self.amiId = amiId
            self.type = type
            self.statusMessage = statusMessage
        }

        public init(dictionary: [String: Any]) throws {
            self.state = dictionary["state"] as? String
            self.replicationRunId = dictionary["replicationRunId"] as? String
            self.completedTime = dictionary["completedTime"] as? Date
            self.scheduledStartTime = dictionary["scheduledStartTime"] as? Date
            self.description = dictionary["description"] as? String
            self.amiId = dictionary["amiId"] as? String
            self.type = dictionary["type"] as? String
            self.statusMessage = dictionary["statusMessage"] as? String
        }
    }

    public struct DeleteServerCatalogResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct ReplicationJob: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var state: String? = nil
        public var replicationRunList: [ReplicationRun]? = nil
        public var nextReplicationRunStartTime: Date? = nil
        public var vmServer: VmServer? = nil
        public var licenseType: String? = nil
        public var description: String? = nil
        public var serverId: String? = nil
        public var latestAmiId: String? = nil
        public var frequency: Int32? = nil
        public var statusMessage: String? = nil
        public var replicationJobId: String? = nil
        public var roleName: String? = nil
        public var seedReplicationTime: Date? = nil
        public var serverType: String? = nil

        public init() {}

        public init(state: String? = nil, replicationRunList: [ReplicationRun]? = nil, nextReplicationRunStartTime: Date? = nil, vmServer: VmServer? = nil, licenseType: String? = nil, description: String? = nil, serverId: String? = nil, latestAmiId: String? = nil, frequency: Int32? = nil, statusMessage: String? = nil, replicationJobId: String? = nil, roleName: String? = nil, seedReplicationTime: Date? = nil, serverType: String? = nil) {
            self.state = state
            self.replicationRunList = replicationRunList
            self.nextReplicationRunStartTime = nextReplicationRunStartTime
            self.vmServer = vmServer
            self.licenseType = licenseType
            self.description = description
            self.serverId = serverId
            self.latestAmiId = latestAmiId
            self.frequency = frequency
            self.statusMessage = statusMessage
            self.replicationJobId = replicationJobId
            self.roleName = roleName
            self.seedReplicationTime = seedReplicationTime
            self.serverType = serverType
        }

        public init(dictionary: [String: Any]) throws {
            self.state = dictionary["state"] as? String
            if let replicationRunList = dictionary["replicationRunList"] as? [[String: Any]] {
                self.replicationRunList = try replicationRunList.map({ try ReplicationRun(dictionary: $0) })
            }
            self.nextReplicationRunStartTime = dictionary["nextReplicationRunStartTime"] as? Date
            if let vmServer = dictionary["vmServer"] as? [String: Any] { self.vmServer = try Sms.VmServer(dictionary: vmServer) }
            self.licenseType = dictionary["licenseType"] as? String
            self.description = dictionary["description"] as? String
            self.serverId = dictionary["serverId"] as? String
            self.latestAmiId = dictionary["latestAmiId"] as? String
            self.frequency = dictionary["frequency"] as? Int32
            self.statusMessage = dictionary["statusMessage"] as? String
            self.replicationJobId = dictionary["replicationJobId"] as? String
            self.roleName = dictionary["roleName"] as? String
            self.seedReplicationTime = dictionary["seedReplicationTime"] as? Date
            self.serverType = dictionary["serverType"] as? String
        }
    }

    public struct ImportServerCatalogResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct DeleteReplicationJobResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct GetConnectorsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var nextToken: String? = nil
        public var connectorList: [Connector]? = nil

        public init() {}

        public init(nextToken: String? = nil, connectorList: [Connector]? = nil) {
            self.nextToken = nextToken
            self.connectorList = connectorList
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["nextToken"] as? String
            if let connectorList = dictionary["connectorList"] as? [[String: Any]] {
                self.connectorList = try connectorList.map({ try Connector(dictionary: $0) })
            }
        }
    }

    public struct CreateReplicationJobRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var seedReplicationTime: Date = Date()
        public var roleName: String? = nil
        public var serverId: String = ""
        public var description: String? = nil
        public var frequency: Int32 = 0
        public var licenseType: String? = nil

        public init() {}

        public init(seedReplicationTime: Date, roleName: String? = nil, serverId: String, description: String? = nil, frequency: Int32, licenseType: String? = nil) {
            self.seedReplicationTime = seedReplicationTime
            self.roleName = roleName
            self.serverId = serverId
            self.description = description
            self.frequency = frequency
            self.licenseType = licenseType
        }

        public init(dictionary: [String: Any]) throws {
            guard let seedReplicationTime = dictionary["seedReplicationTime"] as? Date else { throw InitializableError.missingRequiredParam("seedReplicationTime") }
            self.seedReplicationTime = seedReplicationTime
            self.roleName = dictionary["roleName"] as? String
            guard let serverId = dictionary["serverId"] as? String else { throw InitializableError.missingRequiredParam("serverId") }
            self.serverId = serverId
            self.description = dictionary["description"] as? String
            guard let frequency = dictionary["frequency"] as? Int32 else { throw InitializableError.missingRequiredParam("frequency") }
            self.frequency = frequency
            self.licenseType = dictionary["licenseType"] as? String
        }
    }

    public struct VmServerAddress: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var vmId: String? = nil
        public var vmManagerId: String? = nil

        public init() {}

        public init(vmId: String? = nil, vmManagerId: String? = nil) {
            self.vmId = vmId
            self.vmManagerId = vmManagerId
        }

        public init(dictionary: [String: Any]) throws {
            self.vmId = dictionary["vmId"] as? String
            self.vmManagerId = dictionary["vmManagerId"] as? String
        }
    }

    public struct GetServersRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var nextToken: String? = nil
        public var maxResults: Int32? = nil

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["nextToken"] as? String
            self.maxResults = dictionary["maxResults"] as? Int32
        }
    }

    public struct VmServer: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var vmManagerName: String? = nil
        public var vmManagerType: String? = nil
        public var vmName: String? = nil
        public var vmServerAddress: VmServerAddress? = nil
        public var vmPath: String? = nil

        public init() {}

        public init(vmManagerName: String? = nil, vmManagerType: String? = nil, vmName: String? = nil, vmServerAddress: VmServerAddress? = nil, vmPath: String? = nil) {
            self.vmManagerName = vmManagerName
            self.vmManagerType = vmManagerType
            self.vmName = vmName
            self.vmServerAddress = vmServerAddress
            self.vmPath = vmPath
        }

        public init(dictionary: [String: Any]) throws {
            self.vmManagerName = dictionary["vmManagerName"] as? String
            self.vmManagerType = dictionary["vmManagerType"] as? String
            self.vmName = dictionary["vmName"] as? String
            if let vmServerAddress = dictionary["vmServerAddress"] as? [String: Any] { self.vmServerAddress = try Sms.VmServerAddress(dictionary: vmServerAddress) }
            self.vmPath = dictionary["vmPath"] as? String
        }
    }

    public struct Server: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var serverId: String? = nil
        public var replicationJobTerminated: Bool? = nil
        public var serverType: String? = nil
        public var vmServer: VmServer? = nil
        public var replicationJobId: String? = nil

        public init() {}

        public init(serverId: String? = nil, replicationJobTerminated: Bool? = nil, serverType: String? = nil, vmServer: VmServer? = nil, replicationJobId: String? = nil) {
            self.serverId = serverId
            self.replicationJobTerminated = replicationJobTerminated
            self.serverType = serverType
            self.vmServer = vmServer
            self.replicationJobId = replicationJobId
        }

        public init(dictionary: [String: Any]) throws {
            self.serverId = dictionary["serverId"] as? String
            self.replicationJobTerminated = dictionary["replicationJobTerminated"] as? Bool
            self.serverType = dictionary["serverType"] as? String
            if let vmServer = dictionary["vmServer"] as? [String: Any] { self.vmServer = try Sms.VmServer(dictionary: vmServer) }
            self.replicationJobId = dictionary["replicationJobId"] as? String
        }
    }

    public struct DeleteServerCatalogRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct CreateReplicationJobResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var replicationJobId: String? = nil

        public init() {}

        public init(replicationJobId: String? = nil) {
            self.replicationJobId = replicationJobId
        }

        public init(dictionary: [String: Any]) throws {
            self.replicationJobId = dictionary["replicationJobId"] as? String
        }
    }

    public struct StartOnDemandReplicationRunRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var description: String? = nil
        public var replicationJobId: String = ""

        public init() {}

        public init(description: String? = nil, replicationJobId: String) {
            self.description = description
            self.replicationJobId = replicationJobId
        }

        public init(dictionary: [String: Any]) throws {
            self.description = dictionary["description"] as? String
            guard let replicationJobId = dictionary["replicationJobId"] as? String else { throw InitializableError.missingRequiredParam("replicationJobId") }
            self.replicationJobId = replicationJobId
        }
    }

    public struct GetReplicationJobsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var nextToken: String? = nil
        public var replicationJobList: [ReplicationJob]? = nil

        public init() {}

        public init(nextToken: String? = nil, replicationJobList: [ReplicationJob]? = nil) {
            self.nextToken = nextToken
            self.replicationJobList = replicationJobList
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["nextToken"] as? String
            if let replicationJobList = dictionary["replicationJobList"] as? [[String: Any]] {
                self.replicationJobList = try replicationJobList.map({ try ReplicationJob(dictionary: $0) })
            }
        }
    }

    public struct DisassociateConnectorRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var connectorId: String = ""

        public init() {}

        public init(connectorId: String) {
            self.connectorId = connectorId
        }

        public init(dictionary: [String: Any]) throws {
            guard let connectorId = dictionary["connectorId"] as? String else { throw InitializableError.missingRequiredParam("connectorId") }
            self.connectorId = connectorId
        }
    }

    public struct GetReplicationRunsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var replicationJob: ReplicationJob? = nil
        public var replicationRunList: [ReplicationRun]? = nil
        public var nextToken: String? = nil

        public init() {}

        public init(replicationJob: ReplicationJob? = nil, replicationRunList: [ReplicationRun]? = nil, nextToken: String? = nil) {
            self.replicationJob = replicationJob
            self.replicationRunList = replicationRunList
            self.nextToken = nextToken
        }

        public init(dictionary: [String: Any]) throws {
            if let replicationJob = dictionary["replicationJob"] as? [String: Any] { self.replicationJob = try Sms.ReplicationJob(dictionary: replicationJob) }
            if let replicationRunList = dictionary["replicationRunList"] as? [[String: Any]] {
                self.replicationRunList = try replicationRunList.map({ try ReplicationRun(dictionary: $0) })
            }
            self.nextToken = dictionary["nextToken"] as? String
        }
    }

    public struct DeleteReplicationJobRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var replicationJobId: String = ""

        public init() {}

        public init(replicationJobId: String) {
            self.replicationJobId = replicationJobId
        }

        public init(dictionary: [String: Any]) throws {
            guard let replicationJobId = dictionary["replicationJobId"] as? String else { throw InitializableError.missingRequiredParam("replicationJobId") }
            self.replicationJobId = replicationJobId
        }
    }

}