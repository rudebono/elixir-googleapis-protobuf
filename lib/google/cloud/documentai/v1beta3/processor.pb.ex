defmodule Google.Cloud.Documentai.V1beta3.Processor.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :ENABLED
          | :DISABLED
          | :ENABLING
          | :DISABLING
          | :CREATING
          | :FAILED
          | :DELETING

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Documentai.V1beta3.Processor.State.t(),
          default_processor_version: String.t(),
          process_endpoint: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          kms_key_name: String.t()
        }

  defstruct name: "",
            type: "",
            display_name: "",
            state: :STATE_UNSPECIFIED,
            default_processor_version: "",
            process_endpoint: "",
            create_time: nil,
            kms_key_name: ""

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
