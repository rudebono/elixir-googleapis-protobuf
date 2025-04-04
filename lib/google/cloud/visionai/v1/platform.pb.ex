defmodule Google.Cloud.Visionai.V1.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :IMAGE_CLASSIFICATION, 1
  field :OBJECT_DETECTION, 2
  field :VIDEO_CLASSIFICATION, 3
  field :VIDEO_OBJECT_TRACKING, 4
  field :VIDEO_ACTION_RECOGNITION, 5
  field :OCCUPANCY_COUNTING, 6
  field :PERSON_BLUR, 7
  field :VERTEX_CUSTOM, 8
  field :PRODUCT_RECOGNIZER, 9
  field :TAG_RECOGNIZER, 10
  field :SYNTH_ID, 15
end

defmodule Google.Cloud.Visionai.V1.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :NVIDIA_TESLA_K80, 1
  field :NVIDIA_TESLA_P100, 2
  field :NVIDIA_TESLA_V100, 3
  field :NVIDIA_TESLA_P4, 4
  field :NVIDIA_TESLA_T4, 5
  field :NVIDIA_TESLA_A100, 8
  field :TPU_V2, 6
  field :TPU_V3, 7
end

defmodule Google.Cloud.Visionai.V1.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :VIDEO, 1
  field :IMAGE, 3
  field :PROTO, 2
  field :PLACEHOLDER, 4
end

defmodule Google.Cloud.Visionai.V1.Application.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATED, 1
  field :DEPLOYING, 2
  field :DEPLOYED, 3
  field :UNDEPLOYING, 4
  field :DELETED, 5
  field :ERROR, 6
  field :CREATING, 7
  field :UPDATING, 8
  field :DELETING, 9
  field :FIXING, 10
end

defmodule Google.Cloud.Visionai.V1.Application.BillingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BILLING_MODE_UNSPECIFIED, 0
  field :PAYG, 1
  field :MONTHLY, 2
end

defmodule Google.Cloud.Visionai.V1.Instance.InstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INSTANCE_TYPE_UNSPECIFIED, 0
  field :STREAMING_PREDICTION, 1
  field :BATCH_PREDICTION, 2
  field :ONLINE_PREDICTION, 3
end

defmodule Google.Cloud.Visionai.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :DEPLOYING, 3
  field :DEPLOYED, 4
  field :UNDEPLOYING, 5
  field :DELETED, 6
  field :ERROR, 7
  field :UPDATING, 8
  field :DELETING, 9
  field :FIXING, 10
  field :FINISHED, 11
end

defmodule Google.Cloud.Visionai.V1.Processor.ProcessorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PROCESSOR_TYPE_UNSPECIFIED, 0
  field :PRETRAINED, 1
  field :CUSTOM, 2
  field :CONNECTOR, 3
end

defmodule Google.Cloud.Visionai.V1.Processor.ProcessorState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PROCESSOR_STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :VERTEX_AUTOML, 1
  field :VERTEX_CUSTOM, 2
  field :PRODUCT_RECOGNIZER, 3
end

defmodule Google.Cloud.Visionai.V1.PersonBlurConfig.PersonBlurType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERSON_BLUR_TYPE_UNSPECIFIED, 0
  field :FULL_OCCULUSION, 1
  field :BLUR_FILTER, 2
end

defmodule Google.Cloud.Visionai.V1.TagParsingConfig.EntityParsingConfig.EntityMatchingStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENTITY_MATCHING_STRATEGY_UNSPECIFIED, 0
  field :MULTI_LINE_MATCHING, 1
  field :MAX_OVERLAP_AREA, 2
end

defmodule Google.Cloud.Visionai.V1.DeleteApplicationInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.CreateApplicationInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.UpdateApplicationInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.CreateApplicationInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_instances, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ApplicationInstance,
    json_name: "applicationInstances",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteApplicationInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :instance_ids, 2,
    repeated: true,
    type: :string,
    json_name: "instanceIds",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeployApplicationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.UndeployApplicationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.RemoveApplicationStreamInputResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.AddApplicationStreamInputResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.UpdateApplicationStreamInputResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.ListApplicationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1.ListApplicationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :applications, 1, repeated: true, type: Google.Cloud.Visionai.V1.Application
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.GetApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :application_id, 2, type: :string, json_name: "applicationId", deprecated: false
  field :application, 3, type: Google.Cloud.Visionai.V1.Application, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :application, 2, type: Google.Cloud.Visionai.V1.Application, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeployApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :enable_monitoring, 4, type: :bool, json_name: "enableMonitoring", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UndeployApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ApplicationStreamInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stream_with_annotation, 1,
    type: Google.Cloud.Visionai.V1.StreamWithAnnotation,
    json_name: "streamWithAnnotation"
