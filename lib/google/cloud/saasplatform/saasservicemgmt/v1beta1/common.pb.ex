defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationErrorCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_OPERATION_ERROR_CATEGORY_UNSPECIFIED, 0
  field :NOT_APPLICABLE, 1
  field :FATAL, 2
  field :RETRIABLE, 3
  field :IGNORABLE, 4
  field :STANDARD, 5
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT, 2
  field :BOOL, 3
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitCondition.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :STATUS_UNKNOWN, 1
  field :STATUS_TRUE, 2
  field :STATUS_FALSE, 3
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitCondition.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_READY, 1
  field :TYPE_UPDATING, 2
  field :TYPE_PROVISIONED, 3
  field :TYPE_OPERATION_ERROR, 4
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationCondition.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :STATUS_UNKNOWN, 1
  field :STATUS_TRUE, 2
  field :STATUS_FALSE, 3
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationCondition.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_SCHEDULED, 2
  field :TYPE_RUNNING, 3
  field :TYPE_SUCCEEDED, 4
  field :TYPE_CANCELLED, 5
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Blueprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :package, 1, type: :string, deprecated: false
  field :engine, 2, type: :string, deprecated: false
  field :version, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variable, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable.Type,
    enum: true,
    deprecated: false

  field :value, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitCondition.Status,
    enum: true,
    deprecated: false

  field :type, 2,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitCondition.Type,
    enum: true,
    deprecated: false

  field :last_transition_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTransitionTime",
    deprecated: false

  field :message, 4, type: :string, deprecated: false
  field :reason, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationCondition.Status,
    enum: true,
    deprecated: false

  field :type, 2,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationCondition.Type,
    enum: true,
    deprecated: false

  field :last_transition_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTransitionTime",
    deprecated: false

  field :message, 4, type: :string, deprecated: false
  field :reason, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Aggregate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :count, 2, type: :int32, deprecated: false
end
