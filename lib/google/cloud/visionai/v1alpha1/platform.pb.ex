defmodule Google.Cloud.Visionai.V1alpha1.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :IMAGE_CLASSIFICATION, 1
  field :OBJECT_DETECTION, 2
  field :VIDEO_CLASSIFICATION, 3
  field :VIDEO_OBJECT_TRACKING, 4
  field :VIDEO_ACTION_RECOGNITION, 5
  field :OCCUPANCY_COUNTING, 6
  field :PERSON_BLUR, 7
  field :VERTEX_CUSTOM, 8
end

defmodule Google.Cloud.Visionai.V1alpha1.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Visionai.V1alpha1.Application.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Visionai.V1alpha1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Visionai.V1alpha1.Processor.ProcessorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROCESSOR_TYPE_UNSPECIFIED, 0
  field :PRETRAINED, 1
  field :CUSTOM, 2
  field :CONNECTOR, 3
end

defmodule Google.Cloud.Visionai.V1alpha1.Processor.ProcessorState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROCESSOR_STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :VIDEO, 1
  field :PROTO, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :VERTEX_AUTOML, 1
  field :VERTEX_CUSTOM, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.PersonBlurConfig.PersonBlurType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PERSON_BLUR_TYPE_UNSPECIFIED, 0
  field :FULL_OCCULUSION, 1
  field :BLUR_FILTER, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteApplicationInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateApplicationInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateApplicationInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateApplicationInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_instances, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationInstance,
    json_name: "applicationInstances",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteApplicationInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :instance_ids, 2,
    repeated: true,
    type: :string,
    json_name: "instanceIds",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeployApplicationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.UndeployApplicationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.RemoveApplicationStreamInputResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.AddApplicationStreamInputResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateApplicationStreamInputResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.ListApplicationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListApplicationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :applications, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Application
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :application_id, 2, type: :string, json_name: "applicationId", deprecated: false
  field :application, 3, type: Google.Cloud.Visionai.V1alpha1.Application, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :application, 2, type: Google.Cloud.Visionai.V1alpha1.Application, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeployApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :enable_monitoring, 4, type: :bool, json_name: "enableMonitoring", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UndeployApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ApplicationStreamInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stream_with_annotation, 1,
    type: Google.Cloud.Visionai.V1alpha1.StreamWithAnnotation,
    json_name: "streamWithAnnotation"
end

defmodule Google.Cloud.Visionai.V1alpha1.AddApplicationStreamInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_stream_inputs, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationStreamInput,
    json_name: "applicationStreamInputs"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateApplicationStreamInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_stream_inputs, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationStreamInput,
    json_name: "applicationStreamInputs"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Visionai.V1alpha1.RemoveApplicationStreamInputRequest.TargetStreamInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stream, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.RemoveApplicationStreamInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :target_stream_inputs, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.RemoveApplicationStreamInputRequest.TargetStreamInput,
    json_name: "targetStreamInputs"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListDraftsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListDraftsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :drafts, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Draft
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :draft_id, 2, type: :string, json_name: "draftId", deprecated: false
  field :draft, 3, type: Google.Cloud.Visionai.V1alpha1.Draft, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :draft, 2, type: Google.Cloud.Visionai.V1alpha1.Draft, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateApplicationInstancesRequest.UpdateApplicationInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Visionai.V1alpha1.Instance, deprecated: false
  field :instance_id, 3, type: :string, json_name: "instanceId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateApplicationInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :application_instances, 2,
    repeated: true,
    type:
      Google.Cloud.Visionai.V1alpha1.UpdateApplicationInstancesRequest.UpdateApplicationInstance,
    json_name: "applicationInstances"

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListProcessorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListProcessorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processors, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Processor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.ListPrebuiltProcessorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListPrebuiltProcessorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processors, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Processor
end

