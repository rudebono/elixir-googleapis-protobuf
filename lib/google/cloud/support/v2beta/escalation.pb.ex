defmodule Google.Cloud.Support.V2beta.Escalation.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :RESOLUTION_TIME, 1
  field :TECHNICAL_EXPERTISE, 2
  field :BUSINESS_IMPACT, 3
end

defmodule Google.Cloud.Support.V2beta.Escalation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reason, 4,
    type: Google.Cloud.Support.V2beta.Escalation.Reason,
    enum: true,
    deprecated: false

  field :justification, 5, type: :string, deprecated: false
end