end

defmodule Google.Cloud.Visionai.V1.AddApplicationStreamInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_stream_inputs, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ApplicationStreamInput,
    json_name: "applicationStreamInputs"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateApplicationStreamInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_stream_inputs, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ApplicationStreamInput,
    json_name: "applicationStreamInputs"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Visionai.V1.RemoveApplicationStreamInputRequest.TargetStreamInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stream, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.RemoveApplicationStreamInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :target_stream_inputs, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.RemoveApplicationStreamInputRequest.TargetStreamInput,
    json_name: "targetStreamInputs"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Visionai.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListDraftsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1.ListDraftsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :drafts, 1, repeated: true, type: Google.Cloud.Visionai.V1.Draft
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.GetDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :draft_id, 2, type: :string, json_name: "draftId", deprecated: false
  field :draft, 3, type: Google.Cloud.Visionai.V1.Draft, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :draft, 2, type: Google.Cloud.Visionai.V1.Draft, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Visionai.V1.UpdateApplicationInstancesRequest.UpdateApplicationInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Visionai.V1.Instance, deprecated: false
  field :instance_id, 3, type: :string, json_name: "instanceId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateApplicationInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_instances, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.UpdateApplicationInstancesRequest.UpdateApplicationInstance,
    json_name: "applicationInstances"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Visionai.V1.DeleteDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListProcessorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1.ListProcessorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :processors, 1, repeated: true, type: Google.Cloud.Visionai.V1.Processor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.ListPrebuiltProcessorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListPrebuiltProcessorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :processors, 1, repeated: true, type: Google.Cloud.Visionai.V1.Processor
end

defmodule Google.Cloud.Visionai.V1.GetProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :processor_id, 2, type: :string, json_name: "processorId", deprecated: false
  field :processor, 3, type: Google.Cloud.Visionai.V1.Processor, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :processor, 2, type: Google.Cloud.Visionai.V1.Processor, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.Application.ApplicationRuntimeInfo.GlobalOutputResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output_resource, 1, type: :string, json_name: "outputResource"
  field :producer_node, 2, type: :string, json_name: "producerNode"
  field :key, 3, type: :string
end

defmodule Google.Cloud.Visionai.V1.Application.ApplicationRuntimeInfo.MonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Visionai.V1.Application.ApplicationRuntimeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :deploy_time, 1, type: Google.Protobuf.Timestamp, json_name: "deployTime"

  field :global_output_resources, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Application.ApplicationRuntimeInfo.GlobalOutputResource,
    json_name: "globalOutputResources"

  field :monitoring_config, 4,
    type: Google.Cloud.Visionai.V1.Application.ApplicationRuntimeInfo.MonitoringConfig,
    json_name: "monitoringConfig"
end

defmodule Google.Cloud.Visionai.V1.Application.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Application do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Application.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 6, type: :string

  field :application_configs, 7,
    type: Google.Cloud.Visionai.V1.ApplicationConfigs,
    json_name: "applicationConfigs"

  field :runtime_info, 8,
    type: Google.Cloud.Visionai.V1.Application.ApplicationRuntimeInfo,
    json_name: "runtimeInfo",
    deprecated: false

  field :state, 9, type: Google.Cloud.Visionai.V1.Application.State, enum: true, deprecated: false

  field :billing_mode, 12,
    type: Google.Cloud.Visionai.V1.Application.BillingMode,
    json_name: "billingMode",
    enum: true
end

defmodule Google.Cloud.Visionai.V1.ApplicationConfigs.EventDeliveryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :channel, 1, type: :string

  field :minimal_delivery_interval, 2,
    type: Google.Protobuf.Duration,
    json_name: "minimalDeliveryInterval"
end

