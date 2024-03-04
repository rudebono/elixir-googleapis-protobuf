defmodule Google.Cloud.Apphub.V1.LookupServiceProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.LookupServiceProjectAttachmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_project_attachment, 1,
    type: Google.Cloud.Apphub.V1.ServiceProjectAttachment,
    json_name: "serviceProjectAttachment"
end

defmodule Google.Cloud.Apphub.V1.ListServiceProjectAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListServiceProjectAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_project_attachments, 1,
    repeated: true,
    type: Google.Cloud.Apphub.V1.ServiceProjectAttachment,
    json_name: "serviceProjectAttachments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apphub.V1.CreateServiceProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :service_project_attachment_id, 2,
    type: :string,
    json_name: "serviceProjectAttachmentId",
    deprecated: false

  field :service_project_attachment, 3,
    type: Google.Cloud.Apphub.V1.ServiceProjectAttachment,
    json_name: "serviceProjectAttachment",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.GetServiceProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DeleteServiceProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DetachServiceProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DetachServiceProjectAttachmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Apphub.V1.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Cloud.Apphub.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apphub.V1.ListDiscoveredServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListDiscoveredServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :discovered_services, 1,
    repeated: true,
    type: Google.Cloud.Apphub.V1.DiscoveredService,
    json_name: "discoveredServices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apphub.V1.CreateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_id, 2, type: :string, json_name: "serviceId", deprecated: false
  field :service, 3, type: Google.Cloud.Apphub.V1.Service, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.GetServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.GetDiscoveredServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.UpdateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service, 2, type: Google.Cloud.Apphub.V1.Service, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DeleteServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListApplicationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListApplicationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :applications, 1, repeated: true, type: Google.Cloud.Apphub.V1.Application
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apphub.V1.CreateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :application_id, 2, type: :string, json_name: "applicationId", deprecated: false
  field :application, 3, type: Google.Cloud.Apphub.V1.Application, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.GetApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.UpdateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :application, 2, type: Google.Cloud.Apphub.V1.Application, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DeleteApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListWorkloadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListWorkloadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :workloads, 1, repeated: true, type: Google.Cloud.Apphub.V1.Workload
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apphub.V1.ListDiscoveredWorkloadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ListDiscoveredWorkloadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :discovered_workloads, 1,
    repeated: true,
    type: Google.Cloud.Apphub.V1.DiscoveredWorkload,
    json_name: "discoveredWorkloads"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apphub.V1.CreateWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workload_id, 2, type: :string, json_name: "workloadId", deprecated: false
  field :workload, 3, type: Google.Cloud.Apphub.V1.Workload, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.GetWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.GetDiscoveredWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.UpdateWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :workload, 2, type: Google.Cloud.Apphub.V1.Workload, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DeleteWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Apphub.V1.AppHub.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.apphub.v1.AppHub", protoc_gen_elixir_version: "0.12.0"

  rpc :LookupServiceProjectAttachment,
      Google.Cloud.Apphub.V1.LookupServiceProjectAttachmentRequest,
      Google.Cloud.Apphub.V1.LookupServiceProjectAttachmentResponse

  rpc :ListServiceProjectAttachments,
      Google.Cloud.Apphub.V1.ListServiceProjectAttachmentsRequest,
      Google.Cloud.Apphub.V1.ListServiceProjectAttachmentsResponse

  rpc :CreateServiceProjectAttachment,
      Google.Cloud.Apphub.V1.CreateServiceProjectAttachmentRequest,
      Google.Longrunning.Operation

  rpc :GetServiceProjectAttachment,
      Google.Cloud.Apphub.V1.GetServiceProjectAttachmentRequest,
      Google.Cloud.Apphub.V1.ServiceProjectAttachment

  rpc :DeleteServiceProjectAttachment,
      Google.Cloud.Apphub.V1.DeleteServiceProjectAttachmentRequest,
      Google.Longrunning.Operation

  rpc :DetachServiceProjectAttachment,
      Google.Cloud.Apphub.V1.DetachServiceProjectAttachmentRequest,
      Google.Cloud.Apphub.V1.DetachServiceProjectAttachmentResponse

  rpc :ListDiscoveredServices,
      Google.Cloud.Apphub.V1.ListDiscoveredServicesRequest,
      Google.Cloud.Apphub.V1.ListDiscoveredServicesResponse

  rpc :GetDiscoveredService,
      Google.Cloud.Apphub.V1.GetDiscoveredServiceRequest,
      Google.Cloud.Apphub.V1.DiscoveredService

  rpc :ListServices,
      Google.Cloud.Apphub.V1.ListServicesRequest,
      Google.Cloud.Apphub.V1.ListServicesResponse

  rpc :CreateService, Google.Cloud.Apphub.V1.CreateServiceRequest, Google.Longrunning.Operation

  rpc :GetService, Google.Cloud.Apphub.V1.GetServiceRequest, Google.Cloud.Apphub.V1.Service

  rpc :UpdateService, Google.Cloud.Apphub.V1.UpdateServiceRequest, Google.Longrunning.Operation

  rpc :DeleteService, Google.Cloud.Apphub.V1.DeleteServiceRequest, Google.Longrunning.Operation

  rpc :ListDiscoveredWorkloads,
      Google.Cloud.Apphub.V1.ListDiscoveredWorkloadsRequest,
      Google.Cloud.Apphub.V1.ListDiscoveredWorkloadsResponse

  rpc :GetDiscoveredWorkload,
      Google.Cloud.Apphub.V1.GetDiscoveredWorkloadRequest,
      Google.Cloud.Apphub.V1.DiscoveredWorkload

  rpc :ListWorkloads,
      Google.Cloud.Apphub.V1.ListWorkloadsRequest,
      Google.Cloud.Apphub.V1.ListWorkloadsResponse

  rpc :CreateWorkload, Google.Cloud.Apphub.V1.CreateWorkloadRequest, Google.Longrunning.Operation

  rpc :GetWorkload, Google.Cloud.Apphub.V1.GetWorkloadRequest, Google.Cloud.Apphub.V1.Workload

  rpc :UpdateWorkload, Google.Cloud.Apphub.V1.UpdateWorkloadRequest, Google.Longrunning.Operation

  rpc :DeleteWorkload, Google.Cloud.Apphub.V1.DeleteWorkloadRequest, Google.Longrunning.Operation

  rpc :ListApplications,
      Google.Cloud.Apphub.V1.ListApplicationsRequest,
      Google.Cloud.Apphub.V1.ListApplicationsResponse

  rpc :CreateApplication,
      Google.Cloud.Apphub.V1.CreateApplicationRequest,
      Google.Longrunning.Operation

  rpc :GetApplication,
      Google.Cloud.Apphub.V1.GetApplicationRequest,
      Google.Cloud.Apphub.V1.Application

  rpc :UpdateApplication,
      Google.Cloud.Apphub.V1.UpdateApplicationRequest,
      Google.Longrunning.Operation

  rpc :DeleteApplication,
      Google.Cloud.Apphub.V1.DeleteApplicationRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Apphub.V1.AppHub.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apphub.V1.AppHub.Service
end