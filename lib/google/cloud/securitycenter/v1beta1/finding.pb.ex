defmodule Google.Cloud.Securitycenter.V1beta1.Finding.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :INACTIVE

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end
defmodule Google.Cloud.Securitycenter.V1beta1.Finding.SourcePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Securitycenter.V1beta1.Finding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          resource_name: String.t(),
          state: Google.Cloud.Securitycenter.V1beta1.Finding.State.t(),
          category: String.t(),
          external_uri: String.t(),
          source_properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          security_marks: Google.Cloud.Securitycenter.V1beta1.SecurityMarks.t() | nil,
          event_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            parent: "",
            resource_name: "",
            state: :STATE_UNSPECIFIED,
            category: "",
            external_uri: "",
            source_properties: %{},
            security_marks: nil,
            event_time: nil,
            create_time: nil

  field :name, 1, type: :string
  field :parent, 2, type: :string, deprecated: false
  field :resource_name, 3, type: :string, json_name: "resourceName"
  field :state, 4, type: Google.Cloud.Securitycenter.V1beta1.Finding.State, enum: true
  field :category, 5, type: :string
  field :external_uri, 6, type: :string, json_name: "externalUri"

  field :source_properties, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.Finding.SourcePropertiesEntry,
    json_name: "sourceProperties",
    map: true

  field :security_marks, 8,
    type: Google.Cloud.Securitycenter.V1beta1.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :event_time, 9, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
