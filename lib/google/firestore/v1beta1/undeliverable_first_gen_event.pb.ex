defmodule Google.Firestore.V1beta1.UndeliverableFirstGenEvent.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :EXCEEDING_SIZE_LIMIT, 1
end

defmodule Google.Firestore.V1beta1.UndeliverableFirstGenEvent.DocumentChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DOCUMENT_CHANGE_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :DELETE, 2
  field :UPDATE, 3
end

defmodule Google.Firestore.V1beta1.UndeliverableFirstGenEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :message, 1, type: :string
  field :reason, 2, type: Google.Firestore.V1beta1.UndeliverableFirstGenEvent.Reason, enum: true
  field :document_name, 3, type: :string, json_name: "documentName"

  field :document_change_type, 4,
    type: Google.Firestore.V1beta1.UndeliverableFirstGenEvent.DocumentChangeType,
    json_name: "documentChangeType",
    enum: true

  field :function_name, 5, repeated: true, type: :string, json_name: "functionName"
  field :triggered_time, 6, type: Google.Protobuf.Timestamp, json_name: "triggeredTime"
end