defmodule Google.Cloud.Visionai.V1.ApplicationConfigs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :nodes, 1, repeated: true, type: Google.Cloud.Visionai.V1.Node

  field :event_delivery_config, 3,
    type: Google.Cloud.Visionai.V1.ApplicationConfigs.EventDeliveryConfig,
    json_name: "eventDeliveryConfig"
end

defmodule Google.Cloud.Visionai.V1.Node.InputEdge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent_node, 1, type: :string, json_name: "parentNode"
  field :parent_output_channel, 2, type: :string, json_name: "parentOutputChannel"
  field :connected_input_channel, 3, type: :string, json_name: "connectedInputChannel"
end

defmodule Google.Cloud.Visionai.V1.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :stream_output_config, 0

  field :output_all_output_channels_to_stream, 6,
    type: :bool,
    json_name: "outputAllOutputChannelsToStream",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :node_config, 3, type: Google.Cloud.Visionai.V1.ProcessorConfig, json_name: "nodeConfig"
  field :processor, 4, type: :string
  field :parents, 5, repeated: true, type: Google.Cloud.Visionai.V1.Node.InputEdge
end

defmodule Google.Cloud.Visionai.V1.Draft.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Draft do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 3, repeated: true, type: Google.Cloud.Visionai.V1.Draft.LabelsEntry, map: true
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :description, 5, type: :string

  field :draft_application_configs, 6,
    type: Google.Cloud.Visionai.V1.ApplicationConfigs,
    json_name: "draftApplicationConfigs"
end

defmodule Google.Cloud.Visionai.V1.Instance.InputResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :input_resource_information, 0

  field :input_resource, 1, type: :string, json_name: "inputResource", oneof: 0

  field :annotated_stream, 4,
    type: Google.Cloud.Visionai.V1.StreamWithAnnotation,
    json_name: "annotatedStream",
    oneof: 0,
    deprecated: true

  field :data_type, 6, type: Google.Cloud.Visionai.V1.DataType, json_name: "dataType", enum: true
  field :consumer_node, 2, type: :string, json_name: "consumerNode"
  field :input_resource_binding, 3, type: :string, json_name: "inputResourceBinding"
  field :annotations, 5, type: Google.Cloud.Visionai.V1.ResourceAnnotations
end

defmodule Google.Cloud.Visionai.V1.Instance.OutputResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output_resource, 1, type: :string, json_name: "outputResource"
  field :producer_node, 2, type: :string, json_name: "producerNode"
  field :output_resource_binding, 4, type: :string, json_name: "outputResourceBinding"
  field :is_temporary, 3, type: :bool, json_name: "isTemporary", deprecated: false
  field :autogen, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 3, repeated: true, type: Google.Cloud.Visionai.V1.Instance.LabelsEntry, map: true
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :description, 5, type: :string

  field :instance_type, 10,
    type: Google.Cloud.Visionai.V1.Instance.InstanceType,
    json_name: "instanceType",
    enum: true

  field :input_resources, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Instance.InputResource,
    json_name: "inputResources"

  field :output_resources, 7,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Instance.OutputResource,
    json_name: "outputResources"

  field :state, 9, type: Google.Cloud.Visionai.V1.Instance.State, enum: true
end

defmodule Google.Cloud.Visionai.V1.ApplicationInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 2, type: Google.Cloud.Visionai.V1.Instance, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.Processor.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Processor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Processor.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 10, type: :string

  field :processor_type, 6,
    type: Google.Cloud.Visionai.V1.Processor.ProcessorType,
    json_name: "processorType",
    enum: true,
    deprecated: false

  field :model_type, 13,
    type: Google.Cloud.Visionai.V1.ModelType,
    json_name: "modelType",
    enum: true

  field :custom_processor_source_info, 7,
    type: Google.Cloud.Visionai.V1.CustomProcessorSourceInfo,
    json_name: "customProcessorSourceInfo"

  field :state, 8,
    type: Google.Cloud.Visionai.V1.Processor.ProcessorState,
    enum: true,
    deprecated: false

  field :processor_io_spec, 11,
    type: Google.Cloud.Visionai.V1.ProcessorIOSpec,
    json_name: "processorIoSpec",
    deprecated: false

  field :configuration_typeurl, 14,
    type: :string,
    json_name: "configurationTypeurl",
    deprecated: false

  field :supported_annotation_types, 15,
    repeated: true,
    type: Google.Cloud.Visionai.V1.StreamAnnotationType,
    json_name: "supportedAnnotationTypes",
    enum: true,
    deprecated: false

  field :supports_post_processing, 17, type: :bool, json_name: "supportsPostProcessing"

  field :supported_instance_types, 18,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Instance.InstanceType,
    json_name: "supportedInstanceTypes",
    enum: true