defmodule Google.Cloud.Visionai.V1alpha1.GetProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :processor_id, 2, type: :string, json_name: "processorId", deprecated: false
  field :processor, 3, type: Google.Cloud.Visionai.V1alpha1.Processor, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :processor, 2, type: Google.Cloud.Visionai.V1alpha1.Processor, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.Application.ApplicationRuntimeInfo.GlobalOutputResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_resource, 1, type: :string, json_name: "outputResource"
  field :producer_node, 2, type: :string, json_name: "producerNode"
  field :key, 3, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Application.ApplicationRuntimeInfo.MonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Visionai.V1alpha1.Application.ApplicationRuntimeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deploy_time, 1, type: Google.Protobuf.Timestamp, json_name: "deployTime"

  field :global_output_resources, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Application.ApplicationRuntimeInfo.GlobalOutputResource,
    json_name: "globalOutputResources"

  field :monitoring_config, 4,
    type: Google.Cloud.Visionai.V1alpha1.Application.ApplicationRuntimeInfo.MonitoringConfig,
    json_name: "monitoringConfig"
end

defmodule Google.Cloud.Visionai.V1alpha1.Application.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Application do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Visionai.V1alpha1.Application.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 6, type: :string

  field :application_configs, 7,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationConfigs,
    json_name: "applicationConfigs"

  field :runtime_info, 8,
    type: Google.Cloud.Visionai.V1alpha1.Application.ApplicationRuntimeInfo,
    json_name: "runtimeInfo",
    deprecated: false

  field :state, 9,
    type: Google.Cloud.Visionai.V1alpha1.Application.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ApplicationConfigs.EventDeliveryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :channel, 1, type: :string

  field :minimal_delivery_interval, 2,
    type: Google.Protobuf.Duration,
    json_name: "minimalDeliveryInterval"
end

defmodule Google.Cloud.Visionai.V1alpha1.ApplicationConfigs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :nodes, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Node

  field :event_delivery_config, 3,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationConfigs.EventDeliveryConfig,
    json_name: "eventDeliveryConfig"
end

defmodule Google.Cloud.Visionai.V1alpha1.Node.InputEdge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent_node, 1, type: :string, json_name: "parentNode"
  field :parent_output_channel, 2, type: :string, json_name: "parentOutputChannel"
  field :connected_input_channel, 3, type: :string, json_name: "connectedInputChannel"
end

defmodule Google.Cloud.Visionai.V1alpha1.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :stream_output_config, 0

  field :output_all_output_channels_to_stream, 6,
    type: :bool,
    json_name: "outputAllOutputChannelsToStream",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :node_config, 3,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorConfig,
    json_name: "nodeConfig"

  field :processor, 4, type: :string
  field :parents, 5, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Node.InputEdge
end

defmodule Google.Cloud.Visionai.V1alpha1.Draft.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Draft do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Draft.LabelsEntry,
    map: true

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :description, 5, type: :string

  field :draft_application_configs, 6,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationConfigs,
    json_name: "draftApplicationConfigs"
end

defmodule Google.Cloud.Visionai.V1alpha1.Instance.InputResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :input_resource_information, 0

  field :input_resource, 1, type: :string, json_name: "inputResource", oneof: 0

  field :annotated_stream, 4,
    type: Google.Cloud.Visionai.V1alpha1.StreamWithAnnotation,
    json_name: "annotatedStream",
    oneof: 0,
    deprecated: true

  field :consumer_node, 2, type: :string, json_name: "consumerNode"
  field :input_resource_binding, 3, type: :string, json_name: "inputResourceBinding"
  field :annotations, 5, type: Google.Cloud.Visionai.V1alpha1.ResourceAnnotations
end

