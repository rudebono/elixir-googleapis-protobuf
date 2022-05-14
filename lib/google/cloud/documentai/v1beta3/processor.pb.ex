defmodule Google.Cloud.Documentai.V1beta3.Processor.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :ENABLING, 3
  field :DISABLING, 4
  field :CREATING, 5
  field :FAILED, 6
  field :DELETING, 7
end
defmodule Google.Cloud.Documentai.V1beta3.Processor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"

  field :state, 4,
    type: Google.Cloud.Documentai.V1beta3.Processor.State,
    enum: true,
    deprecated: false

  field :default_processor_version, 9, type: :string, json_name: "defaultProcessorVersion"
  field :process_endpoint, 6, type: :string, json_name: "processEndpoint", deprecated: false
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :kms_key_name, 8, type: :string, json_name: "kmsKeyName"
end
