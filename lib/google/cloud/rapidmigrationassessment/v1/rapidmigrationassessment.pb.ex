defmodule Google.Cloud.Rapidmigrationassessment.V1.CreateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :annotation, 2,
    type: Google.Cloud.Rapidmigrationassessment.V1.Annotation,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.GetAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.CreateCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :collector_id, 2, type: :string, json_name: "collectorId", deprecated: false
  field :collector, 3, type: Google.Cloud.Rapidmigrationassessment.V1.Collector, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.ListCollectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.ListCollectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :collectors, 1, repeated: true, type: Google.Cloud.Rapidmigrationassessment.V1.Collector
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.GetCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.DeleteCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.UpdateCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :collector, 2, type: Google.Cloud.Rapidmigrationassessment.V1.Collector, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.ResumeCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.RegisterCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.PauseCollectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Rapidmigrationassessment.V1.RapidMigrationAssessment.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.rapidmigrationassessment.v1.RapidMigrationAssessment",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateCollector,
      Google.Cloud.Rapidmigrationassessment.V1.CreateCollectorRequest,
      Google.Longrunning.Operation

  rpc :CreateAnnotation,
      Google.Cloud.Rapidmigrationassessment.V1.CreateAnnotationRequest,
      Google.Longrunning.Operation

  rpc :GetAnnotation,
      Google.Cloud.Rapidmigrationassessment.V1.GetAnnotationRequest,
      Google.Cloud.Rapidmigrationassessment.V1.Annotation

  rpc :ListCollectors,
      Google.Cloud.Rapidmigrationassessment.V1.ListCollectorsRequest,
      Google.Cloud.Rapidmigrationassessment.V1.ListCollectorsResponse

  rpc :GetCollector,
      Google.Cloud.Rapidmigrationassessment.V1.GetCollectorRequest,
      Google.Cloud.Rapidmigrationassessment.V1.Collector

  rpc :UpdateCollector,
      Google.Cloud.Rapidmigrationassessment.V1.UpdateCollectorRequest,
      Google.Longrunning.Operation

  rpc :DeleteCollector,
      Google.Cloud.Rapidmigrationassessment.V1.DeleteCollectorRequest,
      Google.Longrunning.Operation

  rpc :ResumeCollector,
      Google.Cloud.Rapidmigrationassessment.V1.ResumeCollectorRequest,
      Google.Longrunning.Operation

  rpc :RegisterCollector,
      Google.Cloud.Rapidmigrationassessment.V1.RegisterCollectorRequest,
      Google.Longrunning.Operation

  rpc :PauseCollector,
      Google.Cloud.Rapidmigrationassessment.V1.PauseCollectorRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.RapidMigrationAssessment.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Rapidmigrationassessment.V1.RapidMigrationAssessment.Service
end