defmodule Google.Cloud.Visionai.V1alpha1.Instance.OutputResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_resource, 1, type: :string, json_name: "outputResource"
  field :producer_node, 2, type: :string, json_name: "producerNode"
  field :output_resource_binding, 4, type: :string, json_name: "outputResourceBinding"
  field :is_temporary, 3, type: :bool, json_name: "isTemporary", deprecated: false
  field :autogen, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Instance.LabelsEntry,
    map: true

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :description, 5, type: :string

  field :input_resources, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Instance.InputResource,
    json_name: "inputResources"

  field :output_resources, 7,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Instance.OutputResource,
    json_name: "outputResources"

  field :state, 9, type: Google.Cloud.Visionai.V1alpha1.Instance.State, enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.ApplicationInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 2, type: Google.Cloud.Visionai.V1alpha1.Instance, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.Processor.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Processor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Visionai.V1alpha1.Processor.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 10, type: :string

  field :processor_type, 6,
    type: Google.Cloud.Visionai.V1alpha1.Processor.ProcessorType,
    json_name: "processorType",
    enum: true,
    deprecated: false

  field :model_type, 13,
    type: Google.Cloud.Visionai.V1alpha1.ModelType,
    json_name: "modelType",
    enum: true

  field :custom_processor_source_info, 7,
    type: Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo,
    json_name: "customProcessorSourceInfo"

  field :state, 8,
    type: Google.Cloud.Visionai.V1alpha1.Processor.ProcessorState,
    enum: true,
    deprecated: false

  field :processor_io_spec, 11,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec,
    json_name: "processorIoSpec",
    deprecated: false

  field :configuration_typeurl, 14,
    type: :string,
    json_name: "configurationTypeurl",
    deprecated: false

  field :supported_annotation_types, 15,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.StreamAnnotationType,
    json_name: "supportedAnnotationTypes",
    enum: true,
    deprecated: false

  field :supports_post_processing, 17, type: :bool, json_name: "supportsPostProcessing"
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.GraphInputChannelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :data_type, 2,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.DataType,
    json_name: "dataType",
    enum: true

  field :accepted_data_type_uris, 5,
    repeated: true,
    type: :string,
    json_name: "acceptedDataTypeUris"

  field :required, 3, type: :bool
  field :max_connection_allowed, 4, type: :int64, json_name: "maxConnectionAllowed"
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.GraphOutputChannelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :data_type, 2,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.DataType,
    json_name: "dataType",
    enum: true

  field :data_type_uri, 3, type: :string, json_name: "dataTypeUri"
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.InstanceResourceInputBindingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :resource_type, 0

  field :config_type_uri, 2, type: :string, json_name: "configTypeUri", oneof: 0
  field :resource_type_uri, 3, type: :string, json_name: "resourceTypeUri", oneof: 0
  field :name, 1, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.InstanceResourceOutputBindingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :resource_type_uri, 2, type: :string, json_name: "resourceTypeUri"
  field :explicit, 3, type: :bool
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :graph_input_channel_specs, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.GraphInputChannelSpec,
    json_name: "graphInputChannelSpecs"

  field :graph_output_channel_specs, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.GraphOutputChannelSpec,
    json_name: "graphOutputChannelSpecs"

  field :instance_resource_input_binding_specs, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.InstanceResourceInputBindingSpec,
    json_name: "instanceResourceInputBindingSpecs"

  field :instance_resource_output_binding_specs, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ProcessorIOSpec.InstanceResourceOutputBindingSpec,
    json_name: "instanceResourceOutputBindingSpecs"
end

defmodule Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo.ModelSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances_schema, 1,
    type: Google.Cloud.Visionai.V1alpha1.GcsSource,
    json_name: "instancesSchema"

  field :parameters_schema, 2,
    type: Google.Cloud.Visionai.V1alpha1.GcsSource,
    json_name: "parametersSchema"

  field :predictions_schema, 3,
    type: Google.Cloud.Visionai.V1alpha1.GcsSource,
    json_name: "predictionsSchema"
end

defmodule Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo.AdditionalInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :artifact_path, 0

  field :vertex_model, 2, type: :string, json_name: "vertexModel", oneof: 0

  field :source_type, 1,
    type: Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo.SourceType,
    json_name: "sourceType",
    enum: true

  field :additional_info, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo.AdditionalInfoEntry,
    json_name: "additionalInfo",
    map: true,
    deprecated: false

  field :model_schema, 5,
    type: Google.Cloud.Visionai.V1alpha1.CustomProcessorSourceInfo.ModelSchema,
    json_name: "modelSchema"
