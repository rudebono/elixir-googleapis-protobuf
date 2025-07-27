defmodule Google.Cloud.Discoveryengine.V1beta.Project.ServiceTerms.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :TERMS_ACCEPTED, 1
  field :TERMS_PENDING, 2
  field :TERMS_DECLINED, 3
end

defmodule Google.Cloud.Discoveryengine.V1beta.Project.ServiceTerms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :version, 2, type: :string

  field :state, 4,
    type: Google.Cloud.Discoveryengine.V1beta.Project.ServiceTerms.State,
    enum: true

  field :accept_time, 5, type: Google.Protobuf.Timestamp, json_name: "acceptTime"
  field :decline_time, 6, type: Google.Protobuf.Timestamp, json_name: "declineTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.Project.ServiceTermsMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Discoveryengine.V1beta.Project.ServiceTerms
end

defmodule Google.Cloud.Discoveryengine.V1beta.Project do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :provision_completion_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "provisionCompletionTime",
    deprecated: false

  field :service_terms_map, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.Project.ServiceTermsMapEntry,
    json_name: "serviceTermsMap",
    map: true,
    deprecated: false
end
