defmodule Google.Cloud.Eventarc.V1.GetTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListTriggersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Eventarc.V1.ListTriggersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :triggers, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Trigger
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :trigger, 2, type: Google.Cloud.Eventarc.V1.Trigger, deprecated: false
  field :trigger_id, 3, type: :string, json_name: "triggerId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdateTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :trigger, 1, type: Google.Cloud.Eventarc.V1.Trigger
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeleteTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GetChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListChannelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Eventarc.V1.ListChannelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channels, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Channel
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :channel, 2, type: Google.Cloud.Eventarc.V1.Channel, deprecated: false
  field :channel_id, 3, type: :string, json_name: "channelId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdateChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel, 1, type: Google.Cloud.Eventarc.V1.Channel
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeleteChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GetProviderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListProvidersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Eventarc.V1.ListProvidersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :providers, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Provider
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.GetChannelConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListChannelConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Eventarc.V1.ListChannelConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel_connections, 1,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.ChannelConnection,
    json_name: "channelConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateChannelConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :channel_connection, 2,
    type: Google.Cloud.Eventarc.V1.ChannelConnection,
    json_name: "channelConnection",
    deprecated: false

  field :channel_connection_id, 3,
    type: :string,
    json_name: "channelConnectionId",
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeleteChannelConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdateGoogleChannelConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :google_channel_config, 1,
    type: Google.Cloud.Eventarc.V1.GoogleChannelConfig,
    json_name: "googleChannelConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Eventarc.V1.GetGoogleChannelConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GetMessageBusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListMessageBusesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListMessageBusesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_buses, 1,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.MessageBus,
    json_name: "messageBuses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.ListMessageBusEnrollmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListMessageBusEnrollmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enrollments, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateMessageBusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :message_bus, 2,
    type: Google.Cloud.Eventarc.V1.MessageBus,
    json_name: "messageBus",
    deprecated: false

  field :message_bus_id, 3, type: :string, json_name: "messageBusId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdateMessageBusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_bus, 1,
    type: Google.Cloud.Eventarc.V1.MessageBus,
    json_name: "messageBus",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeleteMessageBusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GetEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListEnrollmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListEnrollmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enrollments, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Enrollment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :enrollment, 2, type: Google.Cloud.Eventarc.V1.Enrollment, deprecated: false
  field :enrollment_id, 3, type: :string, json_name: "enrollmentId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdateEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enrollment, 1, type: Google.Cloud.Eventarc.V1.Enrollment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeleteEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GetPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListPipelinesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListPipelinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pipelines, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Pipeline
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreatePipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :pipeline, 2, type: Google.Cloud.Eventarc.V1.Pipeline, deprecated: false
  field :pipeline_id, 3, type: :string, json_name: "pipelineId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdatePipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pipeline, 1, type: Google.Cloud.Eventarc.V1.Pipeline, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeletePipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GetGoogleApiSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListGoogleApiSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.ListGoogleApiSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :google_api_sources, 1,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.GoogleApiSource,
    json_name: "googleApiSources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateGoogleApiSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :google_api_source, 2,
    type: Google.Cloud.Eventarc.V1.GoogleApiSource,
    json_name: "googleApiSource",
    deprecated: false

  field :google_api_source_id, 3, type: :string, json_name: "googleApiSourceId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.UpdateGoogleApiSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :google_api_source, 1,
    type: Google.Cloud.Eventarc.V1.GoogleApiSource,
    json_name: "googleApiSource",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.DeleteGoogleApiSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Cloud.Eventarc.V1.Eventarc.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.eventarc.v1.Eventarc", protoc_gen_elixir_version: "0.15.0"

  rpc :GetTrigger, Google.Cloud.Eventarc.V1.GetTriggerRequest, Google.Cloud.Eventarc.V1.Trigger

  rpc :ListTriggers,
      Google.Cloud.Eventarc.V1.ListTriggersRequest,
      Google.Cloud.Eventarc.V1.ListTriggersResponse

  rpc :CreateTrigger, Google.Cloud.Eventarc.V1.CreateTriggerRequest, Google.Longrunning.Operation

  rpc :UpdateTrigger, Google.Cloud.Eventarc.V1.UpdateTriggerRequest, Google.Longrunning.Operation

  rpc :DeleteTrigger, Google.Cloud.Eventarc.V1.DeleteTriggerRequest, Google.Longrunning.Operation

  rpc :GetChannel, Google.Cloud.Eventarc.V1.GetChannelRequest, Google.Cloud.Eventarc.V1.Channel

  rpc :ListChannels,
      Google.Cloud.Eventarc.V1.ListChannelsRequest,
      Google.Cloud.Eventarc.V1.ListChannelsResponse

  rpc :CreateChannel, Google.Cloud.Eventarc.V1.CreateChannelRequest, Google.Longrunning.Operation

  rpc :UpdateChannel, Google.Cloud.Eventarc.V1.UpdateChannelRequest, Google.Longrunning.Operation

  rpc :DeleteChannel, Google.Cloud.Eventarc.V1.DeleteChannelRequest, Google.Longrunning.Operation

  rpc :GetProvider, Google.Cloud.Eventarc.V1.GetProviderRequest, Google.Cloud.Eventarc.V1.Provider

  rpc :ListProviders,
      Google.Cloud.Eventarc.V1.ListProvidersRequest,
      Google.Cloud.Eventarc.V1.ListProvidersResponse

  rpc :GetChannelConnection,
      Google.Cloud.Eventarc.V1.GetChannelConnectionRequest,
      Google.Cloud.Eventarc.V1.ChannelConnection

  rpc :ListChannelConnections,
      Google.Cloud.Eventarc.V1.ListChannelConnectionsRequest,
      Google.Cloud.Eventarc.V1.ListChannelConnectionsResponse

  rpc :CreateChannelConnection,
      Google.Cloud.Eventarc.V1.CreateChannelConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteChannelConnection,
      Google.Cloud.Eventarc.V1.DeleteChannelConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetGoogleChannelConfig,
      Google.Cloud.Eventarc.V1.GetGoogleChannelConfigRequest,
      Google.Cloud.Eventarc.V1.GoogleChannelConfig

  rpc :UpdateGoogleChannelConfig,
      Google.Cloud.Eventarc.V1.UpdateGoogleChannelConfigRequest,
      Google.Cloud.Eventarc.V1.GoogleChannelConfig

  rpc :GetMessageBus,
      Google.Cloud.Eventarc.V1.GetMessageBusRequest,
      Google.Cloud.Eventarc.V1.MessageBus

  rpc :ListMessageBuses,
      Google.Cloud.Eventarc.V1.ListMessageBusesRequest,
      Google.Cloud.Eventarc.V1.ListMessageBusesResponse

  rpc :ListMessageBusEnrollments,
      Google.Cloud.Eventarc.V1.ListMessageBusEnrollmentsRequest,
      Google.Cloud.Eventarc.V1.ListMessageBusEnrollmentsResponse

  rpc :CreateMessageBus,
      Google.Cloud.Eventarc.V1.CreateMessageBusRequest,
      Google.Longrunning.Operation

  rpc :UpdateMessageBus,
      Google.Cloud.Eventarc.V1.UpdateMessageBusRequest,
      Google.Longrunning.Operation

  rpc :DeleteMessageBus,
      Google.Cloud.Eventarc.V1.DeleteMessageBusRequest,
      Google.Longrunning.Operation

  rpc :GetEnrollment,
      Google.Cloud.Eventarc.V1.GetEnrollmentRequest,
      Google.Cloud.Eventarc.V1.Enrollment

  rpc :ListEnrollments,
      Google.Cloud.Eventarc.V1.ListEnrollmentsRequest,
      Google.Cloud.Eventarc.V1.ListEnrollmentsResponse

  rpc :CreateEnrollment,
      Google.Cloud.Eventarc.V1.CreateEnrollmentRequest,
      Google.Longrunning.Operation

  rpc :UpdateEnrollment,
      Google.Cloud.Eventarc.V1.UpdateEnrollmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnrollment,
      Google.Cloud.Eventarc.V1.DeleteEnrollmentRequest,
      Google.Longrunning.Operation

  rpc :GetPipeline, Google.Cloud.Eventarc.V1.GetPipelineRequest, Google.Cloud.Eventarc.V1.Pipeline

  rpc :ListPipelines,
      Google.Cloud.Eventarc.V1.ListPipelinesRequest,
      Google.Cloud.Eventarc.V1.ListPipelinesResponse

  rpc :CreatePipeline,
      Google.Cloud.Eventarc.V1.CreatePipelineRequest,
      Google.Longrunning.Operation

  rpc :UpdatePipeline,
      Google.Cloud.Eventarc.V1.UpdatePipelineRequest,
      Google.Longrunning.Operation

  rpc :DeletePipeline,
      Google.Cloud.Eventarc.V1.DeletePipelineRequest,
      Google.Longrunning.Operation

  rpc :GetGoogleApiSource,
      Google.Cloud.Eventarc.V1.GetGoogleApiSourceRequest,
      Google.Cloud.Eventarc.V1.GoogleApiSource

  rpc :ListGoogleApiSources,
      Google.Cloud.Eventarc.V1.ListGoogleApiSourcesRequest,
      Google.Cloud.Eventarc.V1.ListGoogleApiSourcesResponse

  rpc :CreateGoogleApiSource,
      Google.Cloud.Eventarc.V1.CreateGoogleApiSourceRequest,
      Google.Longrunning.Operation

  rpc :UpdateGoogleApiSource,
      Google.Cloud.Eventarc.V1.UpdateGoogleApiSourceRequest,
      Google.Longrunning.Operation

  rpc :DeleteGoogleApiSource,
      Google.Cloud.Eventarc.V1.DeleteGoogleApiSourceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Eventarc.V1.Eventarc.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Eventarc.V1.Eventarc.Service
end