end

defmodule Google.Cloud.Visionai.V1alpha1.ProcessorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :processor_config, 0

  field :video_stream_input_config, 9,
    type: Google.Cloud.Visionai.V1alpha1.VideoStreamInputConfig,
    json_name: "videoStreamInputConfig",
    oneof: 0

  field :ai_enabled_devices_input_config, 20,
    type: Google.Cloud.Visionai.V1alpha1.AIEnabledDevicesInputConfig,
    json_name: "aiEnabledDevicesInputConfig",
    oneof: 0

  field :media_warehouse_config, 10,
    type: Google.Cloud.Visionai.V1alpha1.MediaWarehouseConfig,
    json_name: "mediaWarehouseConfig",
    oneof: 0

  field :person_blur_config, 11,
    type: Google.Cloud.Visionai.V1alpha1.PersonBlurConfig,
    json_name: "personBlurConfig",
    oneof: 0

  field :occupancy_count_config, 12,
    type: Google.Cloud.Visionai.V1alpha1.OccupancyCountConfig,
    json_name: "occupancyCountConfig",
    oneof: 0

  field :person_vehicle_detection_config, 15,
    type: Google.Cloud.Visionai.V1alpha1.PersonVehicleDetectionConfig,
    json_name: "personVehicleDetectionConfig",
    oneof: 0

  field :vertex_automl_vision_config, 13,
    type: Google.Cloud.Visionai.V1alpha1.VertexAutoMLVisionConfig,
    json_name: "vertexAutomlVisionConfig",
    oneof: 0

  field :vertex_automl_video_config, 14,
    type: Google.Cloud.Visionai.V1alpha1.VertexAutoMLVideoConfig,
    json_name: "vertexAutomlVideoConfig",
    oneof: 0

  field :vertex_custom_config, 17,
    type: Google.Cloud.Visionai.V1alpha1.VertexCustomConfig,
    json_name: "vertexCustomConfig",
    oneof: 0

  field :general_object_detection_config, 18,
    type: Google.Cloud.Visionai.V1alpha1.GeneralObjectDetectionConfig,
    json_name: "generalObjectDetectionConfig",
    oneof: 0

  field :big_query_config, 19,
    type: Google.Cloud.Visionai.V1alpha1.BigQueryConfig,
    json_name: "bigQueryConfig",
    oneof: 0

  field :personal_protective_equipment_detection_config, 22,
    type: Google.Cloud.Visionai.V1alpha1.PersonalProtectiveEquipmentDetectionConfig,
    json_name: "personalProtectiveEquipmentDetectionConfig",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.StreamWithAnnotation.NodeAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node, 1, type: :string
  field :annotations, 2, repeated: true, type: Google.Cloud.Visionai.V1alpha1.StreamAnnotation
end

defmodule Google.Cloud.Visionai.V1alpha1.StreamWithAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stream, 1, type: :string, deprecated: false

  field :application_annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.StreamAnnotation,
    json_name: "applicationAnnotations"

  field :node_annotations, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.StreamWithAnnotation.NodeAnnotation,
    json_name: "nodeAnnotations"
end

defmodule Google.Cloud.Visionai.V1alpha1.ApplicationNodeAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node, 1, type: :string
  field :annotations, 2, repeated: true, type: Google.Cloud.Visionai.V1alpha1.StreamAnnotation
end

defmodule Google.Cloud.Visionai.V1alpha1.ResourceAnnotations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :application_annotations, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.StreamAnnotation,
    json_name: "applicationAnnotations"

  field :node_annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ApplicationNodeAnnotation,
    json_name: "nodeAnnotations"
end

defmodule Google.Cloud.Visionai.V1alpha1.VideoStreamInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :streams, 1, repeated: true, type: :string, deprecated: true

  field :streams_with_annotation, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.StreamWithAnnotation,
    json_name: "streamsWithAnnotation",
    deprecated: true
end

