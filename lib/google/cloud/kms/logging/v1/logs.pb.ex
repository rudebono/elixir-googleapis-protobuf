defmodule Google.Cloud.Kms.Logging.V1.CryptoKeyEvent.RotationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
end

defmodule Google.Cloud.Kms.Logging.V1.CryptoKeyEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rotation_event, 1,
    type: Google.Cloud.Kms.Logging.V1.CryptoKeyEvent.RotationEvent,
    json_name: "rotationEvent"
end

defmodule Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent.ScheduledDestructionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status

  field :key_access_justification_reason, 2,
    type: :string,
    json_name: "keyAccessJustificationReason"
end

defmodule Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent.KeyGenerationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status

  field :key_access_justification_reason, 2,
    type: :string,
    json_name: "keyAccessJustificationReason"
end

defmodule Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent.ImportEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
end

defmodule Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :event, 0

  field :scheduled_destruction_event, 1,
    type: Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent.ScheduledDestructionEvent,
    json_name: "scheduledDestructionEvent",
    oneof: 0

  field :key_generation_event, 2,
    type: Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent.KeyGenerationEvent,
    json_name: "keyGenerationEvent",
    oneof: 0

  field :import_event, 3,
    type: Google.Cloud.Kms.Logging.V1.CryptoKeyVersionEvent.ImportEvent,
    json_name: "importEvent",
    oneof: 0
end
