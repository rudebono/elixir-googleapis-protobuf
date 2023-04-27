defmodule Google.Cloud.Gkehub.V1beta.ListFeaturesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkehub.V1beta.ListFeaturesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1beta.Feature
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkehub.V1beta.GetFeatureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.CreateFeatureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :feature_id, 2, type: :string, json_name: "featureId"
  field :resource, 3, type: Google.Cloud.Gkehub.V1beta.Feature
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1beta.DeleteFeatureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :force, 2, type: :bool
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1beta.UpdateFeatureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :resource, 3, type: Google.Cloud.Gkehub.V1beta.Feature
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1beta.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_detail, 5, type: :string, json_name: "statusDetail", deprecated: false
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested", deprecated: false
  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1beta.GkeHub.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.gkehub.v1beta.GkeHub", protoc_gen_elixir_version: "0.12.0"

  rpc :ListFeatures,
      Google.Cloud.Gkehub.V1beta.ListFeaturesRequest,
      Google.Cloud.Gkehub.V1beta.ListFeaturesResponse

  rpc :GetFeature,
      Google.Cloud.Gkehub.V1beta.GetFeatureRequest,
      Google.Cloud.Gkehub.V1beta.Feature

  rpc :CreateFeature,
      Google.Cloud.Gkehub.V1beta.CreateFeatureRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeature,
      Google.Cloud.Gkehub.V1beta.DeleteFeatureRequest,
      Google.Longrunning.Operation

  rpc :UpdateFeature,
      Google.Cloud.Gkehub.V1beta.UpdateFeatureRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Gkehub.V1beta.GkeHub.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gkehub.V1beta.GkeHub.Service
end