defmodule Google.Cloud.Apphub.V1.ServiceProjectAttachment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Apphub.V1.ServiceProjectAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :service_project, 2, type: :string, json_name: "serviceProject", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :uid, 4, type: :string, deprecated: false

  field :state, 5,
    type: Google.Cloud.Apphub.V1.ServiceProjectAttachment.State,
    enum: true,
    deprecated: false
end
