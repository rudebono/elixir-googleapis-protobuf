defmodule Google.Compute.Logging.Dr.V1.DisasterRecoveryEvent.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :ACTION_REQUIRED, 1
  field :ACTION_SUGGESTED, 2
  field :NOTICE, 3
end

defmodule Google.Compute.Logging.Dr.V1.DisasterRecoveryEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :severity, 1,
    proto3_optional: true,
    type: Google.Compute.Logging.Dr.V1.DisasterRecoveryEvent.Severity,
    enum: true

  field :details, 2, proto3_optional: true, type: :string
end
