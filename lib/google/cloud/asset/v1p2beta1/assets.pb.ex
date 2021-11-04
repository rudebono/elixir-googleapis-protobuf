defmodule Google.Cloud.Asset.V1p2beta1.TemporalAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window: Google.Cloud.Asset.V1p2beta1.TimeWindow.t() | nil,
          deleted: boolean,
          asset: Google.Cloud.Asset.V1p2beta1.Asset.t() | nil
        }

  defstruct [:window, :deleted, :asset]

  field :window, 1, type: Google.Cloud.Asset.V1p2beta1.TimeWindow
  field :deleted, 2, type: :bool
  field :asset, 3, type: Google.Cloud.Asset.V1p2beta1.Asset

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1p2beta1.TimeWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1p2beta1.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          asset_type: String.t(),
          resource: Google.Cloud.Asset.V1p2beta1.Resource.t() | nil,
          iam_policy: Google.Iam.V1.Policy.t() | nil,
          ancestors: [String.t()]
        }

  defstruct [:name, :asset_type, :resource, :iam_policy, :ancestors]

  field :name, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :resource, 3, type: Google.Cloud.Asset.V1p2beta1.Resource
  field :iam_policy, 4, type: Google.Iam.V1.Policy, json_name: "iamPolicy"
  field :ancestors, 6, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1p2beta1.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          discovery_document_uri: String.t(),
          discovery_name: String.t(),
          resource_url: String.t(),
          parent: String.t(),
          data: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:version, :discovery_document_uri, :discovery_name, :resource_url, :parent, :data]

  field :version, 1, type: :string
  field :discovery_document_uri, 2, type: :string, json_name: "discoveryDocumentUri"
  field :discovery_name, 3, type: :string, json_name: "discoveryName"
  field :resource_url, 4, type: :string, json_name: "resourceUrl"
  field :parent, 5, type: :string
  field :data, 6, type: Google.Protobuf.Struct

  def transform_module(), do: nil
end