end

defmodule Google.Cloud.Visionai.V1.ProcessorIOSpec.GraphInputChannelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: Google.Cloud.Visionai.V1.DataType, json_name: "dataType", enum: true

  field :accepted_data_type_uris, 5,
    repeated: true,
    type: :string,
    json_name: "acceptedDataTypeUris"

  field :required, 3, type: :bool
  field :max_connection_allowed, 4, type: :int64, json_name: "maxConnectionAllowed"
end

defmodule Google.Cloud.Visionai.V1.ProcessorIOSpec.GraphOutputChannelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: Google.Cloud.Visionai.V1.DataType, json_name: "dataType", enum: true
  field :data_type_uri, 3, type: :string, json_name: "dataTypeUri"
end

defmodule Google.Cloud.Visionai.V1.ProcessorIOSpec.InstanceResourceInputBindingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :resource_type, 0

  field :config_type_uri, 2, type: :string, json_name: "configTypeUri", oneof: 0
  field :resource_type_uri, 3, type: :string, json_name: "resourceTypeUri", oneof: 0
  field :name, 1, type: :string
end

defmodule Google.Cloud.Visionai.V1.ProcessorIOSpec.InstanceResourceOutputBindingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :resource_type_uri, 2, type: :string, json_name: "resourceTypeUri"
  field :explicit, 3, type: :bool
end

defmodule Google.Cloud.Visionai.V1.ProcessorIOSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :graph_input_channel_specs, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ProcessorIOSpec.GraphInputChannelSpec,
    json_name: "graphInputChannelSpecs"

  field :graph_output_channel_specs, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ProcessorIOSpec.GraphOutputChannelSpec,
    json_name: "graphOutputChannelSpecs"

  field :instance_resource_input_binding_specs, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ProcessorIOSpec.InstanceResourceInputBindingSpec,
    json_name: "instanceResourceInputBindingSpecs"

  field :instance_resource_output_binding_specs, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ProcessorIOSpec.InstanceResourceOutputBindingSpec,
    json_name: "instanceResourceOutputBindingSpecs"
end

defmodule Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.ProductRecognizerArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retail_product_recognition_index, 1,
    type: :string,
    json_name: "retailProductRecognitionIndex",
    deprecated: false

  field :vertex_model, 2, type: :string, json_name: "vertexModel", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.ModelSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances_schema, 1,
    type: Google.Cloud.Visionai.V1.GcsSource,
    json_name: "instancesSchema"

  field :parameters_schema, 2,
    type: Google.Cloud.Visionai.V1.GcsSource,
    json_name: "parametersSchema"

  field :predictions_schema, 3,
    type: Google.Cloud.Visionai.V1.GcsSource,
    json_name: "predictionsSchema"
end

defmodule Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.AdditionalInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.CustomProcessorSourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :artifact_path, 0

  field :vertex_model, 2, type: :string, json_name: "vertexModel", oneof: 0

  field :product_recognizer_artifact, 3,
    type: Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.ProductRecognizerArtifact,
    json_name: "productRecognizerArtifact",
    oneof: 0

  field :source_type, 1,
    type: Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.SourceType,
    json_name: "sourceType",
    enum: true

  field :additional_info, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.AdditionalInfoEntry,
    json_name: "additionalInfo",
    map: true,
    deprecated: false

  field :model_schema, 5,
    type: Google.Cloud.Visionai.V1.CustomProcessorSourceInfo.ModelSchema,
    json_name: "modelSchema"
end

