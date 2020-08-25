//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore
import Foundation

extension MediaTailor {
    // MARK: Enums

    public enum Mode: String, CustomStringConvertible, Codable {
        case off = "OFF"
        case behindLiveEdge = "BEHIND_LIVE_EDGE"
        public var description: String { return self.rawValue }
    }

    public enum OriginManifestType: String, CustomStringConvertible, Codable {
        case singlePeriod = "SINGLE_PERIOD"
        case multiPeriod = "MULTI_PERIOD"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AvailSuppression: AWSEncodableShape & AWSDecodableShape {

        public let mode: Mode?
        /// Sets the mode for avail suppression, also known as ad suppression. By default, ad suppression is off and all ad breaks are filled by MediaTailor with ads or slate.
        public let value: String?

        public init(mode: Mode? = nil, value: String? = nil) {
            self.mode = mode
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case value = "Value"
        }
    }

    public struct Bumper: AWSEncodableShape & AWSDecodableShape {

        public let endUrl: String?
        public let startUrl: String?

        public init(endUrl: String? = nil, startUrl: String? = nil) {
            self.endUrl = endUrl
            self.startUrl = startUrl
        }

        private enum CodingKeys: String, CodingKey {
            case endUrl = "EndUrl"
            case startUrl = "StartUrl"
        }
    }

    public struct CdnConfiguration: AWSEncodableShape & AWSDecodableShape {

        /// A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the following origin: ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.
        public let adSegmentUrlPrefix: String?
        /// A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.
        public let contentSegmentUrlPrefix: String?

        public init(adSegmentUrlPrefix: String? = nil, contentSegmentUrlPrefix: String? = nil) {
            self.adSegmentUrlPrefix = adSegmentUrlPrefix
            self.contentSegmentUrlPrefix = contentSegmentUrlPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case adSegmentUrlPrefix = "AdSegmentUrlPrefix"
            case contentSegmentUrlPrefix = "ContentSegmentUrlPrefix"
        }
    }

    public struct DashConfiguration: AWSDecodableShape {

        /// The URL generated by MediaTailor to initiate a playback session. The session uses server-side reporting. This setting is ignored in PUT operations. 
        public let manifestEndpointPrefix: String?
        /// The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value. 
        public let mpdLocation: String?
        /// The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD. 
        public let originManifestType: OriginManifestType?

        public init(manifestEndpointPrefix: String? = nil, mpdLocation: String? = nil, originManifestType: OriginManifestType? = nil) {
            self.manifestEndpointPrefix = manifestEndpointPrefix
            self.mpdLocation = mpdLocation
            self.originManifestType = originManifestType
        }

        private enum CodingKeys: String, CodingKey {
            case manifestEndpointPrefix = "ManifestEndpointPrefix"
            case mpdLocation = "MpdLocation"
            case originManifestType = "OriginManifestType"
        }
    }

    public struct DashConfigurationForPut: AWSEncodableShape {

        /// The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value. 
        public let mpdLocation: String?
        /// The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD. 
        public let originManifestType: OriginManifestType?

        public init(mpdLocation: String? = nil, originManifestType: OriginManifestType? = nil) {
            self.mpdLocation = mpdLocation
            self.originManifestType = originManifestType
        }

        private enum CodingKeys: String, CodingKey {
            case mpdLocation = "MpdLocation"
            case originManifestType = "OriginManifestType"
        }
    }

    public struct DeletePlaybackConfigurationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "name", location: .uri(locationName: "Name"))
        ]

        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeletePlaybackConfigurationResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct GetPlaybackConfigurationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "name", location: .uri(locationName: "Name"))
        ]

        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetPlaybackConfigurationResponse: AWSDecodableShape {

        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.
        public let adDecisionServerUrl: String?
        /// The configuration for Avail Suppression.
        public let availSuppression: AvailSuppression?
        /// The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. 
        public let bumper: Bumper?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The configuration for DASH content. 
        public let dashConfiguration: DashConfiguration?
        /// The configuration for HLS content. 
        public let hlsConfiguration: HlsConfiguration?
        /// The configuration for pre-roll ad insertion.
        public let livePreRollConfiguration: LivePreRollConfiguration?
        /// The identifier for the playback configuration.
        public let name: String?
        /// The maximum duration of underfilled ad time (in seconds) allowed in an ad break. 
        public let personalizationThresholdSeconds: Int?
        /// The Amazon Resource Name (ARN) for the playback configuration. 
        public let playbackConfigurationArn: String?
        /// The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. 
        public let playbackEndpointPrefix: String?
        /// The URL that the player uses to initialize a session that uses client-side reporting. 
        public let sessionInitializationEndpointPrefix: String?
        /// The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// The tags assigned to the playback configuration. 
        public let tags: [String: String]?
        /// The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.
        public let transcodeProfileName: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, availSuppression: AvailSuppression? = nil, bumper: Bumper? = nil, cdnConfiguration: CdnConfiguration? = nil, dashConfiguration: DashConfiguration? = nil, hlsConfiguration: HlsConfiguration? = nil, livePreRollConfiguration: LivePreRollConfiguration? = nil, name: String? = nil, personalizationThresholdSeconds: Int? = nil, playbackConfigurationArn: String? = nil, playbackEndpointPrefix: String? = nil, sessionInitializationEndpointPrefix: String? = nil, slateAdUrl: String? = nil, tags: [String: String]? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.availSuppression = availSuppression
            self.bumper = bumper
            self.cdnConfiguration = cdnConfiguration
            self.dashConfiguration = dashConfiguration
            self.hlsConfiguration = hlsConfiguration
            self.livePreRollConfiguration = livePreRollConfiguration
            self.name = name
            self.personalizationThresholdSeconds = personalizationThresholdSeconds
            self.playbackConfigurationArn = playbackConfigurationArn
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.slateAdUrl = slateAdUrl
            self.tags = tags
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case availSuppression = "AvailSuppression"
            case bumper = "Bumper"
            case cdnConfiguration = "CdnConfiguration"
            case dashConfiguration = "DashConfiguration"
            case hlsConfiguration = "HlsConfiguration"
            case livePreRollConfiguration = "LivePreRollConfiguration"
            case name = "Name"
            case personalizationThresholdSeconds = "PersonalizationThresholdSeconds"
            case playbackConfigurationArn = "PlaybackConfigurationArn"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case slateAdUrl = "SlateAdUrl"
            case tags = "tags"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct HlsConfiguration: AWSDecodableShape {

        /// The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.
        public let manifestEndpointPrefix: String?

        public init(manifestEndpointPrefix: String? = nil) {
            self.manifestEndpointPrefix = manifestEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case manifestEndpointPrefix = "ManifestEndpointPrefix"
        }
    }

    public struct ListPlaybackConfigurationsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "MaxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken"))
        ]

        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListPlaybackConfigurationsResponse: AWSDecodableShape {

        /// Array of playback configurations. This might be all the available configurations or a subset, depending on the settings that you provide and the total number of configurations stored. 
        public let items: [PlaybackConfiguration]?
        /// Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.
        public let nextToken: String?

        public init(items: [PlaybackConfiguration]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "ResourceArn"))
        ]

        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {

        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct LivePreRollConfiguration: AWSEncodableShape & AWSDecodableShape {

        /// The URL for the ad decision server (ADS) for pre-roll ads. This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.
        public let adDecisionServerUrl: String?
        /// The maximum allowed duration for the pre-roll ad avail. AWS Elemental MediaTailor won't play pre-roll ads to exceed this duration, regardless of the total duration of ads that the ADS returns.
        public let maxDurationSeconds: Int?

        public init(adDecisionServerUrl: String? = nil, maxDurationSeconds: Int? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.maxDurationSeconds = maxDurationSeconds
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case maxDurationSeconds = "MaxDurationSeconds"
        }
    }

    public struct PlaybackConfiguration: AWSDecodableShape {

        public let adDecisionServerUrl: String?
        public let cdnConfiguration: CdnConfiguration?
        public let dashConfiguration: DashConfiguration?
        public let hlsConfiguration: HlsConfiguration?
        public let name: String?
        public let personalizationThresholdSeconds: Int?
        public let playbackConfigurationArn: String?
        public let playbackEndpointPrefix: String?
        public let sessionInitializationEndpointPrefix: String?
        public let slateAdUrl: String?
        public let tags: [String: String]?
        public let transcodeProfileName: String?
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, dashConfiguration: DashConfiguration? = nil, hlsConfiguration: HlsConfiguration? = nil, name: String? = nil, personalizationThresholdSeconds: Int? = nil, playbackConfigurationArn: String? = nil, playbackEndpointPrefix: String? = nil, sessionInitializationEndpointPrefix: String? = nil, slateAdUrl: String? = nil, tags: [String: String]? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.cdnConfiguration = cdnConfiguration
            self.dashConfiguration = dashConfiguration
            self.hlsConfiguration = hlsConfiguration
            self.name = name
            self.personalizationThresholdSeconds = personalizationThresholdSeconds
            self.playbackConfigurationArn = playbackConfigurationArn
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.slateAdUrl = slateAdUrl
            self.tags = tags
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case cdnConfiguration = "CdnConfiguration"
            case dashConfiguration = "DashConfiguration"
            case hlsConfiguration = "HlsConfiguration"
            case name = "Name"
            case personalizationThresholdSeconds = "PersonalizationThresholdSeconds"
            case playbackConfigurationArn = "PlaybackConfigurationArn"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case slateAdUrl = "SlateAdUrl"
            case tags = "tags"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct PutPlaybackConfigurationRequest: AWSEncodableShape {

        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.
        public let adDecisionServerUrl: String?
        /// The configuration for Avail Suppression.
        public let availSuppression: AvailSuppression?
        /// The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. 
        public let bumper: Bumper?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The configuration for DASH content. 
        public let dashConfiguration: DashConfigurationForPut?
        /// The configuration for pre-roll ad insertion.
        public let livePreRollConfiguration: LivePreRollConfiguration?
        /// The identifier for the playback configuration.
        public let name: String?
        /// The maximum duration of underfilled ad time (in seconds) allowed in an ad break. 
        public let personalizationThresholdSeconds: Int?
        /// The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// The tags to assign to the playback configuration. 
        public let tags: [String: String]?
        /// The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.
        public let transcodeProfileName: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, availSuppression: AvailSuppression? = nil, bumper: Bumper? = nil, cdnConfiguration: CdnConfiguration? = nil, dashConfiguration: DashConfigurationForPut? = nil, livePreRollConfiguration: LivePreRollConfiguration? = nil, name: String? = nil, personalizationThresholdSeconds: Int? = nil, slateAdUrl: String? = nil, tags: [String: String]? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.availSuppression = availSuppression
            self.bumper = bumper
            self.cdnConfiguration = cdnConfiguration
            self.dashConfiguration = dashConfiguration
            self.livePreRollConfiguration = livePreRollConfiguration
            self.name = name
            self.personalizationThresholdSeconds = personalizationThresholdSeconds
            self.slateAdUrl = slateAdUrl
            self.tags = tags
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        public func validate(name: String) throws {
            try validate(self.personalizationThresholdSeconds, name: "personalizationThresholdSeconds", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case availSuppression = "AvailSuppression"
            case bumper = "Bumper"
            case cdnConfiguration = "CdnConfiguration"
            case dashConfiguration = "DashConfiguration"
            case livePreRollConfiguration = "LivePreRollConfiguration"
            case name = "Name"
            case personalizationThresholdSeconds = "PersonalizationThresholdSeconds"
            case slateAdUrl = "SlateAdUrl"
            case tags = "tags"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct PutPlaybackConfigurationResponse: AWSDecodableShape {

        public let adDecisionServerUrl: String?
        public let availSuppression: AvailSuppression?
        public let bumper: Bumper?
        public let cdnConfiguration: CdnConfiguration?
        public let dashConfiguration: DashConfiguration?
        public let hlsConfiguration: HlsConfiguration?
        public let livePreRollConfiguration: LivePreRollConfiguration?
        public let name: String?
        public let playbackConfigurationArn: String?
        public let playbackEndpointPrefix: String?
        public let sessionInitializationEndpointPrefix: String?
        public let slateAdUrl: String?
        public let tags: [String: String]?
        public let transcodeProfileName: String?
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, availSuppression: AvailSuppression? = nil, bumper: Bumper? = nil, cdnConfiguration: CdnConfiguration? = nil, dashConfiguration: DashConfiguration? = nil, hlsConfiguration: HlsConfiguration? = nil, livePreRollConfiguration: LivePreRollConfiguration? = nil, name: String? = nil, playbackConfigurationArn: String? = nil, playbackEndpointPrefix: String? = nil, sessionInitializationEndpointPrefix: String? = nil, slateAdUrl: String? = nil, tags: [String: String]? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.availSuppression = availSuppression
            self.bumper = bumper
            self.cdnConfiguration = cdnConfiguration
            self.dashConfiguration = dashConfiguration
            self.hlsConfiguration = hlsConfiguration
            self.livePreRollConfiguration = livePreRollConfiguration
            self.name = name
            self.playbackConfigurationArn = playbackConfigurationArn
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.slateAdUrl = slateAdUrl
            self.tags = tags
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case availSuppression = "AvailSuppression"
            case bumper = "Bumper"
            case cdnConfiguration = "CdnConfiguration"
            case dashConfiguration = "DashConfiguration"
            case hlsConfiguration = "HlsConfiguration"
            case livePreRollConfiguration = "LivePreRollConfiguration"
            case name = "Name"
            case playbackConfigurationArn = "PlaybackConfigurationArn"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case slateAdUrl = "SlateAdUrl"
            case tags = "tags"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "ResourceArn"))
        ]

        public let resourceArn: String
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "ResourceArn")), 
            AWSMemberEncoding(label: "tagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        public let resourceArn: String
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: CodingKey {}
    }
}
