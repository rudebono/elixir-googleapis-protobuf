defmodule Google.Cloud.Bigquery.Storage.V1.ProtoSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          proto_descriptor: Google.Protobuf.DescriptorProto.t() | nil
        }

  defstruct [:proto_descriptor]

  field :proto_descriptor, 1, type: Google.Protobuf.DescriptorProto
end

defmodule Google.Cloud.Bigquery.Storage.V1.ProtoRows do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_rows: [binary]
        }

  defstruct [:serialized_rows]

  field :serialized_rows, 1, repeated: true, type: :bytes
end