defmodule Google.Cloud.Visionai.V1.ProcessorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :processor_config, 0

  field :video_stream_input_config, 9,
    type: Google.Cloud.Visionai.V1.VideoStreamInputConfig,
    json_name: "videoStreamInputConfig",
    oneof: 0

  field :ai_enabled_devices_input_config, 20,
    type: Google.Cloud.Visionai.V1.AIEnabledDevicesInputConfig,
    json_name: "aiEnabledDevicesInputConfig",
    oneof: 0

  field :media_warehouse_config, 10,
    type: Google.Cloud.Visionai.V1.MediaWarehouseConfig,
    json_name: "mediaWarehouseConfig",
    oneof: 0

  field :person_blur_config, 11,
    type: Google.Cloud.Visionai.V1.PersonBlurConfig,
    json_name: "personBlurConfig",
    oneof: 0

  field :occupancy_count_config, 12,
    type: Google.Cloud.Visionai.V1.OccupancyCountConfig,
    json_name: "occupancyCountConfig",
    oneof: 0

  field :person_vehicle_detection_config, 15,
    type: Google.Cloud.Visionai.V1.PersonVehicleDetectionConfig,
    json_name: "personVehicleDetectionConfig",
    oneof: 0

  field :vertex_automl_vision_config, 13,
    type: Google.Cloud.Visionai.V1.VertexAutoMLVisionConfig,
    json_name: "vertexAutomlVisionConfig",
    oneof: 0

  field :vertex_automl_video_config, 14,
    type: Google.Cloud.Visionai.V1.VertexAutoMLVideoConfig,
    json_name: "vertexAutomlVideoConfig",
    oneof: 0

  field :vertex_custom_config, 17,
    type: Google.Cloud.Visionai.V1.VertexCustomConfig,
    json_name: "vertexCustomConfig",
    oneof: 0

  field :general_object_detection_config, 18,
    type: Google.Cloud.Visionai.V1.GeneralObjectDetectionConfig,
    json_name: "generalObjectDetectionConfig",
    oneof: 0

  field :big_query_config, 19,
    type: Google.Cloud.Visionai.V1.BigQueryConfig,
    json_name: "bigQueryConfig",
    oneof: 0

  field :gcs_output_config, 27,
    type: Google.Cloud.Visionai.V1.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0

  field :product_recognizer_config, 21,
    type: Google.Cloud.Visionai.V1.ProductRecognizerConfig,
    json_name: "productRecognizerConfig",
    oneof: 0

  field :personal_protective_equipment_detection_config, 22,
    type: Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionConfig,
    json_name: "personalProtectiveEquipmentDetectionConfig",
    oneof: 0

  field :tag_recognizer_config, 25,
    type: Google.Cloud.Visionai.V1.TagRecognizerConfig,
    json_name: "tagRecognizerConfig",
    oneof: 0

  field :universal_input_config, 28,
    type: Google.Cloud.Visionai.V1.UniversalInputConfig,
    json_name: "universalInputConfig",
    oneof: 0

  field :experimental_config, 26, type: Google.Protobuf.Struct, json_name: "experimentalConfig"
end

defmodule Google.Cloud.Visionai.V1.StreamWithAnnotation.NodeAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :node, 1, type: :string
  field :annotations, 2, repeated: true, type: Google.Cloud.Visionai.V1.StreamAnnotation
end

defmodule Google.Cloud.Visionai.V1.StreamWithAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stream, 1, type: :string, deprecated: false

  field :application_annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.StreamAnnotation,
    json_name: "applicationAnnotations"

  field :node_annotations, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.StreamWithAnnotation.NodeAnnotation,
    json_name: "nodeAnnotations"
end

defmodule Google.Cloud.Visionai.V1.ApplicationNodeAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :node, 1, type: :string
  field :annotations, 2, repeated: true, type: Google.Cloud.Visionai.V1.StreamAnnotation
end

defmodule Google.Cloud.Visionai.V1.ResourceAnnotations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :application_annotations, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.StreamAnnotation,
    json_name: "applicationAnnotations"

  field :node_annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ApplicationNodeAnnotation,
    json_name: "nodeAnnotations"
end

defmodule Google.Cloud.Visionai.V1.VideoStreamInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :streams, 1, repeated: true, type: :string, deprecated: true

  field :streams_with_annotation, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.StreamWithAnnotation,
    json_name: "streamsWithAnnotation",
    deprecated: true
end

