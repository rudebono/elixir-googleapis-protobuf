defmodule Google.Cloud.Aiplatform.V1beta1.CreatePersistentResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :persistent_resource, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PersistentResource,
    json_name: "persistentResource",
    deprecated: false

  field :persistent_resource_id, 3,
    type: :string,
    json_name: "persistentResourceId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreatePersistentResourceOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdatePersistentResourceOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RebootPersistentResourceOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetPersistentResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPersistentResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPersistentResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :persistent_resources, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PersistentResource,
    json_name: "persistentResources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeletePersistentResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdatePersistentResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :persistent_resource, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PersistentResource,
    json_name: "persistentResource",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RebootPersistentResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PersistentResourceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.PersistentResourceService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreatePersistentResource,
      Google.Cloud.Aiplatform.V1beta1.CreatePersistentResourceRequest,
      Google.Longrunning.Operation

  rpc :GetPersistentResource,
      Google.Cloud.Aiplatform.V1beta1.GetPersistentResourceRequest,
      Google.Cloud.Aiplatform.V1beta1.PersistentResource

  rpc :ListPersistentResources,
      Google.Cloud.Aiplatform.V1beta1.ListPersistentResourcesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListPersistentResourcesResponse

  rpc :DeletePersistentResource,
      Google.Cloud.Aiplatform.V1beta1.DeletePersistentResourceRequest,
      Google.Longrunning.Operation

  rpc :UpdatePersistentResource,
      Google.Cloud.Aiplatform.V1beta1.UpdatePersistentResourceRequest,
      Google.Longrunning.Operation

  rpc :RebootPersistentResource,
      Google.Cloud.Aiplatform.V1beta1.RebootPersistentResourceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.PersistentResourceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.PersistentResourceService.Service
end
