defmodule Google.Api.ChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :ADDED, 1
  field :REMOVED, 2
  field :MODIFIED, 3
end

defmodule Google.Api.ConfigChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :element, 1, type: :string
  field :old_value, 2, type: :string, json_name: "oldValue"
  field :new_value, 3, type: :string, json_name: "newValue"
  field :change_type, 4, type: Google.Api.ChangeType, json_name: "changeType", enum: true
  field :advices, 5, repeated: true, type: Google.Api.Advice
end

defmodule Google.Api.Advice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :description, 2, type: :string
end