defmodule Google.Cloud.Visionai.V1alpha1.AIEnabledDevicesInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.MediaWarehouseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpus, 1, type: :string
  field :region, 2, type: :string, deprecated: true
  field :ttl, 3, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Visionai.V1alpha1.PersonBlurConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :person_blur_type, 1,
    type: Google.Cloud.Visionai.V1alpha1.PersonBlurConfig.PersonBlurType,
    json_name: "personBlurType",
    enum: true

  field :faces_only, 2, type: :bool, json_name: "facesOnly"
end

defmodule Google.Cloud.Visionai.V1alpha1.OccupancyCountConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_people_counting, 1, type: :bool, json_name: "enablePeopleCounting"
  field :enable_vehicle_counting, 2, type: :bool, json_name: "enableVehicleCounting"
  field :enable_dwelling_time_tracking, 3, type: :bool, json_name: "enableDwellingTimeTracking"
end

defmodule Google.Cloud.Visionai.V1alpha1.PersonVehicleDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_people_counting, 1, type: :bool, json_name: "enablePeopleCounting"
  field :enable_vehicle_counting, 2, type: :bool, json_name: "enableVehicleCounting"
end

defmodule Google.Cloud.Visionai.V1alpha1.PersonalProtectiveEquipmentDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_face_coverage_detection, 1, type: :bool, json_name: "enableFaceCoverageDetection"
  field :enable_head_coverage_detection, 2, type: :bool, json_name: "enableHeadCoverageDetection"

  field :enable_hands_coverage_detection, 3,
    type: :bool,
    json_name: "enableHandsCoverageDetection"
end

defmodule Google.Cloud.Visionai.V1alpha1.GeneralObjectDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.BigQueryConfig.CloudFunctionMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.BigQueryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :table, 1, type: :string

  field :cloud_function_mapping, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.BigQueryConfig.CloudFunctionMappingEntry,
    json_name: "cloudFunctionMapping",
    map: true

  field :create_default_table_if_not_exists, 3,
    type: :bool,
    json_name: "createDefaultTableIfNotExists"
end

defmodule Google.Cloud.Visionai.V1alpha1.VertexAutoMLVisionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
end

defmodule Google.Cloud.Visionai.V1alpha1.VertexAutoMLVideoConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :blocked_labels, 2, repeated: true, type: :string, json_name: "blockedLabels"
  field :max_predictions, 3, type: :int32, json_name: "maxPredictions"
  field :bounding_box_size_limit, 4, type: :float, json_name: "boundingBoxSizeLimit"
end

defmodule Google.Cloud.Visionai.V1alpha1.VertexCustomConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_prediction_fps, 1, type: :int32, json_name: "maxPredictionFps"

  field :dedicated_resources, 2,
    type: Google.Cloud.Visionai.V1alpha1.DedicatedResources,
    json_name: "dedicatedResources"

  field :post_processing_cloud_function, 3,
    type: :string,
    json_name: "postProcessingCloudFunction"

  field :attach_application_metadata, 4, type: :bool, json_name: "attachApplicationMetadata"
end

defmodule Google.Cloud.Visionai.V1alpha1.MachineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_type, 2,
    type: Google.Cloud.Visionai.V1alpha1.AcceleratorType,
    json_name: "acceleratorType",
    enum: true,
    deprecated: false

  field :accelerator_count, 3, type: :int32, json_name: "acceleratorCount"
end

defmodule Google.Cloud.Visionai.V1alpha1.AutoscalingMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
  field :target, 2, type: :int32
end

