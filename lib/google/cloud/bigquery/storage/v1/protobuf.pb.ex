defmodule Google.Cloud.Bigquery.Storage.V1.ProtoSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          proto_descriptor: Google.Protobuf.DescriptorProto.t() | nil
        }

  defstruct proto_descriptor: nil

  field :proto_descriptor, 1, type: Google.Protobuf.DescriptorProto, json_name: "protoDescriptor"
end
defmodule Google.Cloud.Bigquery.Storage.V1.ProtoRows do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_rows: [binary]
        }

  defstruct serialized_rows: []

  field :serialized_rows, 1, repeated: true, type: :bytes, json_name: "serializedRows"
end
