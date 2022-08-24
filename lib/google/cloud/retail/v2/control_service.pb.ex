defmodule Google.Cloud.Retail.V2.CreateControlRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :control, 2, type: Google.Cloud.Retail.V2.Control, deprecated: false
  field :control_id, 3, type: :string, json_name: "controlId", deprecated: false
end

defmodule Google.Cloud.Retail.V2.UpdateControlRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :control, 1, type: Google.Cloud.Retail.V2.Control, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2.DeleteControlRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.GetControlRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ListControlsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ListControlsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :controls, 1, repeated: true, type: Google.Cloud.Retail.V2.Control
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2.ControlService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.retail.v2.ControlService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateControl, Google.Cloud.Retail.V2.CreateControlRequest, Google.Cloud.Retail.V2.Control

  rpc :DeleteControl, Google.Cloud.Retail.V2.DeleteControlRequest, Google.Protobuf.Empty

  rpc :UpdateControl, Google.Cloud.Retail.V2.UpdateControlRequest, Google.Cloud.Retail.V2.Control

  rpc :GetControl, Google.Cloud.Retail.V2.GetControlRequest, Google.Cloud.Retail.V2.Control

  rpc :ListControls,
      Google.Cloud.Retail.V2.ListControlsRequest,
      Google.Cloud.Retail.V2.ListControlsResponse
end

defmodule Google.Cloud.Retail.V2.ControlService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.ControlService.Service
end