defmodule Google.Cloud.Resourcemanager.V3.TagBinding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string
  field :tag_value, 3, type: :string, json_name: "tagValue"
end
defmodule Google.Cloud.Resourcemanager.V3.CreateTagBindingMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Resourcemanager.V3.CreateTagBindingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :tag_binding, 1,
    type: Google.Cloud.Resourcemanager.V3.TagBinding,
    json_name: "tagBinding",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteTagBindingMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteTagBindingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.ListTagBindingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.ListTagBindingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :tag_bindings, 1,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.TagBinding,
    json_name: "tagBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcemanager.V3.TagBindings.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.resourcemanager.v3.TagBindings",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListTagBindings,
      Google.Cloud.Resourcemanager.V3.ListTagBindingsRequest,
      Google.Cloud.Resourcemanager.V3.ListTagBindingsResponse

  rpc :CreateTagBinding,
      Google.Cloud.Resourcemanager.V3.CreateTagBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteTagBinding,
      Google.Cloud.Resourcemanager.V3.DeleteTagBindingRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Resourcemanager.V3.TagBindings.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.TagBindings.Service
end