defmodule Google.Cloud.Visionai.V1alpha1.DedicatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Visionai.V1alpha1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :min_replica_count, 2, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount", deprecated: false

  field :autoscaling_metric_specs, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.AutoscalingMetricSpec,
    json_name: "autoscalingMetricSpecs",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.AppPlatform.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1alpha1.AppPlatform",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListApplications,
      Google.Cloud.Visionai.V1alpha1.ListApplicationsRequest,
      Google.Cloud.Visionai.V1alpha1.ListApplicationsResponse

  rpc :GetApplication,
      Google.Cloud.Visionai.V1alpha1.GetApplicationRequest,
      Google.Cloud.Visionai.V1alpha1.Application

  rpc :CreateApplication,
      Google.Cloud.Visionai.V1alpha1.CreateApplicationRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplication,
      Google.Cloud.Visionai.V1alpha1.UpdateApplicationRequest,
      Google.Longrunning.Operation

  rpc :DeleteApplication,
      Google.Cloud.Visionai.V1alpha1.DeleteApplicationRequest,
      Google.Longrunning.Operation

  rpc :DeployApplication,
      Google.Cloud.Visionai.V1alpha1.DeployApplicationRequest,
      Google.Longrunning.Operation

  rpc :UndeployApplication,
      Google.Cloud.Visionai.V1alpha1.UndeployApplicationRequest,
      Google.Longrunning.Operation

  rpc :AddApplicationStreamInput,
      Google.Cloud.Visionai.V1alpha1.AddApplicationStreamInputRequest,
      Google.Longrunning.Operation

  rpc :RemoveApplicationStreamInput,
      Google.Cloud.Visionai.V1alpha1.RemoveApplicationStreamInputRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplicationStreamInput,
      Google.Cloud.Visionai.V1alpha1.UpdateApplicationStreamInputRequest,
      Google.Longrunning.Operation

  rpc :ListInstances,
      Google.Cloud.Visionai.V1alpha1.ListInstancesRequest,
      Google.Cloud.Visionai.V1alpha1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Visionai.V1alpha1.GetInstanceRequest,
      Google.Cloud.Visionai.V1alpha1.Instance

  rpc :CreateApplicationInstances,
      Google.Cloud.Visionai.V1alpha1.CreateApplicationInstancesRequest,
      Google.Longrunning.Operation

  rpc :DeleteApplicationInstances,
      Google.Cloud.Visionai.V1alpha1.DeleteApplicationInstancesRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplicationInstances,
      Google.Cloud.Visionai.V1alpha1.UpdateApplicationInstancesRequest,
      Google.Longrunning.Operation

  rpc :ListDrafts,
      Google.Cloud.Visionai.V1alpha1.ListDraftsRequest,
      Google.Cloud.Visionai.V1alpha1.ListDraftsResponse

  rpc :GetDraft,
      Google.Cloud.Visionai.V1alpha1.GetDraftRequest,
      Google.Cloud.Visionai.V1alpha1.Draft

  rpc :CreateDraft,
      Google.Cloud.Visionai.V1alpha1.CreateDraftRequest,
      Google.Longrunning.Operation

  rpc :UpdateDraft,
      Google.Cloud.Visionai.V1alpha1.UpdateDraftRequest,
      Google.Longrunning.Operation

  rpc :DeleteDraft,
      Google.Cloud.Visionai.V1alpha1.DeleteDraftRequest,
      Google.Longrunning.Operation

  rpc :ListProcessors,
      Google.Cloud.Visionai.V1alpha1.ListProcessorsRequest,
      Google.Cloud.Visionai.V1alpha1.ListProcessorsResponse

  rpc :ListPrebuiltProcessors,
      Google.Cloud.Visionai.V1alpha1.ListPrebuiltProcessorsRequest,
      Google.Cloud.Visionai.V1alpha1.ListPrebuiltProcessorsResponse

  rpc :GetProcessor,
      Google.Cloud.Visionai.V1alpha1.GetProcessorRequest,
      Google.Cloud.Visionai.V1alpha1.Processor

  rpc :CreateProcessor,
      Google.Cloud.Visionai.V1alpha1.CreateProcessorRequest,
      Google.Longrunning.Operation

  rpc :UpdateProcessor,
      Google.Cloud.Visionai.V1alpha1.UpdateProcessorRequest,
      Google.Longrunning.Operation

  rpc :DeleteProcessor,
      Google.Cloud.Visionai.V1alpha1.DeleteProcessorRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Visionai.V1alpha1.AppPlatform.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1alpha1.AppPlatform.Service
end