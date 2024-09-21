defmodule Google.Cloud.Aiplatform.V1beta1.ImportExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :extension, 2, type: Google.Cloud.Aiplatform.V1beta1.Extension, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportExtensionOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :extension, 1, type: Google.Cloud.Aiplatform.V1beta1.Extension, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListExtensionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListExtensionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :extensions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Extension
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionRegistryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ExtensionRegistryService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ImportExtension,
      Google.Cloud.Aiplatform.V1beta1.ImportExtensionRequest,
      Google.Longrunning.Operation

  rpc :GetExtension,
      Google.Cloud.Aiplatform.V1beta1.GetExtensionRequest,
      Google.Cloud.Aiplatform.V1beta1.Extension

  rpc :ListExtensions,
      Google.Cloud.Aiplatform.V1beta1.ListExtensionsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListExtensionsResponse

  rpc :UpdateExtension,
      Google.Cloud.Aiplatform.V1beta1.UpdateExtensionRequest,
      Google.Cloud.Aiplatform.V1beta1.Extension

  rpc :DeleteExtension,
      Google.Cloud.Aiplatform.V1beta1.DeleteExtensionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionRegistryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ExtensionRegistryService.Service
end