// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS IoTSiteWise service.

Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an AWS service that connects Industrial Internet of Things (IIoT) devices to the power of the AWS Cloud. For more information, see the AWS IoT SiteWise User Guide. For information about AWS IoT SiteWise quotas, see Quotas in the AWS IoT SiteWise User Guide.
*/
public struct IoTSiteWise {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoTSiteWise client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "iotsitewise",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTSiteWiseErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a child asset with the given parent asset through a hierarchy defined in the parent asset's model. For more information, see Associating Assets in the AWS IoT SiteWise User Guide.
    @discardableResult public func associateAssets(_ input: AssociateAssetsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "AssociateAssets", path: "/assets/{assetId}/associate", httpMethod: "POST", input: input)
    }

    ///  Associates a group (batch) of assets with an AWS IoT SiteWise Monitor project.
    public func batchAssociateProjectAssets(_ input: BatchAssociateProjectAssetsRequest) -> EventLoopFuture<BatchAssociateProjectAssetsResponse> {
        return client.send(operation: "BatchAssociateProjectAssets", path: "/projects/{projectId}/assets/associate", httpMethod: "POST", input: input)
    }

    ///  Disassociates a group (batch) of assets from an AWS IoT SiteWise Monitor project.
    public func batchDisassociateProjectAssets(_ input: BatchDisassociateProjectAssetsRequest) -> EventLoopFuture<BatchDisassociateProjectAssetsResponse> {
        return client.send(operation: "BatchDisassociateProjectAssets", path: "/projects/{projectId}/assets/disassociate", httpMethod: "POST", input: input)
    }

    ///  Sends a list of asset property values to AWS IoT SiteWise. Each value is a timestamp-quality-value (TQV) data point. For more information, see Ingesting Data Using the API in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.    With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs that have a timestamp of no more than 15 minutes in the past and no more than 5 minutes in the future. AWS IoT SiteWise rejects timestamps outside of the inclusive range of [-15, +5] minutes and returns a TimestampOutOfRangeException error. For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer TQV has a different quality. For example, if you store a TQV {T1, GOOD, V1}, then storing {T1, GOOD, V2} replaces the existing TQV. 
    public func batchPutAssetPropertyValue(_ input: BatchPutAssetPropertyValueRequest) -> EventLoopFuture<BatchPutAssetPropertyValueResponse> {
        return client.send(operation: "BatchPutAssetPropertyValue", path: "/properties", httpMethod: "POST", input: input)
    }

    ///  Creates an access policy that grants the specified AWS Single Sign-On user or group access to the specified AWS IoT SiteWise Monitor portal or project resource.
    public func createAccessPolicy(_ input: CreateAccessPolicyRequest) -> EventLoopFuture<CreateAccessPolicyResponse> {
        return client.send(operation: "CreateAccessPolicy", path: "/access-policies", httpMethod: "POST", input: input)
    }

    ///  Creates an asset from an existing asset model. For more information, see Creating Assets in the AWS IoT SiteWise User Guide.
    public func createAsset(_ input: CreateAssetRequest) -> EventLoopFuture<CreateAssetResponse> {
        return client.send(operation: "CreateAsset", path: "/assets", httpMethod: "POST", input: input)
    }

    ///  Creates an asset model from specified property and hierarchy definitions. You create assets from asset models. With asset models, you can easily create assets of the same type that have standardized definitions. Each asset created from a model inherits the asset model's property and hierarchy definitions. For more information, see Defining Asset Models in the AWS IoT SiteWise User Guide.
    public func createAssetModel(_ input: CreateAssetModelRequest) -> EventLoopFuture<CreateAssetModelResponse> {
        return client.send(operation: "CreateAssetModel", path: "/asset-models", httpMethod: "POST", input: input)
    }

    ///  Creates a dashboard in an AWS IoT SiteWise Monitor project.
    public func createDashboard(_ input: CreateDashboardRequest) -> EventLoopFuture<CreateDashboardResponse> {
        return client.send(operation: "CreateDashboard", path: "/dashboards", httpMethod: "POST", input: input)
    }

    ///  Creates a gateway, which is a virtual or edge device that delivers industrial data streams from local servers to AWS IoT SiteWise. For more information, see Ingesting data using a gateway in the AWS IoT SiteWise User Guide.
    public func createGateway(_ input: CreateGatewayRequest) -> EventLoopFuture<CreateGatewayResponse> {
        return client.send(operation: "CreateGateway", path: "/20200301/gateways", httpMethod: "POST", input: input)
    }

    ///  Creates a portal, which can contain projects and dashboards. Before you can create a portal, you must configure AWS Single Sign-On in the current Region. AWS IoT SiteWise Monitor uses AWS SSO to manage user permissions. For more information, see Enabling AWS SSO in the AWS IoT SiteWise User Guide.  Before you can sign in to a new portal, you must add at least one AWS SSO user or group to that portal. For more information, see Adding or Removing Portal Administrators in the AWS IoT SiteWise User Guide. 
    public func createPortal(_ input: CreatePortalRequest) -> EventLoopFuture<CreatePortalResponse> {
        return client.send(operation: "CreatePortal", path: "/portals", httpMethod: "POST", input: input)
    }

    ///  Creates a project in the specified portal.
    public func createProject(_ input: CreateProjectRequest) -> EventLoopFuture<CreateProjectResponse> {
        return client.send(operation: "CreateProject", path: "/projects", httpMethod: "POST", input: input)
    }

    ///  Deletes an access policy that grants the specified AWS Single Sign-On identity access to the specified AWS IoT SiteWise Monitor resource. You can use this action to revoke access to an AWS IoT SiteWise Monitor resource.
    public func deleteAccessPolicy(_ input: DeleteAccessPolicyRequest) -> EventLoopFuture<DeleteAccessPolicyResponse> {
        return client.send(operation: "DeleteAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an asset. This action can't be undone. For more information, see Deleting Assets and Models in the AWS IoT SiteWise User Guide.   You can't delete an asset that's associated to another asset. For more information, see DisassociateAssets. 
    public func deleteAsset(_ input: DeleteAssetRequest) -> EventLoopFuture<DeleteAssetResponse> {
        return client.send(operation: "DeleteAsset", path: "/assets/{assetId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an asset model. This action can't be undone. You must delete all assets created from an asset model before you can delete the model. Also, you can't delete an asset model if a parent asset model exists that contains a property formula expression that depends on the asset model that you want to delete. For more information, see Deleting Assets and Models in the AWS IoT SiteWise User Guide.
    public func deleteAssetModel(_ input: DeleteAssetModelRequest) -> EventLoopFuture<DeleteAssetModelResponse> {
        return client.send(operation: "DeleteAssetModel", path: "/asset-models/{assetModelId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a dashboard from AWS IoT SiteWise Monitor.
    public func deleteDashboard(_ input: DeleteDashboardRequest) -> EventLoopFuture<DeleteDashboardResponse> {
        return client.send(operation: "DeleteDashboard", path: "/dashboards/{dashboardId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a gateway from AWS IoT SiteWise. When you delete a gateway, some of the gateway's files remain in your gateway's file system. For more information, see Data retention in the AWS IoT SiteWise User Guide.
    @discardableResult public func deleteGateway(_ input: DeleteGatewayRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a portal from AWS IoT SiteWise Monitor.
    public func deletePortal(_ input: DeletePortalRequest) -> EventLoopFuture<DeletePortalResponse> {
        return client.send(operation: "DeletePortal", path: "/portals/{portalId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a project from AWS IoT SiteWise Monitor.
    public func deleteProject(_ input: DeleteProjectRequest) -> EventLoopFuture<DeleteProjectResponse> {
        return client.send(operation: "DeleteProject", path: "/projects/{projectId}", httpMethod: "DELETE", input: input)
    }

    ///  Describes an access policy, which specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project.
    public func describeAccessPolicy(_ input: DescribeAccessPolicyRequest) -> EventLoopFuture<DescribeAccessPolicyResponse> {
        return client.send(operation: "DescribeAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about an asset.
    public func describeAsset(_ input: DescribeAssetRequest) -> EventLoopFuture<DescribeAssetResponse> {
        return client.send(operation: "DescribeAsset", path: "/assets/{assetId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about an asset model.
    public func describeAssetModel(_ input: DescribeAssetModelRequest) -> EventLoopFuture<DescribeAssetModelResponse> {
        return client.send(operation: "DescribeAssetModel", path: "/asset-models/{assetModelId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about an asset's property.
    public func describeAssetProperty(_ input: DescribeAssetPropertyRequest) -> EventLoopFuture<DescribeAssetPropertyResponse> {
        return client.send(operation: "DescribeAssetProperty", path: "/assets/{assetId}/properties/{propertyId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a dashboard.
    public func describeDashboard(_ input: DescribeDashboardRequest) -> EventLoopFuture<DescribeDashboardResponse> {
        return client.send(operation: "DescribeDashboard", path: "/dashboards/{dashboardId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a gateway.
    public func describeGateway(_ input: DescribeGatewayRequest) -> EventLoopFuture<DescribeGatewayResponse> {
        return client.send(operation: "DescribeGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a gateway capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.
    public func describeGatewayCapabilityConfiguration(_ input: DescribeGatewayCapabilityConfigurationRequest) -> EventLoopFuture<DescribeGatewayCapabilityConfigurationResponse> {
        return client.send(operation: "DescribeGatewayCapabilityConfiguration", path: "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the current AWS IoT SiteWise logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest) -> EventLoopFuture<DescribeLoggingOptionsResponse> {
        return client.send(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a portal.
    public func describePortal(_ input: DescribePortalRequest) -> EventLoopFuture<DescribePortalResponse> {
        return client.send(operation: "DescribePortal", path: "/portals/{portalId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a project.
    public func describeProject(_ input: DescribeProjectRequest) -> EventLoopFuture<DescribeProjectResponse> {
        return client.send(operation: "DescribeProject", path: "/projects/{projectId}", httpMethod: "GET", input: input)
    }

    ///  Disassociates a child asset from the given parent asset through a hierarchy defined in the parent asset's model.
    @discardableResult public func disassociateAssets(_ input: DisassociateAssetsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DisassociateAssets", path: "/assets/{assetId}/disassociate", httpMethod: "POST", input: input)
    }

    ///  Gets aggregated values for an asset property. For more information, see Querying Aggregated Property Values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  
    public func getAssetPropertyAggregates(_ input: GetAssetPropertyAggregatesRequest) -> EventLoopFuture<GetAssetPropertyAggregatesResponse> {
        return client.send(operation: "GetAssetPropertyAggregates", path: "/properties/aggregates", httpMethod: "GET", input: input)
    }

    ///  Gets an asset property's current value. For more information, see Querying Current Property Values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  
    public func getAssetPropertyValue(_ input: GetAssetPropertyValueRequest) -> EventLoopFuture<GetAssetPropertyValueResponse> {
        return client.send(operation: "GetAssetPropertyValue", path: "/properties/latest", httpMethod: "GET", input: input)
    }

    ///  Gets the history of an asset property's values. For more information, see Querying Historical Property Values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  
    public func getAssetPropertyValueHistory(_ input: GetAssetPropertyValueHistoryRequest) -> EventLoopFuture<GetAssetPropertyValueHistoryResponse> {
        return client.send(operation: "GetAssetPropertyValueHistory", path: "/properties/history", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of access policies for an AWS SSO identity (a user or group) or an AWS IoT SiteWise Monitor resource (a portal or project).
    public func listAccessPolicies(_ input: ListAccessPoliciesRequest) -> EventLoopFuture<ListAccessPoliciesResponse> {
        return client.send(operation: "ListAccessPolicies", path: "/access-policies", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of summaries of all asset models.
    public func listAssetModels(_ input: ListAssetModelsRequest) -> EventLoopFuture<ListAssetModelsResponse> {
        return client.send(operation: "ListAssetModels", path: "/asset-models", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of asset summaries.
    public func listAssets(_ input: ListAssetsRequest) -> EventLoopFuture<ListAssetsResponse> {
        return client.send(operation: "ListAssets", path: "/assets", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of the assets associated to a parent asset (assetId) by a given hierarchy (hierarchyId).
    public func listAssociatedAssets(_ input: ListAssociatedAssetsRequest) -> EventLoopFuture<ListAssociatedAssetsResponse> {
        return client.send(operation: "ListAssociatedAssets", path: "/assets/{assetId}/hierarchies", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor project.
    public func listDashboards(_ input: ListDashboardsRequest) -> EventLoopFuture<ListDashboardsResponse> {
        return client.send(operation: "ListDashboards", path: "/dashboards", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of gateways.
    public func listGateways(_ input: ListGatewaysRequest) -> EventLoopFuture<ListGatewaysResponse> {
        return client.send(operation: "ListGateways", path: "/20200301/gateways", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of AWS IoT SiteWise Monitor portals.
    public func listPortals(_ input: ListPortalsRequest) -> EventLoopFuture<ListPortalsResponse> {
        return client.send(operation: "ListPortals", path: "/portals", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of assets associated with an AWS IoT SiteWise Monitor project.
    public func listProjectAssets(_ input: ListProjectAssetsRequest) -> EventLoopFuture<ListProjectAssetsResponse> {
        return client.send(operation: "ListProjectAssets", path: "/projects/{projectId}/assets", httpMethod: "GET", input: input)
    }

    ///  Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor portal.
    public func listProjects(_ input: ListProjectsRequest) -> EventLoopFuture<ListProjectsResponse> {
        return client.send(operation: "ListProjects", path: "/projects", httpMethod: "GET", input: input)
    }

    ///  Retrieves the list of tags for an AWS IoT SiteWise resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags", httpMethod: "GET", input: input)
    }

    ///  Sets logging options for AWS IoT SiteWise.
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest) -> EventLoopFuture<PutLoggingOptionsResponse> {
        return client.send(operation: "PutLoggingOptions", path: "/logging", httpMethod: "PUT", input: input)
    }

    ///  Adds tags to an AWS IoT SiteWise resource. If a tag already exists for the resource, this operation updates the tag's value.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags", httpMethod: "POST", input: input)
    }

    ///  Removes a tag from an AWS IoT SiteWise resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags", httpMethod: "DELETE", input: input)
    }

    ///  Updates an existing access policy that specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project resource.
    public func updateAccessPolicy(_ input: UpdateAccessPolicyRequest) -> EventLoopFuture<UpdateAccessPolicyResponse> {
        return client.send(operation: "UpdateAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: "PUT", input: input)
    }

    ///  Updates an asset's name. For more information, see Updating Assets and Models in the AWS IoT SiteWise User Guide.
    public func updateAsset(_ input: UpdateAssetRequest) -> EventLoopFuture<UpdateAssetResponse> {
        return client.send(operation: "UpdateAsset", path: "/assets/{assetId}", httpMethod: "PUT", input: input)
    }

    ///  Updates an asset model and all of the assets that were created from the model. Each asset created from the model inherits the updated asset model's property and hierarchy definitions. For more information, see Updating Assets and Models in the AWS IoT SiteWise User Guide.  This action overwrites the existing model with the provided model. To avoid deleting your asset model's properties or hierarchies, you must include their definitions in the updated asset model payload. For more information, see DescribeAssetModel. If you remove a property from an asset model or update a property's formula expression, AWS IoT SiteWise deletes all previous data for that property. If you remove a hierarchy definition from an asset model, AWS IoT SiteWise disassociates every asset associated with that hierarchy. You can't change the type or data type of an existing property. 
    public func updateAssetModel(_ input: UpdateAssetModelRequest) -> EventLoopFuture<UpdateAssetModelResponse> {
        return client.send(operation: "UpdateAssetModel", path: "/asset-models/{assetModelId}", httpMethod: "PUT", input: input)
    }

    ///  Updates an asset property's alias and notification state.
    @discardableResult public func updateAssetProperty(_ input: UpdateAssetPropertyRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateAssetProperty", path: "/assets/{assetId}/properties/{propertyId}", httpMethod: "PUT", input: input)
    }

    ///  Updates an AWS IoT SiteWise Monitor dashboard.
    public func updateDashboard(_ input: UpdateDashboardRequest) -> EventLoopFuture<UpdateDashboardResponse> {
        return client.send(operation: "UpdateDashboard", path: "/dashboards/{dashboardId}", httpMethod: "PUT", input: input)
    }

    ///  Updates a gateway's name.
    @discardableResult public func updateGateway(_ input: UpdateGatewayRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: "PUT", input: input)
    }

    ///  Updates a gateway capability configuration or defines a new capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.
    public func updateGatewayCapabilityConfiguration(_ input: UpdateGatewayCapabilityConfigurationRequest) -> EventLoopFuture<UpdateGatewayCapabilityConfigurationResponse> {
        return client.send(operation: "UpdateGatewayCapabilityConfiguration", path: "/20200301/gateways/{gatewayId}/capability", httpMethod: "POST", input: input)
    }

    ///  Updates an AWS IoT SiteWise Monitor portal.
    public func updatePortal(_ input: UpdatePortalRequest) -> EventLoopFuture<UpdatePortalResponse> {
        return client.send(operation: "UpdatePortal", path: "/portals/{portalId}", httpMethod: "PUT", input: input)
    }

    ///  Updates an AWS IoT SiteWise Monitor project.
    public func updateProject(_ input: UpdateProjectRequest) -> EventLoopFuture<UpdateProjectResponse> {
        return client.send(operation: "UpdateProject", path: "/projects/{projectId}", httpMethod: "PUT", input: input)
    }
}
