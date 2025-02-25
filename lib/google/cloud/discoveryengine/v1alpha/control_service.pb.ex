defmodule Google.Cloud.Discoveryengine.V1alpha.CreateControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :control, 2, type: Google.Cloud.Discoveryengine.V1alpha.Control, deprecated: false
  field :control_id, 3, type: :string, json_name: "controlId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :control, 1, type: Google.Cloud.Discoveryengine.V1alpha.Control, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListControlsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :controls, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Control
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ControlService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.ControlService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateControl,
      Google.Cloud.Discoveryengine.V1alpha.CreateControlRequest,
      Google.Cloud.Discoveryengine.V1alpha.Control

  rpc :DeleteControl,
      Google.Cloud.Discoveryengine.V1alpha.DeleteControlRequest,
      Google.Protobuf.Empty

  rpc :UpdateControl,
      Google.Cloud.Discoveryengine.V1alpha.UpdateControlRequest,
      Google.Cloud.Discoveryengine.V1alpha.Control

  rpc :GetControl,
      Google.Cloud.Discoveryengine.V1alpha.GetControlRequest,
      Google.Cloud.Discoveryengine.V1alpha.Control

  rpc :ListControls,
      Google.Cloud.Discoveryengine.V1alpha.ListControlsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListControlsResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ControlService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.ControlService.Service
end
