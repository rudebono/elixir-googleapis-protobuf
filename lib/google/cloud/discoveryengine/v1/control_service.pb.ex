defmodule Google.Cloud.Discoveryengine.V1.CreateControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :control, 2, type: Google.Cloud.Discoveryengine.V1.Control, deprecated: false
  field :control_id, 3, type: :string, json_name: "controlId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :control, 1, type: Google.Cloud.Discoveryengine.V1.Control, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GetControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListControlsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :controls, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Control
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ControlService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.ControlService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateControl,
      Google.Cloud.Discoveryengine.V1.CreateControlRequest,
      Google.Cloud.Discoveryengine.V1.Control

  rpc :DeleteControl, Google.Cloud.Discoveryengine.V1.DeleteControlRequest, Google.Protobuf.Empty

  rpc :UpdateControl,
      Google.Cloud.Discoveryengine.V1.UpdateControlRequest,
      Google.Cloud.Discoveryengine.V1.Control

  rpc :GetControl,
      Google.Cloud.Discoveryengine.V1.GetControlRequest,
      Google.Cloud.Discoveryengine.V1.Control

  rpc :ListControls,
      Google.Cloud.Discoveryengine.V1.ListControlsRequest,
      Google.Cloud.Discoveryengine.V1.ListControlsResponse
end

defmodule Google.Cloud.Discoveryengine.V1.ControlService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.ControlService.Service
end
