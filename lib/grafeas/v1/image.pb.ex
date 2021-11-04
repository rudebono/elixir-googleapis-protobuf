defmodule Grafeas.V1.Layer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          directive: String.t(),
          arguments: String.t()
        }

  defstruct [:directive, :arguments]

  field :directive, 1, type: :string
  field :arguments, 2, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Fingerprint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          v1_name: String.t(),
          v2_blob: [String.t()],
          v2_name: String.t()
        }

  defstruct [:v1_name, :v2_blob, :v2_name]

  field :v1_name, 1, type: :string, json_name: "v1Name"
  field :v2_blob, 2, repeated: true, type: :string, json_name: "v2Blob"
  field :v2_name, 3, type: :string, json_name: "v2Name"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.ImageNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_url: String.t(),
          fingerprint: Grafeas.V1.Fingerprint.t() | nil
        }

  defstruct [:resource_url, :fingerprint]

  field :resource_url, 1, type: :string, json_name: "resourceUrl"
  field :fingerprint, 2, type: Grafeas.V1.Fingerprint

  def transform_module(), do: nil
end

defmodule Grafeas.V1.ImageOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fingerprint: Grafeas.V1.Fingerprint.t() | nil,
          distance: integer,
          layer_info: [Grafeas.V1.Layer.t()],
          base_resource_url: String.t()
        }

  defstruct [:fingerprint, :distance, :layer_info, :base_resource_url]

  field :fingerprint, 1, type: Grafeas.V1.Fingerprint
  field :distance, 2, type: :int32
  field :layer_info, 3, repeated: true, type: Grafeas.V1.Layer, json_name: "layerInfo"
  field :base_resource_url, 4, type: :string, json_name: "baseResourceUrl"

  def transform_module(), do: nil
end
