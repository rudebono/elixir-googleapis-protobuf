defmodule Google.Cloud.Dialogflow.V2beta1.ValidationError.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
  field :CRITICAL, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.ValidationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :severity, 1, type: Google.Cloud.Dialogflow.V2beta1.ValidationError.Severity, enum: true
  field :entries, 3, repeated: true, type: :string
  field :error_message, 4, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :validation_errors, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ValidationError,
    json_name: "validationErrors"
end