defmodule Google.Cloud.Visionai.V1.AIEnabledDevicesInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.MediaWarehouseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :corpus, 1, type: :string
  field :region, 2, type: :string, deprecated: true
  field :ttl, 3, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Visionai.V1.PersonBlurConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :person_blur_type, 1,
    type: Google.Cloud.Visionai.V1.PersonBlurConfig.PersonBlurType,
    json_name: "personBlurType",
    enum: true

  field :faces_only, 2, type: :bool, json_name: "facesOnly"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_people_counting, 1, type: :bool, json_name: "enablePeopleCounting"
  field :enable_vehicle_counting, 2, type: :bool, json_name: "enableVehicleCounting"
  field :enable_dwelling_time_tracking, 3, type: :bool, json_name: "enableDwellingTimeTracking"
end

defmodule Google.Cloud.Visionai.V1.PersonVehicleDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_people_counting, 1, type: :bool, json_name: "enablePeopleCounting"
  field :enable_vehicle_counting, 2, type: :bool, json_name: "enableVehicleCounting"
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_face_coverage_detection, 1, type: :bool, json_name: "enableFaceCoverageDetection"
  field :enable_head_coverage_detection, 2, type: :bool, json_name: "enableHeadCoverageDetection"

  field :enable_hands_coverage_detection, 3,
    type: :bool,
    json_name: "enableHandsCoverageDetection"
end

defmodule Google.Cloud.Visionai.V1.GeneralObjectDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.BigQueryConfig.CloudFunctionMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.BigQueryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: :string

  field :cloud_function_mapping, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.BigQueryConfig.CloudFunctionMappingEntry,
    json_name: "cloudFunctionMapping",
    map: true

  field :create_default_table_if_not_exists, 3,
    type: :bool,
    json_name: "createDefaultTableIfNotExists"
end

defmodule Google.Cloud.Visionai.V1.VertexAutoMLVisionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
end

defmodule Google.Cloud.Visionai.V1.VertexAutoMLVideoConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :blocked_labels, 2, repeated: true, type: :string, json_name: "blockedLabels"
  field :max_predictions, 3, type: :int32, json_name: "maxPredictions"
  field :bounding_box_size_limit, 4, type: :float, json_name: "boundingBoxSizeLimit"
end

defmodule Google.Cloud.Visionai.V1.VertexCustomConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_prediction_fps, 1, type: :int32, json_name: "maxPredictionFps"

  field :dedicated_resources, 2,
    type: Google.Cloud.Visionai.V1.DedicatedResources,
    json_name: "dedicatedResources"

  field :post_processing_cloud_function, 3,
    type: :string,
    json_name: "postProcessingCloudFunction"

  field :attach_application_metadata, 4, type: :bool, json_name: "attachApplicationMetadata"

  field :dynamic_config_input_topic, 6,
    proto3_optional: true,
    type: :string,
    json_name: "dynamicConfigInputTopic",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.GcsOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gcs_path, 1, type: :string, json_name: "gcsPath"
end

defmodule Google.Cloud.Visionai.V1.UniversalInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.MachineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_type, 2,
    type: Google.Cloud.Visionai.V1.AcceleratorType,
    json_name: "acceleratorType",
    enum: true,
    deprecated: false

  field :accelerator_count, 3, type: :int32, json_name: "acceleratorCount"
end

defmodule Google.Cloud.Visionai.V1.AutoscalingMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
  field :target, 2, type: :int32
end

defmodule Google.Cloud.Visionai.V1.DedicatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Visionai.V1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :min_replica_count, 2, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount", deprecated: false

  field :autoscaling_metric_specs, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AutoscalingMetricSpec,
    json_name: "autoscalingMetricSpecs",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ProductRecognizerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retail_endpoint, 1, type: :string, json_name: "retailEndpoint"

  field :recognition_confidence_threshold, 2,
    type: :float,
    json_name: "recognitionConfidenceThreshold"
end

defmodule Google.Cloud.Visionai.V1.TagRecognizerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_detection_confidence_threshold, 1,
    type: :float,
    json_name: "entityDetectionConfidenceThreshold"

  field :tag_parsing_config, 2,
    type: Google.Cloud.Visionai.V1.TagParsingConfig,
    json_name: "tagParsingConfig"
end

