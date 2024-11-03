defmodule Google.Cloud.Aiplatform.V1.CreateFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :feature_group, 2,
    type: Google.Cloud.Aiplatform.V1.FeatureGroup,
    json_name: "featureGroup",
    deprecated: false

  field :feature_group_id, 3, type: :string, json_name: "featureGroupId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListFeatureGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListFeatureGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_groups, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureGroup,
    json_name: "featureGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_group, 1,
    type: Google.Cloud.Aiplatform.V1.FeatureGroup,
    json_name: "featureGroup",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.CreateFeatureGroupOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateFeatureGroupOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.CreateRegistryFeatureOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateFeatureOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.FeatureRegistryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.FeatureRegistryService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateFeatureGroup,
      Google.Cloud.Aiplatform.V1.CreateFeatureGroupRequest,
      Google.Longrunning.Operation

  rpc :GetFeatureGroup,
      Google.Cloud.Aiplatform.V1.GetFeatureGroupRequest,
      Google.Cloud.Aiplatform.V1.FeatureGroup

  rpc :ListFeatureGroups,
      Google.Cloud.Aiplatform.V1.ListFeatureGroupsRequest,
      Google.Cloud.Aiplatform.V1.ListFeatureGroupsResponse

  rpc :UpdateFeatureGroup,
      Google.Cloud.Aiplatform.V1.UpdateFeatureGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeatureGroup,
      Google.Cloud.Aiplatform.V1.DeleteFeatureGroupRequest,
      Google.Longrunning.Operation

  rpc :CreateFeature,
      Google.Cloud.Aiplatform.V1.CreateFeatureRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateFeatures,
      Google.Cloud.Aiplatform.V1.BatchCreateFeaturesRequest,
      Google.Longrunning.Operation

  rpc :GetFeature,
      Google.Cloud.Aiplatform.V1.GetFeatureRequest,
      Google.Cloud.Aiplatform.V1.Feature

  rpc :ListFeatures,
      Google.Cloud.Aiplatform.V1.ListFeaturesRequest,
      Google.Cloud.Aiplatform.V1.ListFeaturesResponse

  rpc :UpdateFeature,
      Google.Cloud.Aiplatform.V1.UpdateFeatureRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeature,
      Google.Cloud.Aiplatform.V1.DeleteFeatureRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1.FeatureRegistryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.FeatureRegistryService.Service
end