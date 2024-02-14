defmodule Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnection.ConnectionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONNECTION_STATE_UNSPECIFIED, 0
  field :AVAILABLE, 1
  field :NOT_AVAILABLE, 2
  field :ERROR, 3
  field :PERMISSION_DENIED, 4
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnections do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ekm_connections, 2,
    repeated: true,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnection,
    json_name: "ekmConnections"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.GetEkmConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnection.ConnectionError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error_domain, 1, type: :string, json_name: "errorDomain"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection_name, 1, type: :string, json_name: "connectionName"

  field :connection_state, 2,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnection.ConnectionState,
    json_name: "connectionState",
    enum: true,
    deprecated: false

  field :connection_error, 3,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnection.ConnectionError,
    json_name: "connectionError"
end