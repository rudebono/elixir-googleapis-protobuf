defmodule Google.Cloud.Dialogflow.V2beta1.Connection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CONNECTED, 1
  field :DISCONNECTED, 2
  field :AUTHENTICATION_FAILED, 3
  field :KEEPALIVE, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.Connection.CertificateState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CERTIFICATE_STATE_UNSPECIFIED, 0
  field :CERTIFICATE_VALID, 1
  field :CERTIFICATE_INVALID, 2
  field :CERTIFICATE_EXPIRED, 3
  field :CERTIFICATE_HOSTNAME_NOT_FOUND, 4
  field :CERTIFICATE_UNAUTHENTICATED, 5
  field :CERTIFICATE_TRUST_STORE_NOT_FOUND, 6
  field :CERTIFICATE_HOSTNAME_INVALID_FORMAT, 7
  field :CERTIFICATE_QUOTA_EXCEEDED, 8
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateSipTrunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :sip_trunk, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SipTrunk,
    json_name: "sipTrunk",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteSipTrunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSipTrunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSipTrunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sip_trunks, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SipTrunk,
    json_name: "sipTrunks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetSipTrunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateSipTrunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sip_trunk, 1,
    type: Google.Cloud.Dialogflow.V2beta1.SipTrunk,
    json_name: "sipTrunk",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SipTrunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :expected_hostname, 2,
    repeated: true,
    type: :string,
    json_name: "expectedHostname",
    deprecated: false

  field :connections, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Connection,
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Connection.ErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :certificate_state, 1,
    proto3_optional: true,
    type: Google.Cloud.Dialogflow.V2beta1.Connection.CertificateState,
    json_name: "certificateState",
    enum: true,
    deprecated: false

  field :error_message, 2, proto3_optional: true, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false

  field :state, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Connection.State,
    enum: true,
    deprecated: false

  field :update_time, 3,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :error_details, 4,
    proto3_optional: true,
    type: Google.Cloud.Dialogflow.V2beta1.Connection.ErrorDetails,
    json_name: "errorDetails",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SipTrunks.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.SipTrunks",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSipTrunk,
      Google.Cloud.Dialogflow.V2beta1.CreateSipTrunkRequest,
      Google.Cloud.Dialogflow.V2beta1.SipTrunk

  rpc :DeleteSipTrunk,
      Google.Cloud.Dialogflow.V2beta1.DeleteSipTrunkRequest,
      Google.Protobuf.Empty

  rpc :ListSipTrunks,
      Google.Cloud.Dialogflow.V2beta1.ListSipTrunksRequest,
      Google.Cloud.Dialogflow.V2beta1.ListSipTrunksResponse

  rpc :GetSipTrunk,
      Google.Cloud.Dialogflow.V2beta1.GetSipTrunkRequest,
      Google.Cloud.Dialogflow.V2beta1.SipTrunk

  rpc :UpdateSipTrunk,
      Google.Cloud.Dialogflow.V2beta1.UpdateSipTrunkRequest,
      Google.Cloud.Dialogflow.V2beta1.SipTrunk
end

defmodule Google.Cloud.Dialogflow.V2beta1.SipTrunks.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.SipTrunks.Service
end