defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ACTIVE, 2
  field :MPIN_LOCKED, 3
  field :MOBILE_NUMBER_CHANGED, 4
  field :NEW_REGISTRATION_INITIATED, 5
  field :RE_REGISTRATION_INITIATED, 6
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.FetchParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :account_reference, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference,
    json_name: "accountReference",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant.Metadata.ValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant.Metadata.ValuesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account_reference, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference,
    json_name: "accountReference",
    deprecated: false

  field :mobile_number, 2, type: :string, json_name: "mobileNumber", deprecated: false

  field :state, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant.State,
    enum: true,
    deprecated: false

  field :metadata, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant.Metadata,
    deprecated: false

  field :mpin_failure_count, 5, type: :int32, json_name: "mpinFailureCount", deprecated: false

  field :mpin_locked_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "mpinLockedTime",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.UpdateIssuerParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :issuer_participant, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant,
    json_name: "issuerParticipant",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ParticipantStateChangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :id, 0

  field :parent, 1, type: :string, deprecated: false

  field :account_reference, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference,
    json_name: "accountReference",
    oneof: 0,
    deprecated: false

  field :mobile_number, 3, type: :string, json_name: "mobileNumber", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipants do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :participants, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchParticipants.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.paymentgateway.issuerswitch.v1.IssuerSwitchParticipants",
    protoc_gen_elixir_version: "0.14.0"

  rpc :FetchParticipant,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.FetchParticipantRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant

  rpc :UpdateIssuerParticipant,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.UpdateIssuerParticipantRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipant

  rpc :ActivateParticipant,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ParticipantStateChangeRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipants

  rpc :DeactivateParticipant,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ParticipantStateChangeRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipants

  rpc :MobileNumberChanged,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ParticipantStateChangeRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerParticipants
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchParticipants.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchParticipants.Service
end