defmodule Google.Cloud.Visionai.V1.TagParsingConfig.EntityParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_class, 1, type: :string, json_name: "entityClass", deprecated: false
  field :regex, 2, type: :string, deprecated: false

  field :entity_matching_strategy, 3,
    type: Google.Cloud.Visionai.V1.TagParsingConfig.EntityParsingConfig.EntityMatchingStrategy,
    json_name: "entityMatchingStrategy",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.TagParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_parsing_configs, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.TagParsingConfig.EntityParsingConfig,
    json_name: "entityParsingConfigs"
end

defmodule Google.Cloud.Visionai.V1.AppPlatform.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1.AppPlatform",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListApplications,
      Google.Cloud.Visionai.V1.ListApplicationsRequest,
      Google.Cloud.Visionai.V1.ListApplicationsResponse

  rpc :GetApplication,
      Google.Cloud.Visionai.V1.GetApplicationRequest,
      Google.Cloud.Visionai.V1.Application

  rpc :CreateApplication,
      Google.Cloud.Visionai.V1.CreateApplicationRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplication,
      Google.Cloud.Visionai.V1.UpdateApplicationRequest,
      Google.Longrunning.Operation

  rpc :DeleteApplication,
      Google.Cloud.Visionai.V1.DeleteApplicationRequest,
      Google.Longrunning.Operation

  rpc :DeployApplication,
      Google.Cloud.Visionai.V1.DeployApplicationRequest,
      Google.Longrunning.Operation

  rpc :UndeployApplication,
      Google.Cloud.Visionai.V1.UndeployApplicationRequest,
      Google.Longrunning.Operation

  rpc :AddApplicationStreamInput,
      Google.Cloud.Visionai.V1.AddApplicationStreamInputRequest,
      Google.Longrunning.Operation

  rpc :RemoveApplicationStreamInput,
      Google.Cloud.Visionai.V1.RemoveApplicationStreamInputRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplicationStreamInput,
      Google.Cloud.Visionai.V1.UpdateApplicationStreamInputRequest,
      Google.Longrunning.Operation

  rpc :ListInstances,
      Google.Cloud.Visionai.V1.ListInstancesRequest,
      Google.Cloud.Visionai.V1.ListInstancesResponse

  rpc :GetInstance, Google.Cloud.Visionai.V1.GetInstanceRequest, Google.Cloud.Visionai.V1.Instance

  rpc :CreateApplicationInstances,
      Google.Cloud.Visionai.V1.CreateApplicationInstancesRequest,
      Google.Longrunning.Operation

  rpc :DeleteApplicationInstances,
      Google.Cloud.Visionai.V1.DeleteApplicationInstancesRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplicationInstances,
      Google.Cloud.Visionai.V1.UpdateApplicationInstancesRequest,
      Google.Longrunning.Operation

  rpc :ListDrafts,
      Google.Cloud.Visionai.V1.ListDraftsRequest,
      Google.Cloud.Visionai.V1.ListDraftsResponse

  rpc :GetDraft, Google.Cloud.Visionai.V1.GetDraftRequest, Google.Cloud.Visionai.V1.Draft

  rpc :CreateDraft, Google.Cloud.Visionai.V1.CreateDraftRequest, Google.Longrunning.Operation

  rpc :UpdateDraft, Google.Cloud.Visionai.V1.UpdateDraftRequest, Google.Longrunning.Operation

  rpc :DeleteDraft, Google.Cloud.Visionai.V1.DeleteDraftRequest, Google.Longrunning.Operation

  rpc :ListProcessors,
      Google.Cloud.Visionai.V1.ListProcessorsRequest,
      Google.Cloud.Visionai.V1.ListProcessorsResponse

  rpc :ListPrebuiltProcessors,
      Google.Cloud.Visionai.V1.ListPrebuiltProcessorsRequest,
      Google.Cloud.Visionai.V1.ListPrebuiltProcessorsResponse

  rpc :GetProcessor,
      Google.Cloud.Visionai.V1.GetProcessorRequest,
      Google.Cloud.Visionai.V1.Processor

  rpc :CreateProcessor,
      Google.Cloud.Visionai.V1.CreateProcessorRequest,
      Google.Longrunning.Operation

  rpc :UpdateProcessor,
      Google.Cloud.Visionai.V1.UpdateProcessorRequest,
      Google.Longrunning.Operation

  rpc :DeleteProcessor,
      Google.Cloud.Visionai.V1.DeleteProcessorRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Visionai.V1.AppPlatform.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1.AppPlatform.Service
end
