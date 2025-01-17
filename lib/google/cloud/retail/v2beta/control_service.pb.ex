defmodule Google.Cloud.Retail.V2beta.CreateControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :control, 2, type: Google.Cloud.Retail.V2beta.Control, deprecated: false
  field :control_id, 3, type: :string, json_name: "controlId", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.UpdateControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :control, 1, type: Google.Cloud.Retail.V2beta.Control, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2beta.DeleteControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.GetControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListControlsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :controls, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Control
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2beta.ControlService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.ControlService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateControl,
      Google.Cloud.Retail.V2beta.CreateControlRequest,
      Google.Cloud.Retail.V2beta.Control

  rpc :DeleteControl, Google.Cloud.Retail.V2beta.DeleteControlRequest, Google.Protobuf.Empty

  rpc :UpdateControl,
      Google.Cloud.Retail.V2beta.UpdateControlRequest,
      Google.Cloud.Retail.V2beta.Control

  rpc :GetControl,
      Google.Cloud.Retail.V2beta.GetControlRequest,
      Google.Cloud.Retail.V2beta.Control

  rpc :ListControls,
      Google.Cloud.Retail.V2beta.ListControlsRequest,
      Google.Cloud.Retail.V2beta.ListControlsResponse
end

defmodule Google.Cloud.Retail.V2beta.ControlService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.ControlService.Service
end
