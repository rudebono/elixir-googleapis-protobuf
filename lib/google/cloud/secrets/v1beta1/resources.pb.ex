defmodule Google.Cloud.Secrets.V1beta1.SecretVersion.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :DESTROYED, 3
end

defmodule Google.Cloud.Secrets.V1beta1.Secret.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Secrets.V1beta1.Secret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :replication, 2, type: Google.Cloud.Secrets.V1beta1.Replication, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Secrets.V1beta1.Secret.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Secrets.V1beta1.SecretVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :destroy_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "destroyTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Secrets.V1beta1.SecretVersion.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.Replication.Automatic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Secrets.V1beta1.Replication.UserManaged.Replica do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location, 1, type: :string
end

defmodule Google.Cloud.Secrets.V1beta1.Replication.UserManaged do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :replicas, 1,
    repeated: true,
    type: Google.Cloud.Secrets.V1beta1.Replication.UserManaged.Replica,
    deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.Replication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :replication, 0

  field :automatic, 1, type: Google.Cloud.Secrets.V1beta1.Replication.Automatic, oneof: 0

  field :user_managed, 2,
    type: Google.Cloud.Secrets.V1beta1.Replication.UserManaged,
    json_name: "userManaged",
    oneof: 0
end

defmodule Google.Cloud.Secrets.V1beta1.SecretPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data, 1, type: :bytes
end